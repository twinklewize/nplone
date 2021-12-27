//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:nplone_api/src/model/transaction_item_dto.dart';
import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/user_summary_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'post_details_dto.g.dart';

/// PostDetailsDto
///
/// Properties:
/// * [id] 
/// * [postedWhen] 
/// * [title] 
/// * [description] 
/// * [icon] 
/// * [type] 
/// * [postedBy] 
/// * [transactions] 
abstract class PostDetailsDto implements Built<PostDetailsDto, PostDetailsDtoBuilder> {
    @BuiltValueField(wireName: r'id')
    int? get id;

    @BuiltValueField(wireName: r'postedWhen')
    DateTime? get postedWhen;

    @BuiltValueField(wireName: r'title')
    String? get title;

    @BuiltValueField(wireName: r'description')
    String? get description;

    @BuiltValueField(wireName: r'icon')
    String? get icon;

    @BuiltValueField(wireName: r'type')
    PostDetailsDtoTypeEnum? get type;
    // enum typeEnum {  NEWS,  };

    @BuiltValueField(wireName: r'postedBy')
    UserSummaryDto? get postedBy;

    @BuiltValueField(wireName: r'transactions')
    BuiltList<TransactionItemDto>? get transactions;

    PostDetailsDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(PostDetailsDtoBuilder b) => b;

    factory PostDetailsDto([void updates(PostDetailsDtoBuilder b)]) = _$PostDetailsDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<PostDetailsDto> get serializer => _$PostDetailsDtoSerializer();
}

class _$PostDetailsDtoSerializer implements StructuredSerializer<PostDetailsDto> {
    @override
    final Iterable<Type> types = const [PostDetailsDto, _$PostDetailsDto];

    @override
    final String wireName = r'PostDetailsDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, PostDetailsDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.id != null) {
            result
                ..add(r'id')
                ..add(serializers.serialize(object.id,
                    specifiedType: const FullType(int)));
        }
        if (object.postedWhen != null) {
            result
                ..add(r'postedWhen')
                ..add(serializers.serialize(object.postedWhen,
                    specifiedType: const FullType(DateTime)));
        }
        if (object.title != null) {
            result
                ..add(r'title')
                ..add(serializers.serialize(object.title,
                    specifiedType: const FullType(String)));
        }
        if (object.description != null) {
            result
                ..add(r'description')
                ..add(serializers.serialize(object.description,
                    specifiedType: const FullType(String)));
        }
        if (object.icon != null) {
            result
                ..add(r'icon')
                ..add(serializers.serialize(object.icon,
                    specifiedType: const FullType(String)));
        }
        if (object.type != null) {
            result
                ..add(r'type')
                ..add(serializers.serialize(object.type,
                    specifiedType: const FullType(PostDetailsDtoTypeEnum)));
        }
        if (object.postedBy != null) {
            result
                ..add(r'postedBy')
                ..add(serializers.serialize(object.postedBy,
                    specifiedType: const FullType(UserSummaryDto)));
        }
        if (object.transactions != null) {
            result
                ..add(r'transactions')
                ..add(serializers.serialize(object.transactions,
                    specifiedType: const FullType(BuiltList, [FullType(TransactionItemDto)])));
        }
        return result;
    }

    @override
    PostDetailsDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = PostDetailsDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.id = valueDes;
                    break;
                case r'postedWhen':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(DateTime)) as DateTime;
                    result.postedWhen = valueDes;
                    break;
                case r'title':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.title = valueDes;
                    break;
                case r'description':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.description = valueDes;
                    break;
                case r'icon':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.icon = valueDes;
                    break;
                case r'type':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(PostDetailsDtoTypeEnum)) as PostDetailsDtoTypeEnum;
                    result.type = valueDes;
                    break;
                case r'postedBy':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(UserSummaryDto)) as UserSummaryDto;
                    result.postedBy.replace(valueDes);
                    break;
                case r'transactions':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(TransactionItemDto)])) as BuiltList<TransactionItemDto>;
                    result.transactions.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

class PostDetailsDtoTypeEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'NEWS')
  static const PostDetailsDtoTypeEnum NEWS = _$postDetailsDtoTypeEnum_NEWS;

  static Serializer<PostDetailsDtoTypeEnum> get serializer => _$postDetailsDtoTypeEnumSerializer;

  const PostDetailsDtoTypeEnum._(String name): super(name);

  static BuiltSet<PostDetailsDtoTypeEnum> get values => _$postDetailsDtoTypeEnumValues;
  static PostDetailsDtoTypeEnum valueOf(String name) => _$postDetailsDtoTypeEnumValueOf(name);
}

