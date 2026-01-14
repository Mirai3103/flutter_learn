import 'package:gql/ast.dart';

class Query$ListProducts {
  Query$ListProducts({required this.listProducts, this.$__typename = 'Query'});

  factory Query$ListProducts.fromJson(Map<String, dynamic> json) {
    final l$listProducts = json['listProducts'];
    final l$$__typename = json['__typename'];
    return Query$ListProducts(
      listProducts: Query$ListProducts$listProducts.fromJson(
        (l$listProducts as Map<String, dynamic>),
      ),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ListProducts$listProducts listProducts;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$listProducts = listProducts;
    resultData['listProducts'] = l$listProducts.toJson();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$listProducts = listProducts;
    final l$$__typename = $__typename;
    return Object.hashAll([l$listProducts, l$$__typename]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ListProducts || runtimeType != other.runtimeType) {
      return false;
    }
    final l$listProducts = listProducts;
    final lOther$listProducts = other.listProducts;
    if (l$listProducts != lOther$listProducts) {
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

extension UtilityExtension$Query$ListProducts on Query$ListProducts {
  CopyWith$Query$ListProducts<Query$ListProducts> get copyWith =>
      CopyWith$Query$ListProducts(this, (i) => i);
}

abstract class CopyWith$Query$ListProducts<TRes> {
  factory CopyWith$Query$ListProducts(
    Query$ListProducts instance,
    TRes Function(Query$ListProducts) then,
  ) = _CopyWithImpl$Query$ListProducts;

  factory CopyWith$Query$ListProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$ListProducts;

  TRes call({
    Query$ListProducts$listProducts? listProducts,
    String? $__typename,
  });
  CopyWith$Query$ListProducts$listProducts<TRes> get listProducts;
}

class _CopyWithImpl$Query$ListProducts<TRes>
    implements CopyWith$Query$ListProducts<TRes> {
  _CopyWithImpl$Query$ListProducts(this._instance, this._then);

  final Query$ListProducts _instance;

  final TRes Function(Query$ListProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? listProducts = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ListProducts(
      listProducts: listProducts == _undefined || listProducts == null
          ? _instance.listProducts
          : (listProducts as Query$ListProducts$listProducts),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  @override
  CopyWith$Query$ListProducts$listProducts<TRes> get listProducts {
    final local$listProducts = _instance.listProducts;
    return CopyWith$Query$ListProducts$listProducts(
      local$listProducts,
      (e) => call(listProducts: e),
    );
  }
}

class _CopyWithStubImpl$Query$ListProducts<TRes>
    implements CopyWith$Query$ListProducts<TRes> {
  _CopyWithStubImpl$Query$ListProducts(this._res);

  final TRes _res;

  @override
  call({Query$ListProducts$listProducts? listProducts, String? $__typename}) =>
      _res;

  @override
  CopyWith$Query$ListProducts$listProducts<TRes> get listProducts =>
      CopyWith$Query$ListProducts$listProducts.stub(_res);
}

const documentNodeQueryListProducts = DocumentNode(
  definitions: [
    OperationDefinitionNode(
      type: OperationType.query,
      name: NameNode(value: 'ListProducts'),
      variableDefinitions: [],
      directives: [],
      selectionSet: SelectionSetNode(
        selections: [
          FieldNode(
            name: NameNode(value: 'listProducts'),
            alias: null,
            arguments: [],
            directives: [],
            selectionSet: SelectionSetNode(
              selections: [
                FieldNode(
                  name: NameNode(value: 'pagination'),
                  alias: null,
                  arguments: [],
                  directives: [],
                  selectionSet: SelectionSetNode(
                    selections: [
                      FieldNode(
                        name: NameNode(value: 'limit'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'page'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'total'),
                        alias: null,
                        arguments: [],
                        directives: [],
                        selectionSet: null,
                      ),
                      FieldNode(
                        name: NameNode(value: 'totalPages'),
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
                  name: NameNode(value: 'items'),
                  alias: null,
                  arguments: [],
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
                        name: NameNode(value: 'title'),
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

class Query$ListProducts$listProducts {
  Query$ListProducts$listProducts({
    required this.pagination,
    required this.items,
    this.$__typename = 'ProductListResponse',
  });

  factory Query$ListProducts$listProducts.fromJson(Map<String, dynamic> json) {
    final l$pagination = json['pagination'];
    final l$items = json['items'];
    final l$$__typename = json['__typename'];
    return Query$ListProducts$listProducts(
      pagination: Query$ListProducts$listProducts$pagination.fromJson(
        (l$pagination as Map<String, dynamic>),
      ),
      items: (l$items as List<dynamic>)
          .map(
            (e) => Query$ListProducts$listProducts$items.fromJson(
              (e as Map<String, dynamic>),
            ),
          )
          .toList(),
      $__typename: (l$$__typename as String),
    );
  }

  final Query$ListProducts$listProducts$pagination pagination;

  final List<Query$ListProducts$listProducts$items> items;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$pagination = pagination;
    resultData['pagination'] = l$pagination.toJson();
    final l$items = items;
    resultData['items'] = l$items.map((e) => e.toJson()).toList();
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$pagination = pagination;
    final l$items = items;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$pagination,
      Object.hashAll(l$items.map((v) => v)),
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ListProducts$listProducts ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$pagination = pagination;
    final lOther$pagination = other.pagination;
    if (l$pagination != lOther$pagination) {
      return false;
    }
    final l$items = items;
    final lOther$items = other.items;
    if (l$items.length != lOther$items.length) {
      return false;
    }
    for (int i = 0; i < l$items.length; i++) {
      final l$items$entry = l$items[i];
      final lOther$items$entry = lOther$items[i];
      if (l$items$entry != lOther$items$entry) {
        return false;
      }
    }
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ListProducts$listProducts
    on Query$ListProducts$listProducts {
  CopyWith$Query$ListProducts$listProducts<Query$ListProducts$listProducts>
  get copyWith => CopyWith$Query$ListProducts$listProducts(this, (i) => i);
}

abstract class CopyWith$Query$ListProducts$listProducts<TRes> {
  factory CopyWith$Query$ListProducts$listProducts(
    Query$ListProducts$listProducts instance,
    TRes Function(Query$ListProducts$listProducts) then,
  ) = _CopyWithImpl$Query$ListProducts$listProducts;

  factory CopyWith$Query$ListProducts$listProducts.stub(TRes res) =
      _CopyWithStubImpl$Query$ListProducts$listProducts;

  TRes call({
    Query$ListProducts$listProducts$pagination? pagination,
    List<Query$ListProducts$listProducts$items>? items,
    String? $__typename,
  });
  CopyWith$Query$ListProducts$listProducts$pagination<TRes> get pagination;
  TRes items(
    Iterable<Query$ListProducts$listProducts$items> Function(
      Iterable<
        CopyWith$Query$ListProducts$listProducts$items<
          Query$ListProducts$listProducts$items
        >
      >,
    )
    fn,
  );
}

class _CopyWithImpl$Query$ListProducts$listProducts<TRes>
    implements CopyWith$Query$ListProducts$listProducts<TRes> {
  _CopyWithImpl$Query$ListProducts$listProducts(this._instance, this._then);

  final Query$ListProducts$listProducts _instance;

  final TRes Function(Query$ListProducts$listProducts) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? pagination = _undefined,
    Object? items = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ListProducts$listProducts(
      pagination: pagination == _undefined || pagination == null
          ? _instance.pagination
          : (pagination as Query$ListProducts$listProducts$pagination),
      items: items == _undefined || items == null
          ? _instance.items
          : (items as List<Query$ListProducts$listProducts$items>),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );

  @override
  CopyWith$Query$ListProducts$listProducts$pagination<TRes> get pagination {
    final local$pagination = _instance.pagination;
    return CopyWith$Query$ListProducts$listProducts$pagination(
      local$pagination,
      (e) => call(pagination: e),
    );
  }

  @override
  TRes items(
    Iterable<Query$ListProducts$listProducts$items> Function(
      Iterable<
        CopyWith$Query$ListProducts$listProducts$items<
          Query$ListProducts$listProducts$items
        >
      >,
    )
    fn,
  ) => call(
    items: fn(
      _instance.items.map(
        (e) => CopyWith$Query$ListProducts$listProducts$items(e, (i) => i),
      ),
    ).toList(),
  );
}

class _CopyWithStubImpl$Query$ListProducts$listProducts<TRes>
    implements CopyWith$Query$ListProducts$listProducts<TRes> {
  _CopyWithStubImpl$Query$ListProducts$listProducts(this._res);

  final TRes _res;

  @override
  call({
    Query$ListProducts$listProducts$pagination? pagination,
    List<Query$ListProducts$listProducts$items>? items,
    String? $__typename,
  }) => _res;

  @override
  CopyWith$Query$ListProducts$listProducts$pagination<TRes> get pagination =>
      CopyWith$Query$ListProducts$listProducts$pagination.stub(_res);

  @override
  items(fn) => _res;
}

class Query$ListProducts$listProducts$pagination {
  Query$ListProducts$listProducts$pagination({
    required this.limit,
    required this.page,
    required this.total,
    required this.totalPages,
    this.$__typename = 'PaginationInfo',
  });

  factory Query$ListProducts$listProducts$pagination.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$limit = json['limit'];
    final l$page = json['page'];
    final l$total = json['total'];
    final l$totalPages = json['totalPages'];
    final l$$__typename = json['__typename'];
    return Query$ListProducts$listProducts$pagination(
      limit: (l$limit as int),
      page: (l$page as int),
      total: (l$total as int),
      totalPages: (l$totalPages as int),
      $__typename: (l$$__typename as String),
    );
  }

  final int limit;

  final int page;

  final int total;

  final int totalPages;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$limit = limit;
    resultData['limit'] = l$limit;
    final l$page = page;
    resultData['page'] = l$page;
    final l$total = total;
    resultData['total'] = l$total;
    final l$totalPages = totalPages;
    resultData['totalPages'] = l$totalPages;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$limit = limit;
    final l$page = page;
    final l$total = total;
    final l$totalPages = totalPages;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$limit,
      l$page,
      l$total,
      l$totalPages,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ListProducts$listProducts$pagination ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (l$page != lOther$page) {
      return false;
    }
    final l$total = total;
    final lOther$total = other.total;
    if (l$total != lOther$total) {
      return false;
    }
    final l$totalPages = totalPages;
    final lOther$totalPages = other.totalPages;
    if (l$totalPages != lOther$totalPages) {
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

extension UtilityExtension$Query$ListProducts$listProducts$pagination
    on Query$ListProducts$listProducts$pagination {
  CopyWith$Query$ListProducts$listProducts$pagination<
    Query$ListProducts$listProducts$pagination
  >
  get copyWith =>
      CopyWith$Query$ListProducts$listProducts$pagination(this, (i) => i);
}

abstract class CopyWith$Query$ListProducts$listProducts$pagination<TRes> {
  factory CopyWith$Query$ListProducts$listProducts$pagination(
    Query$ListProducts$listProducts$pagination instance,
    TRes Function(Query$ListProducts$listProducts$pagination) then,
  ) = _CopyWithImpl$Query$ListProducts$listProducts$pagination;

  factory CopyWith$Query$ListProducts$listProducts$pagination.stub(TRes res) =
      _CopyWithStubImpl$Query$ListProducts$listProducts$pagination;

  TRes call({
    int? limit,
    int? page,
    int? total,
    int? totalPages,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ListProducts$listProducts$pagination<TRes>
    implements CopyWith$Query$ListProducts$listProducts$pagination<TRes> {
  _CopyWithImpl$Query$ListProducts$listProducts$pagination(
    this._instance,
    this._then,
  );

  final Query$ListProducts$listProducts$pagination _instance;

  final TRes Function(Query$ListProducts$listProducts$pagination) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? limit = _undefined,
    Object? page = _undefined,
    Object? total = _undefined,
    Object? totalPages = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ListProducts$listProducts$pagination(
      limit: limit == _undefined || limit == null
          ? _instance.limit
          : (limit as int),
      page: page == _undefined || page == null ? _instance.page : (page as int),
      total: total == _undefined || total == null
          ? _instance.total
          : (total as int),
      totalPages: totalPages == _undefined || totalPages == null
          ? _instance.totalPages
          : (totalPages as int),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ListProducts$listProducts$pagination<TRes>
    implements CopyWith$Query$ListProducts$listProducts$pagination<TRes> {
  _CopyWithStubImpl$Query$ListProducts$listProducts$pagination(this._res);

  final TRes _res;

  @override
  call({
    int? limit,
    int? page,
    int? total,
    int? totalPages,
    String? $__typename,
  }) => _res;
}

class Query$ListProducts$listProducts$items {
  Query$ListProducts$listProducts$items({
    required this.id,
    required this.title,
    this.thumbnailUrl,
    required this.displayPrice,
    this.$__typename = 'Product',
  });

  factory Query$ListProducts$listProducts$items.fromJson(
    Map<String, dynamic> json,
  ) {
    final l$id = json['id'];
    final l$title = json['title'];
    final l$thumbnailUrl = json['thumbnailUrl'];
    final l$displayPrice = json['displayPrice'];
    final l$$__typename = json['__typename'];
    return Query$ListProducts$listProducts$items(
      id: (l$id as String),
      title: (l$title as String),
      thumbnailUrl: (l$thumbnailUrl as String?),
      displayPrice: (l$displayPrice as String),
      $__typename: (l$$__typename as String),
    );
  }

  final String id;

  final String title;

  final String? thumbnailUrl;

  final String displayPrice;

  final String $__typename;

  Map<String, dynamic> toJson() {
    final resultData = <String, dynamic>{};
    final l$id = id;
    resultData['id'] = l$id;
    final l$title = title;
    resultData['title'] = l$title;
    final l$thumbnailUrl = thumbnailUrl;
    resultData['thumbnailUrl'] = l$thumbnailUrl;
    final l$displayPrice = displayPrice;
    resultData['displayPrice'] = l$displayPrice;
    final l$$__typename = $__typename;
    resultData['__typename'] = l$$__typename;
    return resultData;
  }

  @override
  int get hashCode {
    final l$id = id;
    final l$title = title;
    final l$thumbnailUrl = thumbnailUrl;
    final l$displayPrice = displayPrice;
    final l$$__typename = $__typename;
    return Object.hashAll([
      l$id,
      l$title,
      l$thumbnailUrl,
      l$displayPrice,
      l$$__typename,
    ]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Query$ListProducts$listProducts$items ||
        runtimeType != other.runtimeType) {
      return false;
    }
    final l$id = id;
    final lOther$id = other.id;
    if (l$id != lOther$id) {
      return false;
    }
    final l$title = title;
    final lOther$title = other.title;
    if (l$title != lOther$title) {
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
    final l$$__typename = $__typename;
    final lOther$$__typename = other.$__typename;
    if (l$$__typename != lOther$$__typename) {
      return false;
    }
    return true;
  }
}

extension UtilityExtension$Query$ListProducts$listProducts$items
    on Query$ListProducts$listProducts$items {
  CopyWith$Query$ListProducts$listProducts$items<
    Query$ListProducts$listProducts$items
  >
  get copyWith =>
      CopyWith$Query$ListProducts$listProducts$items(this, (i) => i);
}

abstract class CopyWith$Query$ListProducts$listProducts$items<TRes> {
  factory CopyWith$Query$ListProducts$listProducts$items(
    Query$ListProducts$listProducts$items instance,
    TRes Function(Query$ListProducts$listProducts$items) then,
  ) = _CopyWithImpl$Query$ListProducts$listProducts$items;

  factory CopyWith$Query$ListProducts$listProducts$items.stub(TRes res) =
      _CopyWithStubImpl$Query$ListProducts$listProducts$items;

  TRes call({
    String? id,
    String? title,
    String? thumbnailUrl,
    String? displayPrice,
    String? $__typename,
  });
}

class _CopyWithImpl$Query$ListProducts$listProducts$items<TRes>
    implements CopyWith$Query$ListProducts$listProducts$items<TRes> {
  _CopyWithImpl$Query$ListProducts$listProducts$items(
    this._instance,
    this._then,
  );

  final Query$ListProducts$listProducts$items _instance;

  final TRes Function(Query$ListProducts$listProducts$items) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? id = _undefined,
    Object? title = _undefined,
    Object? thumbnailUrl = _undefined,
    Object? displayPrice = _undefined,
    Object? $__typename = _undefined,
  }) => _then(
    Query$ListProducts$listProducts$items(
      id: id == _undefined || id == null ? _instance.id : (id as String),
      title: title == _undefined || title == null
          ? _instance.title
          : (title as String),
      thumbnailUrl: thumbnailUrl == _undefined
          ? _instance.thumbnailUrl
          : (thumbnailUrl as String?),
      displayPrice: displayPrice == _undefined || displayPrice == null
          ? _instance.displayPrice
          : (displayPrice as String),
      $__typename: $__typename == _undefined || $__typename == null
          ? _instance.$__typename
          : ($__typename as String),
    ),
  );
}

class _CopyWithStubImpl$Query$ListProducts$listProducts$items<TRes>
    implements CopyWith$Query$ListProducts$listProducts$items<TRes> {
  _CopyWithStubImpl$Query$ListProducts$listProducts$items(this._res);

  final TRes _res;

  @override
  call({
    String? id,
    String? title,
    String? thumbnailUrl,
    String? displayPrice,
    String? $__typename,
  }) => _res;
}
