//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

library openapi.api;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:intl/intl.dart';
import 'package:meta/meta.dart';

part 'api_client.dart';
part 'api_helper.dart';
part 'api_exception.dart';
part 'auth/authentication.dart';
part 'auth/api_key_auth.dart';
part 'auth/oauth.dart';
part 'auth/http_basic_auth.dart';
part 'auth/http_bearer_auth.dart';

part 'api/account_api.dart';
part 'api/account_redirect_api.dart';
part 'api/auth_api.dart';
part 'api/post_api.dart';
part 'api/provider_api.dart';
part 'api/space_api.dart';
part 'api/static_api.dart';
part 'api/transaction_api.dart';
part 'api/user_api.dart';

part 'model/account.dart';
part 'model/account_balance.dart';
part 'model/account_connection_initiation_dto.dart';
part 'model/account_identifiers.dart';
part 'model/comment_dto.dart';
part 'model/comment_list_dto.dart';
part 'model/comment_post_dto.dart';
part 'model/file_dto.dart';
part 'model/file_list_dto.dart';
part 'model/google_token.dart';
part 'model/inline_object.dart';
part 'model/inline_object1.dart';
part 'model/inline_object2.dart';
part 'model/inline_object3.dart';
part 'model/inline_object4.dart';
part 'model/inline_object5.dart';
part 'model/merchant.dart';
part 'model/post_details_dto.dart';
part 'model/post_edit_dto.dart';
part 'model/post_item_dto.dart';
part 'model/post_list_dto.dart';
part 'model/provider.dart';
part 'model/space.dart';
part 'model/space_banking_info.dart';
part 'model/space_create.dart';
part 'model/space_edit.dart';
part 'model/space_item.dart';
part 'model/space_list.dart';
part 'model/token_info.dart';
part 'model/transaction_account_details.dart';
part 'model/transaction_details_dto.dart';
part 'model/transaction_edit_dto.dart';
part 'model/transaction_item_dto.dart';
part 'model/transaction_list_dto.dart';
part 'model/transaction_view_configuration.dart';
part 'model/user_info.dart';
part 'model/user_login.dart';
part 'model/user_register.dart';
part 'model/user_summary_dto.dart';


const _delimiters = {'csv': ',', 'ssv': ' ', 'tsv': '\t', 'pipes': '|'};
const _dateEpochMarker = 'epoch';
final _dateFormatter = DateFormat('yyyy-MM-dd');
final _regList = RegExp(r'^List<(.*)>$');
final _regSet = RegExp(r'^Set<(.*)>$');
final _regMap = RegExp(r'^Map<String,(.*)>$');

ApiClient defaultApiClient = ApiClient();
