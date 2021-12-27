//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:nplone_api/src/date_serializer.dart';
import 'package:nplone_api/src/model/date.dart';

import 'package:nplone_api/src/model/account.dart';
import 'package:nplone_api/src/model/account_balance.dart';
import 'package:nplone_api/src/model/account_connection_initiation_dto.dart';
import 'package:nplone_api/src/model/account_identifiers.dart';
import 'package:nplone_api/src/model/comment_dto.dart';
import 'package:nplone_api/src/model/comment_list_dto.dart';
import 'package:nplone_api/src/model/comment_post_dto.dart';
import 'package:nplone_api/src/model/file_dto.dart';
import 'package:nplone_api/src/model/file_list_dto.dart';
import 'package:nplone_api/src/model/google_token.dart';
import 'package:nplone_api/src/model/inline_object.dart';
import 'package:nplone_api/src/model/inline_object1.dart';
import 'package:nplone_api/src/model/inline_object2.dart';
import 'package:nplone_api/src/model/inline_object3.dart';
import 'package:nplone_api/src/model/inline_object4.dart';
import 'package:nplone_api/src/model/inline_object5.dart';
import 'package:nplone_api/src/model/merchant.dart';
import 'package:nplone_api/src/model/post_details_dto.dart';
import 'package:nplone_api/src/model/post_edit_dto.dart';
import 'package:nplone_api/src/model/post_item_dto.dart';
import 'package:nplone_api/src/model/post_list_dto.dart';
import 'package:nplone_api/src/model/provider.dart';
import 'package:nplone_api/src/model/space.dart';
import 'package:nplone_api/src/model/space_banking_info.dart';
import 'package:nplone_api/src/model/space_create.dart';
import 'package:nplone_api/src/model/space_edit.dart';
import 'package:nplone_api/src/model/space_item.dart';
import 'package:nplone_api/src/model/space_list.dart';
import 'package:nplone_api/src/model/token_info.dart';
import 'package:nplone_api/src/model/transaction_account_details.dart';
import 'package:nplone_api/src/model/transaction_details_dto.dart';
import 'package:nplone_api/src/model/transaction_edit_dto.dart';
import 'package:nplone_api/src/model/transaction_item_dto.dart';
import 'package:nplone_api/src/model/transaction_list_dto.dart';
import 'package:nplone_api/src/model/transaction_view_configuration.dart';
import 'package:nplone_api/src/model/user_info.dart';
import 'package:nplone_api/src/model/user_login.dart';
import 'package:nplone_api/src/model/user_register.dart';
import 'package:nplone_api/src/model/user_summary_dto.dart';

part 'serializers.g.dart';

@SerializersFor([
  Account,
  AccountBalance,
  AccountConnectionInitiationDto,
  AccountIdentifiers,
  CommentDto,
  CommentListDto,
  CommentPostDto,
  FileDto,
  FileListDto,
  GoogleToken,
  InlineObject,
  InlineObject1,
  InlineObject2,
  InlineObject3,
  InlineObject4,
  InlineObject5,
  Merchant,
  PostDetailsDto,
  PostEditDto,
  PostItemDto,
  PostListDto,
  Provider,
  Space,
  SpaceBankingInfo,
  SpaceCreate,
  SpaceEdit,
  SpaceItem,
  SpaceList,
  TokenInfo,
  TransactionAccountDetails,
  TransactionDetailsDto,
  TransactionEditDto,
  TransactionItemDto,
  TransactionListDto,
  TransactionViewConfiguration,
  UserInfo,
  UserLogin,
  UserRegister,
  UserSummaryDto,
])
Serializers serializers = (_$serializers.toBuilder()
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Account)]),
        () => ListBuilder<Account>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(String)]),
        () => ListBuilder<String>(),
      )
      ..addBuilderFactory(
        const FullType(BuiltList, [FullType(Provider)]),
        () => ListBuilder<Provider>(),
      )
      ..add(const DateSerializer())
      ..add(Iso8601DateTimeSerializer()))
    .build();

Serializers standardSerializers =
    (serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
