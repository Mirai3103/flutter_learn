class Input$ProductListInput {
  factory Input$ProductListInput({
    int? page,
    int? limit,
    String? q,
    List<String>? categoryIds,
    List<String>? brandIds,
    double? minPrice,
    double? maxPrice,
    Enum$SortOption? sort,
    bool? inStockOnly,
    bool? withInActive,
    bool? isFeatured,
  }) => Input$ProductListInput._({
    if (page != null) r'page': page,
    if (limit != null) r'limit': limit,
    if (q != null) r'q': q,
    if (categoryIds != null) r'categoryIds': categoryIds,
    if (brandIds != null) r'brandIds': brandIds,
    if (minPrice != null) r'minPrice': minPrice,
    if (maxPrice != null) r'maxPrice': maxPrice,
    if (sort != null) r'sort': sort,
    if (inStockOnly != null) r'inStockOnly': inStockOnly,
    if (withInActive != null) r'withInActive': withInActive,
    if (isFeatured != null) r'isFeatured': isFeatured,
  });

  Input$ProductListInput._(this._$data);

  factory Input$ProductListInput.fromJson(Map<String, dynamic> data) {
    final result$data = <String, dynamic>{};
    if (data.containsKey('page')) {
      final l$page = data['page'];
      result$data['page'] = (l$page as int?);
    }
    if (data.containsKey('limit')) {
      final l$limit = data['limit'];
      result$data['limit'] = (l$limit as int?);
    }
    if (data.containsKey('q')) {
      final l$q = data['q'];
      result$data['q'] = (l$q as String?);
    }
    if (data.containsKey('categoryIds')) {
      final l$categoryIds = data['categoryIds'];
      result$data['categoryIds'] = (l$categoryIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('brandIds')) {
      final l$brandIds = data['brandIds'];
      result$data['brandIds'] = (l$brandIds as List<dynamic>?)
          ?.map((e) => (e as String))
          .toList();
    }
    if (data.containsKey('minPrice')) {
      final l$minPrice = data['minPrice'];
      result$data['minPrice'] = (l$minPrice as num?)?.toDouble();
    }
    if (data.containsKey('maxPrice')) {
      final l$maxPrice = data['maxPrice'];
      result$data['maxPrice'] = (l$maxPrice as num?)?.toDouble();
    }
    if (data.containsKey('sort')) {
      final l$sort = data['sort'];
      result$data['sort'] = l$sort == null
          ? null
          : fromJson$Enum$SortOption((l$sort as String));
    }
    if (data.containsKey('inStockOnly')) {
      final l$inStockOnly = data['inStockOnly'];
      result$data['inStockOnly'] = (l$inStockOnly as bool?);
    }
    if (data.containsKey('withInActive')) {
      final l$withInActive = data['withInActive'];
      result$data['withInActive'] = (l$withInActive as bool?);
    }
    if (data.containsKey('isFeatured')) {
      final l$isFeatured = data['isFeatured'];
      result$data['isFeatured'] = (l$isFeatured as bool?);
    }
    return Input$ProductListInput._(result$data);
  }

  Map<String, dynamic> _$data;

  int? get page => (_$data['page'] as int?);

  int? get limit => (_$data['limit'] as int?);

  String? get q => (_$data['q'] as String?);

  List<String>? get categoryIds => (_$data['categoryIds'] as List<String>?);

  List<String>? get brandIds => (_$data['brandIds'] as List<String>?);

  double? get minPrice => (_$data['minPrice'] as double?);

  double? get maxPrice => (_$data['maxPrice'] as double?);

  Enum$SortOption? get sort => (_$data['sort'] as Enum$SortOption?);

  bool? get inStockOnly => (_$data['inStockOnly'] as bool?);

  bool? get withInActive => (_$data['withInActive'] as bool?);

  bool? get isFeatured => (_$data['isFeatured'] as bool?);

  Map<String, dynamic> toJson() {
    final result$data = <String, dynamic>{};
    if (_$data.containsKey('page')) {
      final l$page = page;
      result$data['page'] = l$page;
    }
    if (_$data.containsKey('limit')) {
      final l$limit = limit;
      result$data['limit'] = l$limit;
    }
    if (_$data.containsKey('q')) {
      final l$q = q;
      result$data['q'] = l$q;
    }
    if (_$data.containsKey('categoryIds')) {
      final l$categoryIds = categoryIds;
      result$data['categoryIds'] = l$categoryIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('brandIds')) {
      final l$brandIds = brandIds;
      result$data['brandIds'] = l$brandIds?.map((e) => e).toList();
    }
    if (_$data.containsKey('minPrice')) {
      final l$minPrice = minPrice;
      result$data['minPrice'] = l$minPrice;
    }
    if (_$data.containsKey('maxPrice')) {
      final l$maxPrice = maxPrice;
      result$data['maxPrice'] = l$maxPrice;
    }
    if (_$data.containsKey('sort')) {
      final l$sort = sort;
      result$data['sort'] = l$sort == null
          ? null
          : toJson$Enum$SortOption(l$sort);
    }
    if (_$data.containsKey('inStockOnly')) {
      final l$inStockOnly = inStockOnly;
      result$data['inStockOnly'] = l$inStockOnly;
    }
    if (_$data.containsKey('withInActive')) {
      final l$withInActive = withInActive;
      result$data['withInActive'] = l$withInActive;
    }
    if (_$data.containsKey('isFeatured')) {
      final l$isFeatured = isFeatured;
      result$data['isFeatured'] = l$isFeatured;
    }
    return result$data;
  }

  CopyWith$Input$ProductListInput<Input$ProductListInput> get copyWith =>
      CopyWith$Input$ProductListInput(this, (i) => i);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }
    if (other is! Input$ProductListInput || runtimeType != other.runtimeType) {
      return false;
    }
    final l$page = page;
    final lOther$page = other.page;
    if (_$data.containsKey('page') != other._$data.containsKey('page')) {
      return false;
    }
    if (l$page != lOther$page) {
      return false;
    }
    final l$limit = limit;
    final lOther$limit = other.limit;
    if (_$data.containsKey('limit') != other._$data.containsKey('limit')) {
      return false;
    }
    if (l$limit != lOther$limit) {
      return false;
    }
    final l$q = q;
    final lOther$q = other.q;
    if (_$data.containsKey('q') != other._$data.containsKey('q')) {
      return false;
    }
    if (l$q != lOther$q) {
      return false;
    }
    final l$categoryIds = categoryIds;
    final lOther$categoryIds = other.categoryIds;
    if (_$data.containsKey('categoryIds') !=
        other._$data.containsKey('categoryIds')) {
      return false;
    }
    if (l$categoryIds != null && lOther$categoryIds != null) {
      if (l$categoryIds.length != lOther$categoryIds.length) {
        return false;
      }
      for (int i = 0; i < l$categoryIds.length; i++) {
        final l$categoryIds$entry = l$categoryIds[i];
        final lOther$categoryIds$entry = lOther$categoryIds[i];
        if (l$categoryIds$entry != lOther$categoryIds$entry) {
          return false;
        }
      }
    } else if (l$categoryIds != lOther$categoryIds) {
      return false;
    }
    final l$brandIds = brandIds;
    final lOther$brandIds = other.brandIds;
    if (_$data.containsKey('brandIds') !=
        other._$data.containsKey('brandIds')) {
      return false;
    }
    if (l$brandIds != null && lOther$brandIds != null) {
      if (l$brandIds.length != lOther$brandIds.length) {
        return false;
      }
      for (int i = 0; i < l$brandIds.length; i++) {
        final l$brandIds$entry = l$brandIds[i];
        final lOther$brandIds$entry = lOther$brandIds[i];
        if (l$brandIds$entry != lOther$brandIds$entry) {
          return false;
        }
      }
    } else if (l$brandIds != lOther$brandIds) {
      return false;
    }
    final l$minPrice = minPrice;
    final lOther$minPrice = other.minPrice;
    if (_$data.containsKey('minPrice') !=
        other._$data.containsKey('minPrice')) {
      return false;
    }
    if (l$minPrice != lOther$minPrice) {
      return false;
    }
    final l$maxPrice = maxPrice;
    final lOther$maxPrice = other.maxPrice;
    if (_$data.containsKey('maxPrice') !=
        other._$data.containsKey('maxPrice')) {
      return false;
    }
    if (l$maxPrice != lOther$maxPrice) {
      return false;
    }
    final l$sort = sort;
    final lOther$sort = other.sort;
    if (_$data.containsKey('sort') != other._$data.containsKey('sort')) {
      return false;
    }
    if (l$sort != lOther$sort) {
      return false;
    }
    final l$inStockOnly = inStockOnly;
    final lOther$inStockOnly = other.inStockOnly;
    if (_$data.containsKey('inStockOnly') !=
        other._$data.containsKey('inStockOnly')) {
      return false;
    }
    if (l$inStockOnly != lOther$inStockOnly) {
      return false;
    }
    final l$withInActive = withInActive;
    final lOther$withInActive = other.withInActive;
    if (_$data.containsKey('withInActive') !=
        other._$data.containsKey('withInActive')) {
      return false;
    }
    if (l$withInActive != lOther$withInActive) {
      return false;
    }
    final l$isFeatured = isFeatured;
    final lOther$isFeatured = other.isFeatured;
    if (_$data.containsKey('isFeatured') !=
        other._$data.containsKey('isFeatured')) {
      return false;
    }
    if (l$isFeatured != lOther$isFeatured) {
      return false;
    }
    return true;
  }

  @override
  int get hashCode {
    final l$page = page;
    final l$limit = limit;
    final l$q = q;
    final l$categoryIds = categoryIds;
    final l$brandIds = brandIds;
    final l$minPrice = minPrice;
    final l$maxPrice = maxPrice;
    final l$sort = sort;
    final l$inStockOnly = inStockOnly;
    final l$withInActive = withInActive;
    final l$isFeatured = isFeatured;
    return Object.hashAll([
      _$data.containsKey('page') ? l$page : const {},
      _$data.containsKey('limit') ? l$limit : const {},
      _$data.containsKey('q') ? l$q : const {},
      _$data.containsKey('categoryIds')
          ? l$categoryIds == null
                ? null
                : Object.hashAll(l$categoryIds.map((v) => v))
          : const {},
      _$data.containsKey('brandIds')
          ? l$brandIds == null
                ? null
                : Object.hashAll(l$brandIds.map((v) => v))
          : const {},
      _$data.containsKey('minPrice') ? l$minPrice : const {},
      _$data.containsKey('maxPrice') ? l$maxPrice : const {},
      _$data.containsKey('sort') ? l$sort : const {},
      _$data.containsKey('inStockOnly') ? l$inStockOnly : const {},
      _$data.containsKey('withInActive') ? l$withInActive : const {},
      _$data.containsKey('isFeatured') ? l$isFeatured : const {},
    ]);
  }
}

