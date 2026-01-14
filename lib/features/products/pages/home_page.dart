import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_learn/features/bloc/auth.bloc.dart';
import 'package:flutter_learn/features/bloc/auth.event.dart';
import 'package:flutter_learn/features/cart/bloc/cart_bloc.dart';
import 'package:flutter_learn/features/cart/bloc/cart_event.dart';
import 'package:flutter_learn/features/cart/bloc/cart_state.dart';
import 'package:flutter_learn/features/products/bloc/home.cubit.dart';
import 'package:flutter_learn/features/products/models/product_model.dart';
import 'package:flutter_learn/features/products/pages/widgets/product_card.dart';
import 'package:flutter_learn/features/products/services/product_service.dart';
import 'package:flutter_learn/routes/route_names.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, this.productService});
  final ProductService? productService;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _searchController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels >=
          _scrollController.position.maxScrollExtent) {
        print("Đã scroll tới cuối GridView");
        context.read<HomeCubit>().loadMore();
      }
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _buildSearchBar(),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: const Icon(Icons.shopping_cart_outlined),
                onPressed: () {
                  context.push(RouteNames.cart);
                },
              ),
              BlocBuilder<CartBloc, CartState>(
                builder: (context, state) {
                  if (state is CartLoaded && state.items.isNotEmpty) {
                    return Positioned(
                      right: 6,
                      top: 6,
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: const BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Text(
                          '${state.items.length}',
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    );
                  }
                  return const SizedBox.shrink();
                },
              ),
            ],
          ),
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              context.read<CartBloc>().add(CartCleared());
              context.read<AuthBloc>().add(LogoutEvent());
            },
          ),
        ],
      ),
      body: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final product = state.products;
          print("rendering HomePage with ${product.length} products");
          return _buildProductGrid(product);
        },
      ),
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      controller: _searchController,
      decoration: InputDecoration(
        hintText: 'Search products...',
        prefixIcon: const Icon(Icons.search),
        suffixIcon: _searchController.text.isNotEmpty
            ? IconButton(
                icon: const Icon(Icons.clear),
                onPressed: () {
                  _searchController.clear();
                },
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      ),
      onChanged: (value) {},
    );
  }

  Widget _buildProductGrid(List<ProductModel> products) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        return Column(
          children: [
            Expanded(child: GridView.builder(
              padding: const EdgeInsets.all(16),
              controller: _scrollController,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.7,
              ),
              itemCount: products.length,
              itemBuilder: (context, index) =>
                  ProductCard(product: products[index]),
            )),
            if (state is LoadingHomeState)
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: CircularProgressIndicator(),
              ),
          ],
        );
      },
    );
  }
}
