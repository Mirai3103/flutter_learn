import 'package:gql/ast.dart';

class Variables$Query$Product {
  factory Variables$Query$Product({required String productId}) =>
      Variables$Query$Product._({r'productId': productId});

  Variables$Query$Product._(this._$data);

  factory Variables$Query$Product.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    final l$productId = data['productId'];
    result$data['productId'] = (l$productId as String);
    return Variables$Query$Product._(result$data);
  }

  Map<String, dynamic> _$data;

  String get productId => (_$data['productId'] as String);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    final l$productId = productId;
    result$data['productId'] = l$productId;
    return result$data;
  }

  CopyWith$Variables$Query$Product<Variables$Query$Product> get copyWith =>
      CopyWith$Variables$Query$Product(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Variables$Query$Product || runtimeType != other.runtimeType) {
      return false;
    }
    final l$productId = productId;
    final lOther$productId = other.productId;
    if (l$productId != lOther$productId) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$productId = productId;
    return Object.hashAll([l$productId]);
  }
}

abstract class CopyWith$Variables$Query$Product<TRes> {
  factory CopyWith$Variables$Query$Product(
    Variables$Query$Product instance,
    TRes Function(Variables$Query$Product) then,
  ) = _CopyWithImpl$Variables$Query$Product;

  factory CopyWith$Variables$Query$Product.stub(TRes res) =
      _CopyWithStubImpl$Variables$Query$Product;

  TRes call({String? productId});
}

class _CopyWithImpl$Variables$Query$Product<TRes>
    implements CopyWith$Variables$Query$Product<TRes> {
  _CopyWithImpl$Variables$Query$Product(this._instance, this._then);

  final Variables$Query$Product _instance;

  final TRes Function(Variables$Query$Product) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? productId = _undefined}) => _then(
    Variables$Query$Product._({
      ..._instance._$data,
      if (productId != _undefined && productId != null)
        'productId': (productId as String),
    }),
  );
}

class _CopyWithStubImpl$Variables$Query$Product<TRes>
    implements CopyWith$Variables$Query$Product<TRes> {
  _CopyWithStubImpl$Variables$Query$Product(this._res);

  final TRes _res;

  @override
  call({String? productId}) => _res;
}

class Query$Product {
  Query$Product({this.product, this.$__typename = 'Query'});

  factory Query$Product.fromJson(Map<String, dynamic> json) {
    final l$product = json['product'];
    final l$$__typename = json['__typename'];
    return Query$Product(
      product: l$product == null
          ? null
          : Query$Product$product.fromJson((l$product as Map<String, dynamic>)),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$Product$product? product;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$product = product;
    resultData['product'] = l$product?.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$product = product;
    final l$$__typename = $__typename;
    return Object.hashAll([l$product, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product || runtimeType != other.runtimeType) {
      return false;
    }
    final l$product = product;
    final lOther$product = other.product;
    if (l$product != lOther$product) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product on Query$Product {
  CopyWith$Query$Product<Query$Product> get copyWith =>
      CopyWith$Query$Product(this, (i) => i);
}

abstract class CopyWith$Query$Product<TRes> {
  factory CopyWith$Query$Product(
    Query$Product instance,
    TRes Function(Query$Product) then,
  ) = _CopyWithImpl$Query$Product;

  factory CopyWith$Query$Product.stub(TRes res) =
      _CopyWithStubImpl$Query$Product;

  TRes call({Query$Product$product? product, String? $__typename});
  CopyWith$Query$Product$product<TRes> get product;
}

class _CopyWithImpl$Query$Product<TRes>
    implements CopyWith$Query$Product<TRes> {
  _CopyWithImpl$Query$Product(this._instance, this._then);

  final Query$Product _instance;

  final TRes Function(Query$Product) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({Object? product = _undefined, Object? $__typename = _undefined}) =>
      _then(
        Query$Product(
          product: product == _undefined
              ? _instance.product
              : (product as Query$Product$product?),
          $__typename: $__typename == _undefined || $__typename == null
              ? _instance.$__typename
              : ($__typename as String),
        ),
      );

  @override
  CopyWith$Query$Product$product<TRes> get product {
    final local$product = _instance.product;
    return local$product == null
        ? CopyWith$Query$Product$product.stub(_then(_instance))
        : CopyWith$Query$Product$product(
            local$product,
            (e) => call(product: e),
          );
  }
}

class _CopyWithStubImpl$Query$Product<TRes>
    implements CopyWith$Query$Product<TRes> {
  _CopyWithStubImpl$Query$Product(this._res);

  final TRes _res;

  @override
  call({Query$Product$product? product, String? $__typename}) => _res;

  @override
  CopyWith$Query$Product$product<TRes> get product =>
      CopyWith$Query$Product$product.stub(_res);
}

const documentNodeQueryProduct = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'Product'),
      variableDefinitions: [
        VariableDefinitionNode(
          variable: VariableNode(name: NameNode(value: 'productId')),
          type: NamedTypeNode(name: NameNode(value: 'ID'), isNonNull: true),
          defaultValue: DefaultValueNode(value: null),
          directives: [],
        ),
      ],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'product'),
            alias: null,
            arguments: [
              ArgumentNode(
                name: NameNode(value: 'id'),
                value: VariableNode(name: NameNode(value: 'productId')),
              ),
            ],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'id'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'thumbnailUrl'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'displayPrice'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'description'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: 'title'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
                FieldNode(
                  name: NameNode(value: '__typename'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: null,
                ),
              ],
            ),
          ),
          FieldNode(
            name: NameNode(value: '__typename'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: null,
          ),
        ],
      ),
    ),
  ],
);