abstract class CopyWith$Input$ProductListInput<TRes> {
  factory CopyWith$Input$ProductListInput(
    Input$ProductListInput instance,
    TRes Function(Input$ProductListInput) then,
  ) = _CopyWithImpl$Input$ProductListInput;

  factory CopyWith$Input$ProductListInput.stub(TRes res) =
      _CopyWithStubImpl$Input$ProductListInput;

  TRes call({
    int? page,
    int? limit,
    String? q,
    List<String>? categoryIds,
    List<String>? brandIds,
    double? minPrice,
    double? maxPrice,
    Enum$SortOption? sort,
    bool? inStockOnly,
    bool? withInActive,
    bool? isFeatured,
  });
}

class _CopyWithImpl$Input$ProductListInput<TRes>
    implements CopyWith$Input$ProductListInput<TRes> {
  _CopyWithImpl$Input$ProductListInput(this._instance, this._then);

  final Input$ProductListInput _instance;

  final TRes Function(Input$ProductListInput) _then;

  static const _undefined = <dynamic, dynamic>{};

  @override
  TRes call({
    Object? page = _undefined,
    Object? limit = _undefined,
    Object? q = _undefined,
    Object? categoryIds = _undefined,
    Object? brandIds = _undefined,
    Object? minPrice = _undefined,
    Object? maxPrice = _undefined,
    Object? sort = _undefined,
    Object? inStockOnly = _undefined,
    Object? withInActive = _undefined,
    Object? isFeatured = _undefined,
  }) => _then(
    Input$ProductListInput._({
      ..._instance._$data,
      if (page != _undefined) 'page': (page as int?),
      if (limit != _undefined) 'limit': (limit as int?),
      if (q != _undefined) 'q': (q as String?),
      if (categoryIds != _undefined)
        'categoryIds': (categoryIds as List<String>?),
      if (brandIds != _undefined) 'brandIds': (brandIds as List<String>?),
      if (minPrice != _undefined) 'minPrice': (minPrice as double?),
      if (maxPrice != _undefined) 'maxPrice': (maxPrice as double?),
      if (sort != _undefined) 'sort': (sort as Enum$SortOption?),
      if (inStockOnly != _undefined) 'inStockOnly': (inStockOnly as bool?),
      if (withInActive != _undefined) 'withInActive': (withInActive as bool?),
      if (isFeatured != _undefined) 'isFeatured': (isFeatured as bool?),
    }),
  );
}

