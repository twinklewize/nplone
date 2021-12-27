//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/file_dto.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_list_dto.g.dart';

/// Список файлов
///
/// Properties:
/// * [files] - Список файлов
abstract class FileListDto implements Built<FileListDto, FileListDtoBuilder> {
    /// Список файлов
    @BuiltValueField(wireName: r'files')
    BuiltList<FileDto> get files;

    FileListDto._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(FileListDtoBuilder b) => b;

    factory FileListDto([void updates(FileListDtoBuilder b)]) = _$FileListDto;

    @BuiltValueSerializer(custom: true)
    static Serializer<FileListDto> get serializer => _$FileListDtoSerializer();
}

class _$FileListDtoSerializer implements StructuredSerializer<FileListDto> {
    @override
    final Iterable<Type> types = const [FileListDto, _$FileListDto];

    @override
    final String wireName = r'FileListDto';

    @override
    Iterable<Object?> serialize(Serializers serializers, FileListDto object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        result
            ..add(r'files')
            ..add(serializers.serialize(object.files,
                specifiedType: const FullType(BuiltList, [FullType(FileDto)])));
        return result;
    }

    @override
    FileListDto deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = FileListDtoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'files':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(FileDto)])) as BuiltList<FileDto>;
                    result.files.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