class Query$Product$product {
  Query$Product$product({
    required this.id,
    this.thumbnailUrl,
    required this.displayPrice,
    this.description,
    required this.title,
    this.$__typename = 'Product',
  });

  factory Query$Product$product.fromJson(Map<String, dynamic> json) {
    final l$id = json['id'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayPrice = json['displayPrice'];
    final l$description = json['description'];
    final l$title = json['title'];
    final l$$__typename = json['__typename'];
    return Query$Product$product(
      id: (l$id as String),
      thumbnailUrl: (l$thumbnailUrl as String?),
      displayPrice: (l$displayPrice as String),
      description: (l$description as String?),
      title: (l$title as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String? thumbnailUrl;

  final String displayPrice;

  final String? description;

  final String title;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$thumbnailUrl = thumbnailUrl;
    resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$displayPrice = displayPrice;
    resultData['displayPrice'] = l$displayPrice;
    final l$description = description;
    resultData['description'] = l$description;
    final l$title = title;
    resultData['title'] = l$title;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$thumbnailUrl = thumbnailUrl;
    final l$displayPrice = displayPrice;
    final l$description = description;
    final l$title = title;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$thumbnailUrl,
      l$displayPrice,
      l$description,
      l$title,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$Product$product || runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$thumbnailUrl = thumbnailUrl;
    final lOther$thumbnailUrl = other.thumbnailUrl;
    if (l$thumbnailUrl != lOther$thumbnailUrl) {
      return false;
    }
    final l$displayPrice = displayPrice;
    final lOther$displayPrice = other.displayPrice;
    if (l$displayPrice != lOther$displayPrice) {
      return false;
    }
    final l$description = description;
    final lOther$description = other.description;
    if (l$description != lOther$description) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
      return false;
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$Product$product on Query$Product$product {
  CopyWith$Query$Product$product<Query$Product$product> get copyWith =>
      CopyWith$Query$Product$product(this, (i) => i);
}

abstract class CopyWith$Query$Product$product<TRes> {
  factory CopyWith$Query$Product$product(
    Query$Product$product instance,
    TRes Function(Query$Product$product) then,
  ) = _CopyWithImpl$Query$Product$product;

  factory CopyWith$Query$Product$product.stub(TRes res) =
      _CopyWithStubImpl$Query$Product$product;

  TRes call({
    String? id,
    String? thumbnailUrl,
    String? displayPrice,
    String? description,
    String? title,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$Product$product<TRes>
    implements CopyWith$Query$Product$product<TRes> {
  _CopyWithImpl$Query$Product$product(this._instance, this._then);

  final Query$Product$product _instance;

  final TRes Function(Query$Product$product) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? displayPrice = _undefined,
    Object? description = _undefined,
    Object? title = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$Product$product(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      thumbnailUrl: thumbnailUrl == _undefined
          ? _instance.thumbnailUrl
          : (thumbnailUrl as String?),
      displayPrice: displayPrice == _undefined || displayPrice == null
          ? _instance.displayPrice
          : (displayPrice as String),
      description: description == _undefined
          ? _instance.description
          : (description as String?),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$Product$product<TRes>
    implements CopyWith$Query$Product$product<TRes> {
  _CopyWithStubImpl$Query$Product$product(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? thumbnailUrl,
    String? displayPrice,
    String? description,
    String? title,
    String? $__typename,
  }) => _res;
}