class _CopyWithStubImpl$Input$ProductListInput<TRes>
    implements CopyWith$Input$ProductListInput<TRes> {
  _CopyWithStubImpl$Input$ProductListInput(this._res);

  final TRes _res;

  @override
  call({
    int? page,
    int? limit,
    String? q,
    List<String>? categoryIds,
    List<String>? brandIds,
    double? minPrice,
    double? maxPrice,
    Enum$SortOption? sort,
    bool? inStockOnly,
    bool? withInActive,
    bool? isFeatured,
  }) => _res;
}

enum Enum$SortOption {
  newest,
  price_asc,
  price_desc,
  title_asc,
  title_desc,
  $unknown;

  factory Enum$SortOption.fromJson(String value) =>
      fromJson$Enum$SortOption(value);

  String toJson() => toJson$Enum$SortOption(this);
}

String toJson$Enum$SortOption(Enum$SortOption e) {
  switch (e) {
    case Enum$SortOption.newest:
      return r'newest';
    case Enum$SortOption.price_asc:
      return r'price_asc';
    case Enum$SortOption.price_desc:
      return r'price_desc';
    case Enum$SortOption.title_asc:
      return r'title_asc';
    case Enum$SortOption.title_desc:
      return r'title_desc';
    case Enum$SortOption.$unknown:
      return r'$unknown';
  }
}

