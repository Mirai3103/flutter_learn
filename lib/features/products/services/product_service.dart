import 'package:flutter_learn/graphql/product/product_list.graphql.dart';
import 'package:flutter_learn/graphql/product/product_detail.graphql.dart';
import 'package:flutter_learn/graphql/schema.graphql.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

class ProductService {
  final GraphQLClient graphQLClient;

  ProductService({required this.graphQLClient});

  Future<Query$ListProducts> getProducts({
    int page = 1,
    int limit = 10,
    String q = "",
  }) async {
    final input = Input$ProductListInput(
      page: page,
      limit: limit,
      q: q,
      sort: Enum$SortOption.newest,
    );

    final result = await graphQLClient.query(
      QueryOptions(
        document: documentNodeQueryListProducts, 
        variables: input.toJson(),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );

    if (result.hasException) {
      throw result.exception!;
    }

    return Query$ListProducts.fromJson(result.data!);
  }

  Future<Query$Product$product?> getProductById(String id) async {
     final input = Variables$Query$Product(productId: id);

     final result = await graphQLClient.query(
      QueryOptions(
        document: documentNodeQueryProduct, 
        variables: input.toJson(),
        fetchPolicy: FetchPolicy.networkOnly,
      ),
    );
    if (result.hasException) {
      throw result.exception!;
    }
    final productData = Query$Product.fromJson(result.data!).product;
    return productData;
  }
}

