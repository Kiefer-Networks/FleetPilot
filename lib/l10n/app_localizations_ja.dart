// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'デバイス';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'ユーザー';

  @override
  String get navSettings => '設定';

  @override
  String get welcomeTitle => 'FleetPilotへようこそ';

  @override
  String get welcomeSubtitle => 'どこからでもAppleデバイスフリートを管理できます。';

  @override
  String get addProfile => 'プロファイルを追加';

  @override
  String get editProfile => 'プロファイルを編集';

  @override
  String get displayName => '表示名';

  @override
  String get displayNameHint => '例: Acme Corp — Prod';

  @override
  String get region => 'リージョン';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'サブドメイン';

  @override
  String get subdomainHint => 'your-tenant';

  @override
  String get apiToken => 'APIトークン';

  @override
  String get apiTokenHint => 'APIトークンをここに貼り付け';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => '検証して保存';

  @override
  String get verifying => '接続を検証中...';

  @override
  String get connectionSuccess => '接続の検証に成功しました！';

  @override
  String get errorInvalidToken => '無効なAPIトークンです。Webコンソールでトークンを確認してください。';

  @override
  String get errorInsufficientPermissions =>
      '権限が不足しています。トークンにデバイスの読み取りアクセス権があることを確認してください。';

  @override
  String get errorNetworkUnreachable =>
      'APIに到達できません。インターネット接続とサブドメインを確認してください。';

  @override
  String get errorNotFound => 'リクエストされたリソースが見つかりませんでした。';

  @override
  String get errorValidation => 'リクエストに無効なデータが含まれています。入力を確認してください。';

  @override
  String get errorRateLimit => 'リクエストが多すぎます。しばらく待ってから再試行してください。';

  @override
  String get errorServer => 'サーバーでエラーが発生しました。後ほど再試行してください。';

  @override
  String get errorUnexpected => '予期しないエラーが発生しました。再試行してください。';

  @override
  String get retry => '再試行';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get save => '保存';

  @override
  String get search => '検索';

  @override
  String get searchDevices => 'デバイスを検索...';

  @override
  String get filterAll => 'すべて';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'すべてのブループリント';

  @override
  String loadingDevices(int count) {
    return '$count台のデバイスを読み込み中...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count台のデバイス',
      zero: 'デバイスなし',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'デバイスが見つかりません';

  @override
  String get noDevicesFoundMessage => '検索条件またはフィルターを調整してください。';

  @override
  String lastCheckIn(String time) {
    return '最終チェックイン: $time';
  }

  @override
  String get compliancePass => '合格';

  @override
  String get complianceFail => '不合格';

  @override
  String get compliancePending => '保留中';

  @override
  String get deviceDetails => 'デバイス詳細';

  @override
  String get serialNumber => 'シリアル番号';

  @override
  String get model => 'モデル';

  @override
  String get osVersion => 'OSバージョン';

  @override
  String get assetTag => '資産タグ';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => '登録日';

  @override
  String get assignedUser => '割り当てユーザー';

  @override
  String get actions => 'アクション';

  @override
  String get actionLock => 'ロック';

  @override
  String get actionRestart => '再起動';

  @override
  String get actionShutdown => 'シャットダウン';

  @override
  String get actionErase => '消去';

  @override
  String get actionBlankPush => 'Blank Pushを送信';

  @override
  String get actionReinstallAgent => 'エージェントを再インストール';

  @override
  String get actionUpdateInventory => 'インベントリを更新';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'リモートデスクトップを有効化';

  @override
  String get actionRemoteDesktopDisable => 'リモートデスクトップを無効化';

  @override
  String get actionLostMode => '紛失モードを有効化';

  @override
  String get destructiveActionTitle => '破壊的アクションの確認';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'この操作は元に戻せません。確認のため「$deviceName」と入力してください。';
  }

  @override
  String get destructiveActionHint => '確認のためデバイス名を入力';

  @override
  String get confirm => '確認';

  @override
  String get actionSuccess => 'アクションが正常に実行されました。';

  @override
  String get actionFailed => 'アクションに失敗しました。再試行してください。';

  @override
  String get biometricReason => 'FleetPilotの認証を行ってください';

  @override
  String get biometricReasonSecrets => '機密データを表示するために認証してください';

  @override
  String get biometricReasonDestructive => 'このアクションを実行するために認証してください';

  @override
  String get biometricFailed => '認証に失敗しました。再試行してください。';

  @override
  String get profiles => 'プロファイル';

  @override
  String activeProfile(String name) {
    return '有効: $name';
  }

  @override
  String get switchProfile => 'プロファイルを切り替え';

  @override
  String get deleteProfile => 'プロファイルを削除';

  @override
  String get deleteProfileConfirm => 'このプロファイルを本当に削除しますか？この操作は元に戻せません。';

  @override
  String get noProfiles => 'プロファイルが設定されていません';

  @override
  String get settings => '設定';

  @override
  String get about => '情報';

  @override
  String version(String version) {
    return 'バージョン $version';
  }

  @override
  String get validationRequired => 'この項目は必須です。';

  @override
  String get validationSubdomain => '英数字とハイフンのみ使用可能です。先頭や末尾のハイフンは使用できません。';

  @override
  String get validationToken => '無効なトークン形式です。20〜500文字で、英数字と一般的な区切り文字のみ使用可能です。';

  @override
  String pinLockedOut(int seconds) {
    return '試行回数が多すぎます。$seconds秒後に再試行してください。';
  }

  @override
  String get complianceStatus => 'コンプライアンスステータス';

  @override
  String get platform => 'プラットフォーム';

  @override
  String get deviceName => 'デバイス名';

  @override
  String get searchUsers => 'ユーザーを検索...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count人のユーザー',
      zero: 'ユーザーなし',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'ユーザーが見つかりません';

  @override
  String get noUsersFoundMessage => '検索条件またはフィルターを調整してください。';

  @override
  String get showArchived => 'アーカイブ済みを表示';

  @override
  String get archived => 'アーカイブ済み';

  @override
  String get email => 'メール';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のブループリント',
      zero: 'ブループリントなし',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'ブループリントが見つかりません';

  @override
  String get noBlueprintsFoundMessage => 'ブループリントはまだ設定されていません。';

  @override
  String get enrollmentActive => '登録有効';

  @override
  String get enrollmentInactive => '登録無効';

  @override
  String get tabOverview => '概要';

  @override
  String get tabApps => 'アプリ';

  @override
  String get tabStatus => 'ステータス';

  @override
  String get tabActivity => 'アクティビティ';

  @override
  String get tabCommands => 'コマンド';

  @override
  String get hardware => 'ハードウェア';

  @override
  String get security => 'セキュリティ';

  @override
  String get totalStorage => '合計ストレージ';

  @override
  String get availableStorage => '利用可能なストレージ';

  @override
  String get totalRam => '合計RAM';

  @override
  String get wifiMac => 'Wi-Fi MACアドレス';

  @override
  String get encryption => '暗号化';

  @override
  String get passcode => 'パスコード';

  @override
  String get noAppsFound => 'アプリが見つかりません';

  @override
  String get noActivityFound => 'アクティビティが見つかりません';

  @override
  String get noCommandsFound => 'コマンドが見つかりません';

  @override
  String get libraryItems => 'ライブラリアイテム';

  @override
  String get parameters => 'パラメータ';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OSビルド';

  @override
  String get cellular => 'モバイルデータ通信';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のアプリ',
      zero: 'アプリなし',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'ユーザー詳細';

  @override
  String get jobTitle => '役職';

  @override
  String get department => '部門';

  @override
  String get createdAt => '作成日';

  @override
  String get updatedAt => '更新日';

  @override
  String get assignedDevices => '割り当てデバイス';

  @override
  String get noAssignedDevices => 'このユーザーにデバイスは割り当てられていません。';

  @override
  String get userInfo => 'ユーザー情報';

  @override
  String get navMore => 'その他';

  @override
  String get tabSecrets => 'シークレット';

  @override
  String get filevaultKey => 'FileVault回復キー';

  @override
  String get unlockPin => 'ロック解除PIN';

  @override
  String get recoveryPassword => 'Recovery Lockパスワード';

  @override
  String get bypassCode => 'アクティベーションロックバイパスコード';

  @override
  String get noSecretsFound => 'このデバイスで利用可能なシークレットはありません。';

  @override
  String get secretCopied => 'シークレットをクリップボードにコピーしました';

  @override
  String get threats => '脅威';

  @override
  String get noThreatsFound => '脅威は検出されていません。';

  @override
  String get vulnerabilities => '脆弱性';

  @override
  String get noVulnerabilitiesFound => '脆弱性は検出されていません。';

  @override
  String get aboutApp => 'FleetPilotについて';

  @override
  String get aboutDescription =>
      'FleetPilotはAppleデバイスフリート向けのオープンソースMDM管理アプリです。';

  @override
  String get tapToCopy => 'タップしてコピー';

  @override
  String get devices => 'デバイス';

  @override
  String get severity => '深刻度';

  @override
  String get tabLocation => '位置情報';

  @override
  String get locationNotAvailable => 'このデバイスの位置情報は利用できません。';

  @override
  String get enableLostModeHint => '紛失モードを有効にすると、このデバイスの位置を特定できます。';

  @override
  String get lostModeEnabled => '紛失モード有効';

  @override
  String get noLibraryItemsFound => 'ライブラリアイテムが見つかりません。';

  @override
  String get licenses => 'ライセンス';

  @override
  String get lostModeMessage => '紛失モードメッセージ';

  @override
  String get lostModePhone => '電話番号';

  @override
  String get lostModeFootnote => 'デバイスに表示されるオプションのメッセージと電話番号';

  @override
  String get supervised => '監視対象';

  @override
  String get unsupervised => '非監視対象';

  @override
  String get filterSupervised => '監視対象';

  @override
  String get filterUnsupervised => '非監視対象';

  @override
  String get language => '言語';

  @override
  String get languageSystem => 'システムデフォルト';

  @override
  String get actionDisableLostMode => '紛失モードを無効化';

  @override
  String get actionClearPasscode => 'パスコードを消去';

  @override
  String get filterLostMode => '紛失モード';

  @override
  String get lostMode => '紛失モード';

  @override
  String get sectionManagement => '管理';

  @override
  String get sectionStatus => 'ステータス';

  @override
  String get statusMissing => '不明';

  @override
  String get statusRemoved => '削除済み';

  @override
  String get agent => 'エージェント';

  @override
  String get identifier => '識別子';

  @override
  String get processor => 'プロセッサ';

  @override
  String get hardwareUuid => 'ハードウェアUUID';

  @override
  String get devicePosture => 'デバイスポスチャ';

  @override
  String get unknownDevice => '不明なデバイス';

  @override
  String get securityAppLock => 'アプリロック';

  @override
  String get securityAppLockDescription =>
      '6桁のPINを設定してアプリを保護します。PIN設定後に生体認証を有効にできます。';

  @override
  String get securityAppLockActive => 'アプリロック有効';

  @override
  String get securityAppLockInactive => 'アプリロック未設定';

  @override
  String get securitySetPin => 'PINを設定';

  @override
  String get securityChangePin => 'PINを変更';

  @override
  String get securityRemovePin => 'PINを削除';

  @override
  String get securityCurrentPin => '現在のPIN';

  @override
  String get securityNewPin => '新しいPIN';

  @override
  String get securityConfirmPin => '確認のためPINを再入力してください。';

  @override
  String get securityPinLength => 'PINは6桁である必要があります。';

  @override
  String get securityPinMismatch => 'PINが一致しません。';

  @override
  String get securityPinWrong => 'PINが正しくありません。';

  @override
  String get securityPinSet => 'PINが設定されました。';

  @override
  String get securityPinChanged => 'PINが変更されました。';

  @override
  String get securityPinRemoved => 'PINとアプリロックが削除されました。';

  @override
  String get securityBiometric => '生体認証';

  @override
  String get securityBiometricDescription =>
      'PINの代わりに指紋またはFace IDでアプリのロックを解除します。';

  @override
  String get securityBiometricEnable => '生体認証によるロック解除';

  @override
  String get securityBiometricActive => '有効';

  @override
  String get securityBiometricInactive => '無効';

  @override
  String get securityBiometricUnavailable => 'このデバイスでは生体認証を利用できません。';

  @override
  String get securityNext => '次へ';

  @override
  String get actionRenewMdm => 'MDMプロファイルを更新';

  @override
  String get actionSetName => 'デバイス名を設定';

  @override
  String get actionSetNameHint => '新しいデバイス名を入力';

  @override
  String get actionDeleteUser => 'ユーザーを削除';

  @override
  String get actionDeleteUserName => 'ユーザー名';

  @override
  String get actionDeleteAllUsers => '全ユーザーを削除';

  @override
  String get actionForceDeletion => '強制削除';

  @override
  String get actionUnlockAccount => 'アカウントのロックを解除';

  @override
  String get actionPlayLostModeSound => '紛失モードの音を再生';

  @override
  String get actionUpdateLocation => '位置情報を更新';

  @override
  String get erasePin => '6桁のPIN';

  @override
  String get erasePinHint => 'モバイルデバイスでは必須';

  @override
  String get erasePreserveDataPlan => 'データプランを保持';

  @override
  String get eraseDisallowProximitySetup => '近接セットアップを禁止';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'ロックメッセージ';

  @override
  String get lockPhone => '電話番号';

  @override
  String get restartRebuildKernelCache => 'カーネルキャッシュを再構築';

  @override
  String get restartNotifyUser => 'ユーザーに通知';

  @override
  String get actionRemoteDesktop => 'リモートデスクトップ';

  @override
  String get tabNotes => 'メモ';

  @override
  String get noNotesFound => 'メモはまだありません';

  @override
  String get addNote => 'メモを追加';

  @override
  String get editNote => 'メモを編集';

  @override
  String get deleteNote => 'メモを削除';

  @override
  String get deleteNoteConfirm => 'このメモを本当に削除しますか？';

  @override
  String get noteContent => 'メモの内容';

  @override
  String get noteSaved => 'メモが保存されました。';

  @override
  String get noteDeleted => 'メモが削除されました。';

  @override
  String get editDevice => 'デバイスを編集';

  @override
  String get deviceUpdated => 'デバイスが更新されました。';

  @override
  String get deleteDevice => 'デバイスを削除';

  @override
  String get deleteDeviceConfirm => 'デバイスはMDMから完全に削除されます。この操作は元に戻せません。';

  @override
  String get deviceDeleted => 'デバイスが削除されました。';

  @override
  String get cancelLostMode => '紛失モードをキャンセル';

  @override
  String get cancelLostModeConfirm => '保留中の紛失モードリクエストをキャンセルしますか？';

  @override
  String get lostModeCancelled => '紛失モードがキャンセルされました。';

  @override
  String get tags => 'タグ';

  @override
  String get noTags => 'タグなし';

  @override
  String get addTag => 'タグを追加';

  @override
  String get tagName => 'タグ名';

  @override
  String get manageTags => 'タグを管理';

  @override
  String get auditLog => '監査ログ';

  @override
  String get noAuditEvents => '監査イベントが見つかりません';

  @override
  String get actionDailyCheckIn => 'デイリーチェックイン';

  @override
  String get licensing => 'ライセンス';

  @override
  String get deviceLimit => 'デバイス上限';

  @override
  String get devicesUsed => '使用中のデバイス';

  @override
  String get licenseType => 'ライセンスタイプ';

  @override
  String get appleDevices => 'Appleデバイス';

  @override
  String get deleteUser => 'ユーザーを削除';

  @override
  String get deleteUserConfirm => 'このユーザーを本当に削除しますか？この操作は元に戻せません。';

  @override
  String get userDeleted => 'ユーザーが削除されました。';

  @override
  String get createBlueprint => 'ブループリントを作成';

  @override
  String get editBlueprint => 'ブループリントを編集';

  @override
  String get deleteBlueprint => 'ブループリントを削除';

  @override
  String get deleteBlueprintConfirm =>
      'このブループリントを削除すると、割り当てられたすべてのデバイスの登録が解除されます。この操作は元に戻せません。';

  @override
  String get blueprintCreated => 'ブループリントが作成されました。';

  @override
  String get blueprintUpdated => 'ブループリントが更新されました。';

  @override
  String get blueprintDeleted => 'ブループリントが削除されました。';

  @override
  String get blueprintName => 'ブループリント名';

  @override
  String get blueprintDescription => '説明';

  @override
  String get enrollmentCode => '登録コード';

  @override
  String get assignLibraryItem => 'ライブラリアイテムを割り当て';

  @override
  String get removeLibraryItem => 'ライブラリアイテムを削除';

  @override
  String get libraryItemAssigned => 'ライブラリアイテムが割り当てられました。';

  @override
  String get libraryItemRemoved => 'ライブラリアイテムが削除されました。';

  @override
  String get lostModeDetails => '紛失モードの詳細';

  @override
  String get lostModeEnabledBy => '有効化者';

  @override
  String get lostModeEnabledAt => '有効化日時';

  @override
  String get searchBlueprints => 'ブループリントを検索...';

  @override
  String get searchVulnerabilities => '脆弱性を検索...';

  @override
  String get searchThreats => '脅威を検索...';

  @override
  String get searchAuditLog => '監査ログを検索...';

  @override
  String get filterCritical => '重大';

  @override
  String get filterHigh => '高';

  @override
  String get filterMedium => '中';

  @override
  String get filterLow => '低';

  @override
  String get filterClearAll => 'すべてクリア';

  @override
  String get filterTitle => 'フィルター';

  @override
  String get filterApply => '適用';

  @override
  String get filterPlatform => 'プラットフォーム';

  @override
  String get filterSupervision => '監視';

  @override
  String get filterStatus => 'ステータス';

  @override
  String get adeIntegrations => 'ADE連携';

  @override
  String get noAdeIntegrations => 'ADE連携が見つかりません。';

  @override
  String get adeDevices => 'ADEデバイス';

  @override
  String get noAdeDevices => 'ADEデバイスが見つかりません。';

  @override
  String get tokenExpiry => 'トークン有効期限';

  @override
  String get tokenValid => 'トークン有効';

  @override
  String get tokenExpired => 'トークン期限切れ';

  @override
  String get orgName => '組織';

  @override
  String get defaultBlueprint => 'デフォルトブループリント';

  @override
  String get renewToken => 'トークンを更新';

  @override
  String get publicKey => '公開鍵';

  @override
  String get vulnerabilityDetections => '脆弱性検出';

  @override
  String get noDetectionsFound => '検出はありません。';

  @override
  String get behavioralDetections => '行動検出';

  @override
  String get noBehavioralDetections => '行動検出は見つかりません。';

  @override
  String get searchBehavioralDetections => '検出を検索...';

  @override
  String get affectedDevices => '影響を受けるデバイス';

  @override
  String get noAffectedDevices =>
      '影響を受けるデバイスが見つかりません。以前影響を受けたデバイスは削除された可能性があります。';

  @override
  String get affectedSoftware => '影響を受けるソフトウェア';

  @override
  String get blueprintTemplates => 'ブループリントテンプレート';

  @override
  String get noTemplatesFound => 'テンプレートが見つかりません。';

  @override
  String get otaEnrollmentProfile => 'OTA登録プロファイル';

  @override
  String get libraryItemActivity => 'アクティビティ';

  @override
  String get libraryItemDeploymentStatus => 'デプロイステータス';

  @override
  String get noActivityFound2 => 'アクティビティが見つかりません。';

  @override
  String get noStatusFound => 'デプロイステータスが見つかりません。';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の検出',
      zero: '検出なし',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件の連携',
      zero: '連携なし',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => '脆弱性の詳細';

  @override
  String get description => '説明';

  @override
  String get firstDetected => '初回検出';

  @override
  String get lastDetected => '最終検出';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のソフトウェア',
      zero: 'ソフトウェアなし',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => '連携を編集';

  @override
  String get deleteIntegration => '連携を削除';

  @override
  String get deleteIntegrationConfirm => 'このADE連携を本当に削除しますか？この操作は元に戻せません。';

  @override
  String get integrationDeleted => '連携が削除されました。';

  @override
  String get integrationUpdated => '連携が更新されました。';

  @override
  String get defaultBlueprintId => 'デフォルトブループリントID';

  @override
  String get phone => '電話';

  @override
  String get downloadOtaProfile => '登録プロファイルをダウンロード';

  @override
  String get otaProfileCopied => '登録プロファイルをクリップボードにコピーしました。';

  @override
  String get noOtaProfile => '登録プロファイルは利用できません。';

  @override
  String get createTag => 'タグを作成';

  @override
  String get editTag => 'タグを編集';

  @override
  String get deleteTag => 'タグを削除';

  @override
  String get deleteTagConfirm => 'このタグを本当に削除しますか？';

  @override
  String get tagColor => '色';

  @override
  String get tagCreated => 'タグが作成されました。';

  @override
  String get tagUpdated => 'タグが更新されました。';

  @override
  String get tagDeleted => 'タグが削除されました。';

  @override
  String get noTagsFound => 'タグが見つかりません。';

  @override
  String get libraryItemDetail => 'ライブラリアイテム';

  @override
  String get viewActivity => 'アクティビティを表示';

  @override
  String get viewStatus => 'ステータスを表示';

  @override
  String get installations => 'インストール';

  @override
  String get createAdeIntegration => 'ADE連携を作成';

  @override
  String get adeCreateDescription =>
      'Apple Business Managerからサーバートークンファイル（.p7m）をアップロードして、新しいADE連携を作成します。';

  @override
  String get selectTokenFile => 'トークンファイルを選択';

  @override
  String tokenFileSelected(String name) {
    return 'トークンファイル: $name';
  }

  @override
  String get noTokenFileSelected => 'トークンファイルが選択されていません';

  @override
  String get integrationCreated => '連携が作成されました。';

  @override
  String get create => '作成';

  @override
  String get step1GetPublicKey => 'ステップ1: 公開鍵をダウンロード';

  @override
  String get step1Description =>
      '公開鍵をコピーしてApple Business Managerにアップロードしてください。';

  @override
  String get step2UploadToken => 'ステップ2: サーバートークンをアップロード';

  @override
  String get step2Description => 'Appleからダウンロードした.p7mトークンファイルを選択してください。';

  @override
  String get step3Configure => 'ステップ3: 設定';

  @override
  String get publicKeyCopied => '公開鍵をクリップボードにコピーしました。';

  @override
  String get renewTokenDescription =>
      '新しい.p7mトークンファイルをアップロードして、この連携のトークンを更新します。';

  @override
  String get tokenRenewed => 'トークンが更新されました。';

  @override
  String get aboutLinks => 'リンク';

  @override
  String get aboutWebsite => 'Webサイト';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'ソースコード';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'テクノロジー';

  @override
  String get aboutFramework => 'フレームワーク';

  @override
  String get aboutStateManagement => '状態管理';

  @override
  String get aboutArchitecture => 'アーキテクチャ';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'データクラス';

  @override
  String get aboutNavigationLabel => 'ナビゲーション';

  @override
  String get aboutOpenSourceLicenses => 'オープンソースライセンス';

  @override
  String get aboutShowHide => '表示/非表示を切り替え';

  @override
  String get editProfileTitle => '接続を編集';

  @override
  String get editProfileSubtitle => 'テナント接続設定を更新してください。';

  @override
  String get apiTokenHintEdit => '既存のトークンを保持するには空欄のままにしてください';

  @override
  String get profileUpdated => 'プロファイルが更新されました。';

  @override
  String profileSwitched(String name) {
    return '$nameに切り替えました。';
  }

  @override
  String get securityAutoLock => '自動ロック';

  @override
  String get securityAutoLockDescription => 'アプリがバックグラウンドに移行した後、自動的に認証を要求します。';

  @override
  String get timeoutImmediately => '即時';

  @override
  String get timeoutSeconds30 => '30秒後';

  @override
  String get timeoutSeconds60 => '1分後';

  @override
  String get timeoutSeconds120 => '2分後';

  @override
  String get timeoutMinutes5 => '5分後';

  @override
  String get filterBlueprint => 'ブループリント';

  @override
  String get noBlueprint => 'ブループリントなし';

  @override
  String get presetSaveFilter => 'フィルタープリセットを保存';

  @override
  String get presetLoad => 'プリセットを読み込み';

  @override
  String get presetName => 'プリセット名';

  @override
  String get presetNameHint => '例: 非監視対象のMac';

  @override
  String get presetSaved => 'フィルタープリセットが保存されました。';

  @override
  String get presetDeleted => 'フィルタープリセットが削除されました。';

  @override
  String presetApplied(String name) {
    return 'プリセット「$name」が適用されました。';
  }

  @override
  String get presetNoPresets => '保存済みプリセットなし';

  @override
  String get presetNoPresetsMessage => '現在のフィルターをプリセットとして保存すると、すばやくアクセスできます。';

  @override
  String get presetDeleteConfirm => 'このプリセットを削除しますか？';

  @override
  String get presetNameRequired => 'プリセット名を入力してください。';

  @override
  String selectedCount(int count) {
    return '$count件選択済み';
  }

  @override
  String get selectAll => 'すべて選択';

  @override
  String get deselectAll => 'すべて選択解除';

  @override
  String get bulkActions => '一括操作';

  @override
  String bulkActionsTitle(int count) {
    return '$count台のデバイスに対する操作';
  }

  @override
  String get bulkActionAssignTag => 'タグを割り当て';

  @override
  String get bulkActionAssignTagDescription => '選択したすべてのデバイスにタグを追加';

  @override
  String get bulkActionAssignBlueprint => 'ブループリントを割り当て';

  @override
  String get bulkActionAssignBlueprintDescription => '選択したデバイスをブループリントに移動';

  @override
  String get bulkActionLock => 'デバイスをロック';

  @override
  String get bulkActionLockDescription => '選択したすべてのデバイスをリモートロック';

  @override
  String get bulkActionRestart => 'デバイスを再起動';

  @override
  String get bulkActionRestartDescription => '選択したすべてのデバイスを再起動';

  @override
  String bulkRestartConfirmMessage(int count) {
    return '本当に$count台のデバイスを再起動しますか？';
  }

  @override
  String bulkActionSuccess(int count) {
    return '$count台のデバイスでアクションが正常に完了しました。';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return '$success台で完了、$failed台で失敗しました。';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed/$total完了';
  }

  @override
  String get biometricReasonBulkAction => '一括操作を実行するために認証してください';

  @override
  String get lockPin => 'ロックPIN（任意）';

  @override
  String get noTagsAvailable => '利用可能なタグがありません。MDM Webコンソールでタグを作成してください。';

  @override
  String get noBlueprintsAvailable => '利用可能なブループリントがありません。';

  @override
  String get selectADevice => 'デバイスを選択';

  @override
  String get selectABlueprint => 'ブループリントを選択';

  @override
  String get clearSearch => '検索をクリア';

  @override
  String get refresh => '更新';

  @override
  String get moreActions => 'その他のアクション';

  @override
  String get close => '閉じる';

  @override
  String get onboardingSkip => 'スキップ';

  @override
  String get onboardingNext => '次へ';

  @override
  String get onboardingGetStarted => '始める';

  @override
  String get onboardingWelcomeTitle => 'FleetPilotへようこそ';

  @override
  String get onboardingWelcomeSubtitle =>
      'Appleデバイスフリート管理のためのモバイルコマンドセンター。どこからでもフリート全体を監視、管理、保護できます。';

  @override
  String get onboardingDevicesTitle => 'デバイス管理';

  @override
  String get onboardingDevicesSubtitle => 'フリート内のすべてのデバイスに対する完全な可視性と制御。';

  @override
  String get onboardingDevicesFeature1 => '登録済みのiPhone、iPad、Mac、Apple TVをすべて表示';

  @override
  String get onboardingDevicesFeature2 => 'リモートコマンドの送信: ロック、再起動、消去など';

  @override
  String get onboardingDevicesFeature3 => 'ブループリント、アプリ、コンプライアンスステータスの追跡';

  @override
  String get onboardingSecurityTitle => 'セキュリティ重視の設計';

  @override
  String get onboardingSecuritySubtitle => 'フリートデータは複数のセキュリティ層で保護されます。';

  @override
  String get onboardingSecurityFeature1 => 'Face IDまたは指紋による生体認証';

  @override
  String get onboardingSecurityFeature2 => 'アプリアクセス用の6桁PINロック';

  @override
  String get onboardingSecurityFeature3 => 'タイムアウトによる自動セッションロック';

  @override
  String get onboardingReadyTitle => '準備完了';

  @override
  String get onboardingReadySubtitle =>
      'MDMテナントを接続して、Appleデバイスフリートの管理を開始しましょう。次にAPI接続とセキュリティPINを設定します。';

  @override
  String get searchTags => 'タグを検索';

  @override
  String tagDeviceCount(int count) {
    return '$count台のデバイス';
  }

  @override
  String get sortTitle => '並び替え';

  @override
  String get sortDirection => '並び順';

  @override
  String get ascending => '昇順';

  @override
  String get descending => '降順';

  @override
  String get filterSeverity => '深刻度';

  @override
  String get filterSort => 'フィルターと並び替え';

  @override
  String get statusQuarantined => '隔離済み';

  @override
  String get statusNotQuarantined => '未隔離';

  @override
  String get statusDetected => '検出済み';

  @override
  String get statusReleased => '解除済み';

  @override
  String get severityCritical => '重大';

  @override
  String get severityHigh => '高';

  @override
  String get severityMedium => '中';

  @override
  String get severityLow => '低';

  @override
  String threatCount(int count) {
    return '$count件の脅威';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count件の検出';
  }

  @override
  String get downloadPublicKey => 'ダウンロード';

  @override
  String get publicKeySaved => '公開鍵を保存しました';

  @override
  String get sortBy => '並び替え基準';

  @override
  String get sortByCvss => 'CVSSスコア';

  @override
  String get sortByDeviceCount => '影響を受けるデバイス';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count件の脆弱性';
  }

  @override
  String get assignTags => 'タグ';

  @override
  String get noTagsAvailableMessage => '利用可能なタグがありません。先にタグを作成してください。';

  @override
  String get failedToLoadTags => 'タグの読み込みに失敗しました';

  @override
  String get details => '詳細';

  @override
  String get searchLibraryItems => 'ライブラリアイテムを検索...';

  @override
  String get categoryCustomScript => 'カスタムスクリプト';

  @override
  String get categoryCustomApp => 'カスタムアプリ';

  @override
  String get categoryCustomProfile => 'カスタムプロファイル';

  @override
  String get categoryInHouseApp => '社内アプリ';

  @override
  String get categoryBuiltIn => '組み込み';

  @override
  String get categoryVppApps => 'VPP / App Storeアプリ';

  @override
  String get categoryManagedProfiles => '管理対象プロファイル';

  @override
  String get categoryKandjiSetup => 'MDMセットアップ';

  @override
  String get categoryMacosRelease => 'macOSアップデート';

  @override
  String get categoryThreatPolicy => 'セキュリティポリシー';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のブループリント内',
      one: '1件のブループリント内',
    );
    return '$_temp0';
  }

  @override
  String get executionFrequencyOnce => '1回のみ';

  @override
  String get executionFrequencyEvery15Min => '15分ごと';

  @override
  String get executionFrequencyEveryDay => '毎日';

  @override
  String get executionFrequencyNoEnforcement => '強制なし';

  @override
  String get scriptBody => 'スクリプト';

  @override
  String get remediationScript => '修復スクリプト';

  @override
  String get allProperties => 'すべてのプロパティ';

  @override
  String get builtInLibraryItem => '組み込みライブラリアイテム';

  @override
  String get builtInDetailsHint => '詳細はステータスタブで確認できます';

  @override
  String get active => '有効';

  @override
  String get yes => 'はい';

  @override
  String get no => 'いいえ';

  @override
  String get execution => '実行';

  @override
  String get restart => '再起動';

  @override
  String get selfService => 'セルフサービス';

  @override
  String get installType => 'インストールタイプ';

  @override
  String get enforcement => '強制';

  @override
  String get runsOnMac => 'Macで実行';

  @override
  String get runsOnIphone => 'iPhoneで実行';

  @override
  String get runsOnIpad => 'iPadで実行';

  @override
  String get appName => 'アプリ名';

  @override
  String get appVersion => 'アプリバージョン';

  @override
  String get minOsVersion => '最小OSバージョン';

  @override
  String get created => '作成日';

  @override
  String get updated => '更新日';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count件のアイテム',
      zero: 'アイテムなし',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => '解決済み';

  @override
  String get severityInformational => '情報';

  @override
  String get managementState => '管理ステータス';

  @override
  String get managementStateOpen => 'オープン';

  @override
  String get managementStateClosed => 'クローズ';

  @override
  String get classificationMalware => 'マルウェア';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => '疑わしい';

  @override
  String get classificationMal => '悪意あり';

  @override
  String get blueprintRouting => 'ブループリントルーティング';

  @override
  String get blueprintRoutingDesc => '手動/Android Work Profileの登録コードとルーティング';

  @override
  String get blueprintRoutingNotConfigured =>
      'このテナントではブループリントルーティングが設定されていません。';

  @override
  String get enrollmentCodeActive => '有効';

  @override
  String get enrollmentCodeInactive => '無効';

  @override
  String get routingActivity => 'ルーティングアクティビティ';

  @override
  String get noRoutingActivity => 'ルーティングアクティビティが見つかりません。';

  @override
  String get selfServiceCategories => 'セルフサービスカテゴリ';

  @override
  String get selfServiceDesc => 'ユーザー向けのセルフサービスカテゴリを管理';

  @override
  String get addCategory => 'カテゴリを追加';

  @override
  String get categoryName => 'カテゴリ名';

  @override
  String get deleteCategory => 'カテゴリを削除';

  @override
  String get deleteCategoryConfirm => 'このカテゴリを本当に削除しますか？';

  @override
  String get noCategoriesFound => 'カテゴリが見つかりません。';

  @override
  String get categoryCreated => 'カテゴリが作成されました';

  @override
  String get categoryDeleted => 'カテゴリが削除されました';

  @override
  String get profileBody => 'プロファイルXML';

  @override
  String get customProfile => 'カスタムプロファイル';

  @override
  String get classification => '分類';

  @override
  String get mdmEnabled => 'MDM有効';

  @override
  String get enrolledViaDep => 'DEP経由で登録';

  @override
  String get userApprovedMdm => 'ユーザー承認済みMDM';

  @override
  String get network => 'ネットワーク';

  @override
  String get ipAddress => 'IPアドレス';

  @override
  String get wifiNetwork => 'Wi-Fiネットワーク';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'アクティベーションロック';

  @override
  String get googlePlayProtect => 'Google Playプロテクト';

  @override
  String get developerMode => '開発者モード';

  @override
  String get adbEnabled => 'ADB有効';

  @override
  String get unknownSources => '不明なソース';

  @override
  String get securityPatch => 'セキュリティパッチ';

  @override
  String get provisioningUdid => 'プロビジョニングUDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM情報';

  @override
  String get lastEnrollment => '最終登録';

  @override
  String get enterpriseId => 'エンタープライズID';

  @override
  String get manufacturer => 'メーカー';

  @override
  String get generalStatus => '全般ステータス';

  @override
  String get apiLevel => 'APIレベル';

  @override
  String get userApprovedEnrollment => 'ユーザー承認済み登録';

  @override
  String get hostname => 'ホスト名';

  @override
  String get macAddress => 'MACアドレス';

  @override
  String get publicIp => 'パブリックIP';

  @override
  String get volumes => 'ボリューム';

  @override
  String volumeUsed(String percent) {
    return '$percent%使用中';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$total中$available空き';
  }

  @override
  String get encrypted => '暗号化済み';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$coresコア';
  }

  @override
  String processors(String count) {
    return '$countプロセッサ';
  }

  @override
  String get batteryLevel => 'バッテリー残量';

  @override
  String get lastUser => '最終ユーザー';

  @override
  String get bootVolume => '起動ボリューム';

  @override
  String get localUsers => 'ローカルユーザー';

  @override
  String get regularUsers => '標準ユーザー';

  @override
  String get systemUsers => 'システムユーザー';

  @override
  String get admin => '管理者';

  @override
  String get assignToBlueprint => 'ブループリントに割り当て';

  @override
  String get installOnDevice => 'デバイスにインストール';

  @override
  String get selectBlueprint => 'ブループリントを選択';

  @override
  String get selectDevice => 'デバイスを選択';

  @override
  String get selfServiceEnabled => 'セルフサービス';

  @override
  String get vppLicenses => 'VPPライセンス';

  @override
  String get fileName => 'ファイル名';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'アクティベーションロック';

  @override
  String get prismCategoryApps => 'アプリケーション';

  @override
  String get prismCategoryApplicationFirewall => 'アプリケーションファイアウォール';

  @override
  String get prismCategoryCellular => 'モバイルデータ通信';

  @override
  String get prismCategoryCertificates => '証明書';

  @override
  String get prismCategoryDesktopAndScreensaver => 'デスクトップとスクリーンセーバー';

  @override
  String get prismCategoryDeviceInformation => 'デバイス情報';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'GatekeeperとXProtect';

  @override
  String get prismCategoryInstalledProfiles => 'インストール済みプロファイル';

  @override
  String get prismCategoryKernelExtensions => 'カーネル拡張機能';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch AgentsとDaemons';

  @override
  String get prismCategoryLocalUsers => 'ローカルユーザー';

  @override
  String get prismCategoryStartupSettings => '起動設定';

  @override
  String get prismCategorySystemExtensions => 'システム拡張機能';

  @override
  String get prismCategoryTransparencyDatabase => '透明性データベース';

  @override
  String prismRecords(int count) {
    return '$count件のレコード';
  }

  @override
  String get prismNoData => 'このカテゴリのデータはありません。';

  @override
  String get prismExport => 'CSVエクスポート';

  @override
  String get prismExportRequested =>
      'エクスポートがリクエストされました。ダウンロードリンクはまもなく利用可能になります。';

  @override
  String get prismFilterByFamily => 'デバイスファミリー';

  @override
  String get prismAllFamilies => 'すべてのファミリー';

  @override
  String get appearance => '外観';

  @override
  String get themeMode => 'テーマ';

  @override
  String get themeModeSystem => 'システム';

  @override
  String get themeModeLight => 'ライト';

  @override
  String get themeModeDark => 'ダーク';

  @override
  String get shortTypeScript => 'スクリプト';

  @override
  String get shortTypeCustom => 'カスタム';

  @override
  String get shortTypeProfile => 'プロファイル';

  @override
  String get shortTypeInHouse => '社内';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => '管理対象';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'セキュリティ';

  @override
  String get shortTypeAuto => '自動';

  @override
  String get categoryOsUpdates => 'OSアップデート';

  @override
  String get categoryAutoApps => '自動アプリ';

  @override
  String get autoApp => '自動アプリ';

  @override
  String get fileSize => 'ファイルサイズ';

  @override
  String get unzipLocation => '展開先';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'ファイル更新日';

  @override
  String get mdmIdentifier => 'MDM識別子';

  @override
  String get bundleId => 'Bundle-ID';

  @override
  String get appleTV => 'Apple TV';

  @override
  String get appleVision => 'Apple Vision';

  @override
  String get appleWatch => 'Apple Watch';

  @override
  String get iPodLabel => 'iPod';

  @override
  String get typeLabel => 'タイプ';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageGerman => 'Deutsch';

  @override
  String get languageSpanish => 'Español';

  @override
  String get languageFrench => 'Français';

  @override
  String get languagePortuguese => 'Português';

  @override
  String get languageItalian => 'Italiano';

  @override
  String get languagePolish => 'Polski';

  @override
  String get languageCroatian => 'Hrvatski';

  @override
  String get languageRussian => 'Русский';

  @override
  String get languageUkrainian => 'Українська';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageHindi => 'हिन्दी';

  @override
  String get languageChinese => '中文';

  @override
  String get languageJapanese => '日本語';

  @override
  String get languageKorean => '한국어';

  @override
  String get languageTurkish => 'Türkçe';

  @override
  String get languageDutch => 'Nederlands';

  @override
  String get languageSwedish => 'Svenska';

  @override
  String get languageCzech => 'Čeština';

  @override
  String get languageRomanian => 'Română';

  @override
  String get languageThai => 'ไทย';

  @override
  String get languageDanish => 'Dansk';

  @override
  String get languageNorwegian => 'Norsk';

  @override
  String get languageIndonesian => 'Bahasa Indonesia';

  @override
  String get languageVietnamese => 'Tiếng Việt';
}
