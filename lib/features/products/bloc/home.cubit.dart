import 'dart:async';
import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/features/products/repository/product_repository.dart';
import 'package:flutter_learn/features/products/services/product_service.dart';
const int defaultSkip = 0;
const int defaultTake = 8;
class HomeState {
  final List<ProductModel> products;
  final bool hasMore;
  final String search;
  final int skip;
  final int take;
  const HomeState({
    required this.products,
    required this.hasMore,
    this.search = "",
    this.skip = defaultSkip ,
    this.take = defaultTake,
  });
}

class InitialHomeState extends HomeState {
  InitialHomeState() : super(products: [], hasMore: true);
}

class LoadingHomeState extends HomeState {
  LoadingHomeState(List<ProductModel> products) : super(products: products, hasMore: true);
}

class LoadedHomeState extends HomeState {
  LoadedHomeState(List<ProductModel> products, bool hasMore, int skip, int take)
    : super(products: products, hasMore: hasMore, skip: skip, take: take);
}

class HomeCubit extends Cubit<HomeState> {
  final ProductRepository productRepository;
  HomeCubit(this.productRepository) : super(InitialHomeState());
  Timer? _debounce;
  Future<void> initialize() async {
    emit(LoadingHomeState(state.products));
    final products = await productRepository.fetchProducts(
      take: defaultTake,
      skip: defaultSkip,
      q: state.search,
    );
    emit(LoadedHomeState(products, products.length == defaultTake, defaultSkip, defaultTake));
  }

  Future<void> loadMore() async {
    if(state is LoadingHomeState) return;
    if (state is LoadedHomeState) {
      final currentState = state as LoadedHomeState;
      emit(LoadingHomeState(state.products));
      final products = await productRepository.fetchProducts(
        take: currentState.take,
        skip: currentState.skip + currentState.take,
        q: currentState.search,
      );
      final allProducts = List<ProductModel>.from(currentState.products)
        ..addAll(products);
      emit(
        LoadedHomeState(
          allProducts,
          products.length == currentState.take,
          currentState.skip + currentState.take,
          currentState.take,
        ),
      );
    } else {
      emit(LoadingHomeState(state.products));

      final products = await productRepository.fetchProducts(
        take: 8,
        skip: 0,
        q: state.search,
      );
      emit(LoadedHomeState(products, products.length == defaultTake, defaultSkip, defaultTake));
    }
  }

  void setSearch(String newSearch) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 350), () async {
      emit(LoadingHomeState(state.products));
      final products = await productRepository.fetchProducts(
        take: 8,
        skip: 0,
        q: newSearch,
      );
      emit(LoadedHomeState(products, products.length == defaultTake, defaultSkip, defaultTake));
    });
  }

  Future<void> refresh() async {
    emit(LoadingHomeState(state.products));
    final products = await productRepository.fetchProducts(
      take: state.take,
      skip: 0,
      q: state.search,
    );
    emit(
      LoadedHomeState(products, products.length == state.take, defaultSkip, state.take),
    );
  }
}
