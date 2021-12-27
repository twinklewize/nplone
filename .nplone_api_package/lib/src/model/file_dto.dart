//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_dto.g.dart';

/// Информация о файле
///
/// Properties:
/// * [id] - ID файла
/// * [filename] - Имя файла
/// * [size] - Размер файла в байтах
/// * [link] - Ссылка на скачивание файла
abstract class FileDto implements Built<FileDto, FileDtoBuilder> {
    /// ID файла
    @BuiltValueField(wireName: r'id')
    String get id;

    /// Имя файла
    @BuiltValueField(wireName: r'filename')
    String get filename;

    /// Размер файла в байтах
    @BuiltValueField(wireName: r'size')
    int get size;

    /// Ссылка на скачивание файла
    @BuiltValueField(wireName: r'link')
    String get link;

    FileDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FileDtoBuilder b) => b;

    factory FileDto([void updates(FileDtoBuilder b)]) = _$FileDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<FileDto> get serializer => _$FileDtoSerializer();
}

class _$FileDtoSerializer implements StructuredSerializer<FileDto> {
    @override
    final Iterable<Type> types = const [FileDto, _$FileDto];

    @override
    final String wireName = r'FileDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, FileDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'id')
            ..add(serializers.serialize(object.id,
                specifiedType: const FullType(String)));
        result
            ..add(r'filename')
            ..add(serializers.serialize(object.filename,
                specifiedType: const FullType(String)));
        result
            ..add(r'size')
            ..add(serializers.serialize(object.size,
                specifiedType: const FullType(int)));
        result
            ..add(r'link')
            ..add(serializers.serialize(object.link,
                specifiedType: const FullType(String)));
        return result;
    }

    @override
    FileDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FileDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'id':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.id = valueDes;
                    break;
                case r'filename':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.filename = valueDes;
                    break;
                case r'size':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(int)) as int;
                    result.size = valueDes;
                    break;
                case r'link':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(String)) as String;
                    result.link = valueDes;
                    break;
            }
        }
        return result.build();
    }
}