Enum$SortOption fromJson$Enum$SortOption(String value) {
  switch (value) {
    case r'newest':
      return Enum$SortOption.newest;
    case r'price_asc':
      return Enum$SortOption.price_asc;
    case r'price_desc':
      return Enum$SortOption.price_desc;
    case r'title_asc':
      return Enum$SortOption.title_asc;
    case r'title_desc':
      return Enum$SortOption.title_desc;
    default:
      return Enum$SortOption.$unknown;
  }
}

enum Enum$__TypeKind {
  SCALAR,
  OBJECT,
  INTERFACE,
  UNION,
  ENUM,
  INPUT_OBJECT,
  LIST,
  NON_NULL,
  $unknown;

  factory Enum$__TypeKind.fromJson(String value) =>
      fromJson$Enum$__TypeKind(value);

  String toJson() => toJson$Enum$__TypeKind(this);
}

String toJson$Enum$__TypeKind(Enum$__TypeKind e) {
  switch (e) {
    case Enum$__TypeKind.SCALAR:
      return r'SCALAR';
    case Enum$__TypeKind.OBJECT:
      return r'OBJECT';
    case Enum$__TypeKind.INTERFACE:
      return r'INTERFACE';
    case Enum$__TypeKind.UNION:
      return r'UNION';
    case Enum$__TypeKind.ENUM:
      return r'ENUM';
    case Enum$__TypeKind.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__TypeKind.LIST:
      return r'LIST';
    case Enum$__TypeKind.NON_NULL:
      return r'NON_NULL';
    case Enum$__TypeKind.$unknown:
      return r'$unknown';
  }
}

Enum$__TypeKind fromJson$Enum$__TypeKind(String value) {
  switch (value) {
    case r'SCALAR':
      return Enum$__TypeKind.SCALAR;
    case r'OBJECT':
      return Enum$__TypeKind.OBJECT;
    case r'INTERFACE':
      return Enum$__TypeKind.INTERFACE;
    case r'UNION':
      return Enum$__TypeKind.UNION;
    case r'ENUM':
      return Enum$__TypeKind.ENUM;
    case r'INPUT_OBJECT':
      return Enum$__TypeKind.INPUT_OBJECT;
    case r'LIST':
      return Enum$__TypeKind.LIST;
    case r'NON_NULL':
      return Enum$__TypeKind.NON_NULL;
    default:
      return Enum$__TypeKind.$unknown;
  }
}

enum Enum$__DirectiveLocation {
  QUERY,
  MUTATION,
  SUBSCRIPTION,
  FIELD,
  FRAGMENT_DEFINITION,
  FRAGMENT_SPREAD,
  INLINE_FRAGMENT,
  VARIABLE_DEFINITION,
  SCHEMA,
  SCALAR,
  OBJECT,
  FIELD_DEFINITION,
  ARGUMENT_DEFINITION,
  INTERFACE,
  UNION,
  ENUM,
  ENUM_VALUE,
  INPUT_OBJECT,
  INPUT_FIELD_DEFINITION,
  $unknown;

