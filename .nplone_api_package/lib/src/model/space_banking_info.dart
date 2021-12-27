//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:nplone_api/src/model/account.dart';
import 'package:nplone_api/src/model/account_balance.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'space_banking_info.g.dart';

/// Информация о банковских данных пространства
///
/// Properties:
/// * [total] 
/// * [primaryAccount] 
/// * [linkedAccounts] 
abstract class SpaceBankingInfo implements Built<SpaceBankingInfo, SpaceBankingInfoBuilder> {
    @BuiltValueField(wireName: r'total')
    AccountBalance? get total;

    @BuiltValueField(wireName: r'primaryAccount')
    Account? get primaryAccount;

    @BuiltValueField(wireName: r'linkedAccounts')
    BuiltList<Account>? get linkedAccounts;

    SpaceBankingInfo._();

    @BuiltValueHook(initializeBuilder: true)
    static void _defaults(SpaceBankingInfoBuilder b) => b;

    factory SpaceBankingInfo([void updates(SpaceBankingInfoBuilder b)]) = _$SpaceBankingInfo;

    @BuiltValueSerializer(custom: true)
    static Serializer<SpaceBankingInfo> get serializer => _$SpaceBankingInfoSerializer();
}

class _$SpaceBankingInfoSerializer implements StructuredSerializer<SpaceBankingInfo> {
    @override
    final Iterable<Type> types = const [SpaceBankingInfo, _$SpaceBankingInfo];

    @override
    final String wireName = r'SpaceBankingInfo';

    @override
    Iterable<Object?> serialize(Serializers serializers, SpaceBankingInfo object,
        {FullType specifiedType = FullType.unspecified}) {
        final result = <Object?>[];
        if (object.total != null) {
            result
                ..add(r'total')
                ..add(serializers.serialize(object.total,
                    specifiedType: const FullType(AccountBalance)));
        }
        if (object.primaryAccount != null) {
            result
                ..add(r'primaryAccount')
                ..add(serializers.serialize(object.primaryAccount,
                    specifiedType: const FullType(Account)));
        }
        if (object.linkedAccounts != null) {
            result
                ..add(r'linkedAccounts')
                ..add(serializers.serialize(object.linkedAccounts,
                    specifiedType: const FullType(BuiltList, [FullType(Account)])));
        }
        return result;
    }

    @override
    SpaceBankingInfo deserialize(Serializers serializers, Iterable<Object?> serialized,
        {FullType specifiedType = FullType.unspecified}) {
        final result = SpaceBankingInfoBuilder();

        final iterator = serialized.iterator;
        while (iterator.moveNext()) {
            final key = iterator.current as String;
            iterator.moveNext();
            final Object? value = iterator.current;
            
            switch (key) {
                case r'total':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(AccountBalance)) as AccountBalance;
                    result.total.replace(valueDes);
                    break;
                case r'primaryAccount':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(Account)) as Account;
                    result.primaryAccount.replace(valueDes);
                    break;
                case r'linkedAccounts':
                    final valueDes = serializers.deserialize(value,
                        specifiedType: const FullType(BuiltList, [FullType(Account)])) as BuiltList<Account>;
                    result.linkedAccounts.replace(valueDes);
                    break;
            }
        }
        return result.build();
    }
}

