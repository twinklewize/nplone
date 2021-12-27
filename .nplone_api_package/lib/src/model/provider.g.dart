// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Provider extends Provider {
  @override
  final String currency;
  @override
  final String? displayDescription;
  @override
  final String? displayName;
  @override
  final String financialInstitutionId;
  @override
  final String financialInstitutionName;
  @override
  final String groupDisplayName;
  @override
  final String loginHeaderColour;
  @override
  final String market;
  @override
  final String uid;
  @override
  final bool popular;
  @override
  final String bannerImage;
  @override
  final String iconImage;

  factory _$Provider([void Function(ProviderBuilder)? updates]) =>
      (new ProviderBuilder()..update(updates)).build();

  _$Provider._(
      {required this.currency,
      this.displayDescription,
      this.displayName,
      required this.financialInstitutionId,
      required this.financialInstitutionName,
      required this.groupDisplayName,
      required this.loginHeaderColour,
      required this.market,
      required this.uid,
      required this.popular,
      required this.bannerImage,
      required this.iconImage})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(currency, 'Provider', 'currency');
    BuiltValueNullFieldError.checkNotNull(
        financialInstitutionId, 'Provider', 'financialInstitutionId');
    BuiltValueNullFieldError.checkNotNull(
        financialInstitutionName, 'Provider', 'financialInstitutionName');
    BuiltValueNullFieldError.checkNotNull(
        groupDisplayName, 'Provider', 'groupDisplayName');
    BuiltValueNullFieldError.checkNotNull(
        loginHeaderColour, 'Provider', 'loginHeaderColour');
    BuiltValueNullFieldError.checkNotNull(market, 'Provider', 'market');
    BuiltValueNullFieldError.checkNotNull(uid, 'Provider', 'uid');
    BuiltValueNullFieldError.checkNotNull(popular, 'Provider', 'popular');
    BuiltValueNullFieldError.checkNotNull(
        bannerImage, 'Provider', 'bannerImage');
    BuiltValueNullFieldError.checkNotNull(iconImage, 'Provider', 'iconImage');
  }

  @override
  Provider rebuild(void Function(ProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProviderBuilder toBuilder() => new ProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Provider &&
        currency == other.currency &&
        displayDescription == other.displayDescription &&
        displayName == other.displayName &&
        financialInstitutionId == other.financialInstitutionId &&
        financialInstitutionName == other.financialInstitutionName &&
        groupDisplayName == other.groupDisplayName &&
        loginHeaderColour == other.loginHeaderColour &&
        market == other.market &&
        uid == other.uid &&
        popular == other.popular &&
        bannerImage == other.bannerImage &&
        iconImage == other.iconImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, currency.hashCode),
                                                displayDescription.hashCode),
                                            displayName.hashCode),
                                        financialInstitutionId.hashCode),
                                    financialInstitutionName.hashCode),
                                groupDisplayName.hashCode),
                            loginHeaderColour.hashCode),
                        market.hashCode),
                    uid.hashCode),
                popular.hashCode),
            bannerImage.hashCode),
        iconImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Provider')
          ..add('currency', currency)
          ..add('displayDescription', displayDescription)
          ..add('displayName', displayName)
          ..add('financialInstitutionId', financialInstitutionId)
          ..add('financialInstitutionName', financialInstitutionName)
          ..add('groupDisplayName', groupDisplayName)
          ..add('loginHeaderColour', loginHeaderColour)
          ..add('market', market)
          ..add('uid', uid)
          ..add('popular', popular)
          ..add('bannerImage', bannerImage)
          ..add('iconImage', iconImage))
        .toString();
  }
}

class ProviderBuilder implements Builder<Provider, ProviderBuilder> {
  _$Provider? _$v;

  String? _currency;
  String? get currency => _$this._currency;
  set currency(String? currency) => _$this._currency = currency;

  String? _displayDescription;
  String? get displayDescription => _$this._displayDescription;
  set displayDescription(String? displayDescription) =>
      _$this._displayDescription = displayDescription;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _financialInstitutionId;
  String? get financialInstitutionId => _$this._financialInstitutionId;
  set financialInstitutionId(String? financialInstitutionId) =>
      _$this._financialInstitutionId = financialInstitutionId;

  String? _financialInstitutionName;
  String? get financialInstitutionName => _$this._financialInstitutionName;
  set financialInstitutionName(String? financialInstitutionName) =>
      _$this._financialInstitutionName = financialInstitutionName;

  String? _groupDisplayName;
  String? get groupDisplayName => _$this._groupDisplayName;
  set groupDisplayName(String? groupDisplayName) =>
      _$this._groupDisplayName = groupDisplayName;

  String? _loginHeaderColour;
  String? get loginHeaderColour => _$this._loginHeaderColour;
  set loginHeaderColour(String? loginHeaderColour) =>
      _$this._loginHeaderColour = loginHeaderColour;

  String? _market;
  String? get market => _$this._market;
  set market(String? market) => _$this._market = market;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  bool? _popular;
  bool? get popular => _$this._popular;
  set popular(bool? popular) => _$this._popular = popular;

  String? _bannerImage;
  String? get bannerImage => _$this._bannerImage;
  set bannerImage(String? bannerImage) => _$this._bannerImage = bannerImage;

  String? _iconImage;
  String? get iconImage => _$this._iconImage;
  set iconImage(String? iconImage) => _$this._iconImage = iconImage;

  ProviderBuilder() {
    Provider._defaults(this);
  }

  ProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _currency = $v.currency;
      _displayDescription = $v.displayDescription;
      _displayName = $v.displayName;
      _financialInstitutionId = $v.financialInstitutionId;
      _financialInstitutionName = $v.financialInstitutionName;
      _groupDisplayName = $v.groupDisplayName;
      _loginHeaderColour = $v.loginHeaderColour;
      _market = $v.market;
      _uid = $v.uid;
      _popular = $v.popular;
      _bannerImage = $v.bannerImage;
      _iconImage = $v.iconImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Provider other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Provider;
  }

  @override
  void update(void Function(ProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Provider build() {
    final _$result = _$v ??
        new _$Provider._(
            currency: BuiltValueNullFieldError.checkNotNull(
                currency, 'Provider', 'currency'),
            displayDescription: displayDescription,
            displayName: displayName,
            financialInstitutionId: BuiltValueNullFieldError.checkNotNull(
                financialInstitutionId, 'Provider', 'financialInstitutionId'),
            financialInstitutionName: BuiltValueNullFieldError.checkNotNull(
                financialInstitutionName, 'Provider', 'financialInstitutionName'),
            groupDisplayName: BuiltValueNullFieldError.checkNotNull(
                groupDisplayName, 'Provider', 'groupDisplayName'),
            loginHeaderColour: BuiltValueNullFieldError.checkNotNull(
                loginHeaderColour, 'Provider', 'loginHeaderColour'),
            market: BuiltValueNullFieldError.checkNotNull(
                market, 'Provider', 'market'),
            uid: BuiltValueNullFieldError.checkNotNull(uid, 'Provider', 'uid'),
            popular: BuiltValueNullFieldError.checkNotNull(
                popular, 'Provider', 'popular'),
            bannerImage:
                BuiltValueNullFieldError.checkNotNull(bannerImage, 'Provider', 'bannerImage'),
            iconImage: BuiltValueNullFieldError.checkNotNull(iconImage, 'Provider', 'iconImage'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