  factory Enum$__DirectiveLocation.fromJson(String value) =>
      fromJson$Enum$__DirectiveLocation(value);

  String toJson() => toJson$Enum$__DirectiveLocation(this);
}

String toJson$Enum$__DirectiveLocation(Enum$__DirectiveLocation e) {
  switch (e) {
    case Enum$__DirectiveLocation.QUERY:
      return r'QUERY';
    case Enum$__DirectiveLocation.MUTATION:
      return r'MUTATION';
    case Enum$__DirectiveLocation.SUBSCRIPTION:
      return r'SUBSCRIPTION';
    case Enum$__DirectiveLocation.FIELD:
      return r'FIELD';
    case Enum$__DirectiveLocation.FRAGMENT_DEFINITION:
      return r'FRAGMENT_DEFINITION';
    case Enum$__DirectiveLocation.FRAGMENT_SPREAD:
      return r'FRAGMENT_SPREAD';
    case Enum$__DirectiveLocation.INLINE_FRAGMENT:
      return r'INLINE_FRAGMENT';
    case Enum$__DirectiveLocation.VARIABLE_DEFINITION:
      return r'VARIABLE_DEFINITION';
    case Enum$__DirectiveLocation.SCHEMA:
      return r'SCHEMA';
    case Enum$__DirectiveLocation.SCALAR:
      return r'SCALAR';
    case Enum$__DirectiveLocation.OBJECT:
      return r'OBJECT';
    case Enum$__DirectiveLocation.FIELD_DEFINITION:
      return r'FIELD_DEFINITION';
    case Enum$__DirectiveLocation.ARGUMENT_DEFINITION:
      return r'ARGUMENT_DEFINITION';
    case Enum$__DirectiveLocation.INTERFACE:
      return r'INTERFACE';
    case Enum$__DirectiveLocation.UNION:
      return r'UNION';
    case Enum$__DirectiveLocation.ENUM:
      return r'ENUM';
    case Enum$__DirectiveLocation.ENUM_VALUE:
      return r'ENUM_VALUE';
    case Enum$__DirectiveLocation.INPUT_OBJECT:
      return r'INPUT_OBJECT';
    case Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION:
      return r'INPUT_FIELD_DEFINITION';
    case Enum$__DirectiveLocation.$unknown:
      return r'$unknown';
  }
}

Enum$__DirectiveLocation fromJson$Enum$__DirectiveLocation(String value) {
  switch (value) {
    case r'QUERY':
      return Enum$__DirectiveLocation.QUERY;
    case r'MUTATION':
      return Enum$__DirectiveLocation.MUTATION;
    case r'SUBSCRIPTION':
      return Enum$__DirectiveLocation.SUBSCRIPTION;
    case r'FIELD':
      return Enum$__DirectiveLocation.FIELD;
    case r'FRAGMENT_DEFINITION':
      return Enum$__DirectiveLocation.FRAGMENT_DEFINITION;
    case r'FRAGMENT_SPREAD':
      return Enum$__DirectiveLocation.FRAGMENT_SPREAD;
    case r'INLINE_FRAGMENT':
      return Enum$__DirectiveLocation.INLINE_FRAGMENT;
    case r'VARIABLE_DEFINITION':
      return Enum$__DirectiveLocation.VARIABLE_DEFINITION;
    case r'SCHEMA':
      return Enum$__DirectiveLocation.SCHEMA;
    case r'SCALAR':
      return Enum$__DirectiveLocation.SCALAR;
    case r'OBJECT':
      return Enum$__DirectiveLocation.OBJECT;
    case r'FIELD_DEFINITION':
      return Enum$__DirectiveLocation.FIELD_DEFINITION;
    case r'ARGUMENT_DEFINITION':
      return Enum$__DirectiveLocation.ARGUMENT_DEFINITION;
    case r'INTERFACE':
      return Enum$__DirectiveLocation.INTERFACE;
    case r'UNION':
      return Enum$__DirectiveLocation.UNION;
    case r'ENUM':
      return Enum$__DirectiveLocation.ENUM;
    case r'ENUM_VALUE':
      return Enum$__DirectiveLocation.ENUM_VALUE;
    case r'INPUT_OBJECT':
      return Enum$__DirectiveLocation.INPUT_OBJECT;
    case r'INPUT_FIELD_DEFINITION':
      return Enum$__DirectiveLocation.INPUT_FIELD_DEFINITION;
    default:
      return Enum$__DirectiveLocation.$unknown;
  }
}

const possibleTypesMap = <String, Set<String>>{};
