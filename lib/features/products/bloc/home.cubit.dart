import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/features/products/repository/product_repository.dart';

const int defaultPage = 1;
const int defaultTake = 8;

abstract class HomeState extends Equatable {
  final List<ProductModel> products;
  final bool hasMore;
  final String search;
  final int page;
  final int take;
  const HomeState({
    required this.products,
    required this.hasMore,
    this.search = "",
    this.page = defaultPage,
    this.take = defaultTake,
  });
}

class InitialHomeState extends HomeState {
  InitialHomeState() : super(products: [], hasMore: true);

  @override
  List<Object?> get props => [products, hasMore, search, page, take];
}

class LoadingHomeState extends HomeState {
  const LoadingHomeState(List<ProductModel> products)
    : super(products: products, hasMore: true);

  @override
  List<Object?> get props => [products, hasMore, search, page, take];
}

class LoadedHomeState extends HomeState {
  const LoadedHomeState(
    List<ProductModel> products,
    bool hasMore,
    int page,
    int take,
  ) : super(products: products, hasMore: hasMore, page: page, take: take);

  @override
  List<Object?> get props => [products, hasMore, search, page, take];
}

class HomeCubit extends Cubit<HomeState> {
  final ProductRepository productRepository;
  HomeCubit(this.productRepository) : super(InitialHomeState());
  Timer? _debounce;
  Future<void> initialize() async {
    emit(LoadingHomeState(state.products));
    final products = await productRepository.fetchProducts(
      limit: defaultTake,
      page: defaultPage,
      q: state.search,
    );
    emit(
      LoadedHomeState(
        products,
        products.length == defaultTake,
        defaultPage,
        defaultTake,
      ),
    );
  }

  Future<void> loadMore() async {
    if (state is LoadingHomeState) return;
    if (state is LoadedHomeState) {
      final currentState = state as LoadedHomeState;
      emit(LoadingHomeState(state.products));
      final products = await productRepository.fetchProducts(
        limit: currentState.take,
        page: currentState.page + 1,
        q: currentState.search,
      );
      final allProducts = List<ProductModel>.from(currentState.products)
        ..addAll(products);
      emit(
        LoadedHomeState(
          allProducts,
          products.length == currentState.take,
          currentState.page + 1,
          currentState.take,
        ),
      );
    } else {
      emit(LoadingHomeState(state.products));

      final products = await productRepository.fetchProducts(
        limit: 8,
        page: 1,
        q: state.search,
      );
      emit(
        LoadedHomeState(
          products,
          products.length == defaultTake,
          defaultPage,
          defaultTake,
        ),
      );
    }
  }

  void setSearch(String newSearch) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () async {
      emit(LoadingHomeState(state.products));
      final products = await productRepository.fetchProducts(
        limit: 8,
        page: 1,
        q: newSearch,
      );
      emit(
        LoadedHomeState(
          products,
          products.length == defaultTake,
          defaultPage,
          defaultTake,
        ),
      );
    });
  }

  Future<void> refresh() async {
    emit(LoadingHomeState(state.products));
    final products = await productRepository.fetchProducts(
      limit: state.take,
      page: 1,
      q: state.search,
    );
    emit(
      LoadedHomeState(
        products,
        products.length == state.take,
        defaultPage,
        state.take,
      ),
    );
  }
}
