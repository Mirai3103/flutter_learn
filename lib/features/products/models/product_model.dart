import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_model.freezed.dart';
part 'product_model.g.dart';

@freezed
sealed class ProductModel with _$ProductModel {
  const factory ProductModel({
    required String id,
    required String title,
    required double price,
    String? description,
    String? category,
    required String image,
  }) = _ProductModel;

  factory ProductModel.fromJson(Map<String, dynamic> json) =>
      _$ProductModelFromJson(json);
}
