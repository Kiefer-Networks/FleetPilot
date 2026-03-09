// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => '기기';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => '사용자';

  @override
  String get navSettings => '설정';

  @override
  String get welcomeTitle => 'FleetPilot에 오신 것을 환영합니다';

  @override
  String get welcomeSubtitle => '어디서나 Apple 기기 플릿을 관리하세요.';

  @override
  String get addProfile => '프로필 추가';

  @override
  String get editProfile => '프로필 편집';

  @override
  String get displayName => '표시 이름';

  @override
  String get displayNameHint => '예: Acme Corp — Prod';

  @override
  String get region => '리전';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => '서브도메인';

  @override
  String get subdomainHint => 'your-tenant';

  @override
  String get apiToken => 'API 토큰';

  @override
  String get apiTokenHint => 'API 토큰을 여기에 붙여넣기';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => '확인 및 저장';

  @override
  String get verifying => '연결 확인 중...';

  @override
  String get connectionSuccess => '연결이 성공적으로 확인되었습니다!';

  @override
  String get errorInvalidToken => '유효하지 않은 API 토큰입니다. 웹 콘솔에서 토큰을 확인하세요.';

  @override
  String get errorInsufficientPermissions =>
      '권한이 부족합니다. 토큰에 기기 읽기 권한이 있는지 확인하세요.';

  @override
  String get errorNetworkUnreachable =>
      'API에 연결할 수 없습니다. 인터넷 연결 및 서브도메인을 확인하세요.';

  @override
  String get errorNotFound => '요청한 리소스를 찾을 수 없습니다.';

  @override
  String get errorValidation => '요청에 유효하지 않은 데이터가 포함되어 있습니다. 입력 내용을 확인하세요.';

  @override
  String get errorRateLimit => '요청이 너무 많습니다. 잠시 후 다시 시도하세요.';

  @override
  String get errorServer => '서버에서 오류가 발생했습니다. 나중에 다시 시도하세요.';

  @override
  String get errorUnexpected => '예기치 않은 오류가 발생했습니다. 다시 시도하세요.';

  @override
  String get retry => '재시도';

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get save => '저장';

  @override
  String get search => '검색';

  @override
  String get searchDevices => '기기 검색...';

  @override
  String get filterAll => '전체';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => '모든 블루프린트';

  @override
  String loadingDevices(int count) {
    return '기기 $count대 로딩 중...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '기기 $count대',
      zero: '기기 없음',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => '기기를 찾을 수 없습니다';

  @override
  String get noDevicesFoundMessage => '검색 또는 필터 조건을 조정하세요.';

  @override
  String lastCheckIn(String time) {
    return '마지막 체크인: $time';
  }

  @override
  String get compliancePass => '통과';

  @override
  String get complianceFail => '실패';

  @override
  String get compliancePending => '보류 중';

  @override
  String get deviceDetails => '기기 상세 정보';

  @override
  String get serialNumber => '일련번호';

  @override
  String get model => '모델';

  @override
  String get osVersion => 'OS 버전';

  @override
  String get assetTag => '자산 태그';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => '등록일';

  @override
  String get assignedUser => '할당된 사용자';

  @override
  String get actions => '작업';

  @override
  String get actionLock => '잠금';

  @override
  String get actionRestart => '재시작';

  @override
  String get actionShutdown => '종료';

  @override
  String get actionErase => '초기화';

  @override
  String get actionBlankPush => 'Blank Push 전송';

  @override
  String get actionReinstallAgent => '에이전트 재설치';

  @override
  String get actionUpdateInventory => '인벤토리 업데이트';

  @override
  String get actionRecoveryLock => '복구 잠금';

  @override
  String get actionRemoteDesktopEnable => '원격 데스크톱 활성화';

  @override
  String get actionRemoteDesktopDisable => '원격 데스크톱 비활성화';

  @override
  String get actionLostMode => '분실 모드 활성화';

  @override
  String get destructiveActionTitle => '위험 작업 확인';

  @override
  String destructiveActionMessage(String deviceName) {
    return '이 작업은 되돌릴 수 없습니다. 확인을 위해 \"$deviceName\"을(를) 입력하세요.';
  }

  @override
  String get destructiveActionHint => '확인을 위해 기기 이름을 입력하세요';

  @override
  String get confirm => '확인';

  @override
  String get actionSuccess => '작업이 성공적으로 실행되었습니다.';

  @override
  String get actionFailed => '작업에 실패했습니다. 다시 시도하세요.';

  @override
  String get biometricReason => 'FleetPilot 인증';

  @override
  String get biometricReasonSecrets => '민감한 데이터를 보려면 인증하세요';

  @override
  String get biometricReasonDestructive => '이 작업을 실행하려면 인증하세요';

  @override
  String get biometricFailed => '인증에 실패했습니다. 다시 시도하세요.';

  @override
  String get profiles => '프로필';

  @override
  String activeProfile(String name) {
    return '활성: $name';
  }

  @override
  String get switchProfile => '프로필 전환';

  @override
  String get deleteProfile => '프로필 삭제';

  @override
  String get deleteProfileConfirm => '이 프로필을 정말 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';

  @override
  String get noProfiles => '구성된 프로필이 없습니다';

  @override
  String get settings => '설정';

  @override
  String get about => '정보';

  @override
  String version(String version) {
    return '버전 $version';
  }

  @override
  String get validationRequired => '이 필드는 필수입니다.';

  @override
  String get validationSubdomain => '문자, 숫자, 하이픈만 허용됩니다. 앞뒤에 하이픈을 사용할 수 없습니다.';

  @override
  String get validationToken =>
      '유효하지 않은 토큰 형식입니다. 20~500자, 영숫자 및 일반 구분자만 허용됩니다.';

  @override
  String pinLockedOut(int seconds) {
    return '시도 횟수를 초과했습니다. $seconds초 후에 다시 시도하세요.';
  }

  @override
  String get complianceStatus => '규정 준수 상태';

  @override
  String get platform => '플랫폼';

  @override
  String get deviceName => '기기 이름';

  @override
  String get searchUsers => '사용자 검색...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '사용자 $count명',
      zero: '사용자 없음',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => '사용자를 찾을 수 없습니다';

  @override
  String get noUsersFoundMessage => '검색 또는 필터 조건을 조정하세요.';

  @override
  String get showArchived => '보관된 항목 표시';

  @override
  String get archived => '보관됨';

  @override
  String get email => '이메일';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '블루프린트 $count개',
      zero: '블루프린트 없음',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => '블루프린트를 찾을 수 없습니다';

  @override
  String get noBlueprintsFoundMessage => '아직 블루프린트가 구성되지 않았습니다.';

  @override
  String get enrollmentActive => '등록 활성';

  @override
  String get enrollmentInactive => '등록 비활성';

  @override
  String get tabOverview => '개요';

  @override
  String get tabApps => '앱';

  @override
  String get tabStatus => '상태';

  @override
  String get tabActivity => '활동';

  @override
  String get tabCommands => '명령';

  @override
  String get hardware => '하드웨어';

  @override
  String get security => '보안';

  @override
  String get totalStorage => '총 저장 용량';

  @override
  String get availableStorage => '사용 가능한 저장 용량';

  @override
  String get totalRam => '총 RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC 주소';

  @override
  String get encryption => '암호화';

  @override
  String get passcode => '패스코드';

  @override
  String get noAppsFound => '앱을 찾을 수 없습니다';

  @override
  String get noActivityFound => '활동을 찾을 수 없습니다';

  @override
  String get noCommandsFound => '명령을 찾을 수 없습니다';

  @override
  String get libraryItems => '라이브러리 항목';

  @override
  String get parameters => '매개변수';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS 빌드';

  @override
  String get cellular => '셀룰러';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '앱 $count개',
      zero: '앱 없음',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => '사용자 상세 정보';

  @override
  String get jobTitle => '직함';

  @override
  String get department => '부서';

  @override
  String get createdAt => '생성일';

  @override
  String get updatedAt => '수정일';

  @override
  String get assignedDevices => '할당된 기기';

  @override
  String get noAssignedDevices => '이 사용자에게 할당된 기기가 없습니다.';

  @override
  String get userInfo => '사용자 정보';

  @override
  String get navMore => '더보기';

  @override
  String get tabSecrets => '시크릿';

  @override
  String get filevaultKey => 'FileVault 복구 키';

  @override
  String get unlockPin => '잠금 해제 PIN';

  @override
  String get recoveryPassword => '복구 잠금 비밀번호';

  @override
  String get bypassCode => '활성화 잠금 우회 코드';

  @override
  String get noSecretsFound => '이 기기에 사용 가능한 시크릿이 없습니다.';

  @override
  String get secretCopied => '시크릿이 클립보드에 복사되었습니다';

  @override
  String get threats => '위협';

  @override
  String get noThreatsFound => '감지된 위협이 없습니다.';

  @override
  String get vulnerabilities => '취약점';

  @override
  String get noVulnerabilitiesFound => '감지된 취약점이 없습니다.';

  @override
  String get aboutApp => 'FleetPilot 정보';

  @override
  String get aboutDescription =>
      'FleetPilot은 Apple 기기 플릿을 위한 오픈소스 MDM 관리 앱입니다.';

  @override
  String get tapToCopy => '탭하여 복사';

  @override
  String get devices => '기기';

  @override
  String get severity => '심각도';

  @override
  String get tabLocation => '위치';

  @override
  String get locationNotAvailable => '이 기기의 위치 데이터를 사용할 수 없습니다.';

  @override
  String get enableLostModeHint => '이 기기를 찾으려면 분실 모드를 활성화하세요.';

  @override
  String get lostModeEnabled => '분실 모드 활성화됨';

  @override
  String get noLibraryItemsFound => '라이브러리 항목을 찾을 수 없습니다.';

  @override
  String get licenses => '라이선스';

  @override
  String get lostModeMessage => '분실 모드 메시지';

  @override
  String get lostModePhone => '전화번호';

  @override
  String get lostModeFootnote => '기기에 표시되는 선택적 메시지 및 전화번호';

  @override
  String get supervised => '감독됨';

  @override
  String get unsupervised => '비감독';

  @override
  String get filterSupervised => '감독됨';

  @override
  String get filterUnsupervised => '비감독';

  @override
  String get language => '언어';

  @override
  String get languageSystem => '시스템 기본값';

  @override
  String get actionDisableLostMode => '분실 모드 비활성화';

  @override
  String get actionClearPasscode => '패스코드 지우기';

  @override
  String get filterLostMode => '분실 모드';

  @override
  String get lostMode => '분실 모드';

  @override
  String get sectionManagement => '관리';

  @override
  String get sectionStatus => '상태';

  @override
  String get statusMissing => '분실';

  @override
  String get statusRemoved => '제거됨';

  @override
  String get agent => '에이전트';

  @override
  String get identifier => '식별자';

  @override
  String get processor => '프로세서';

  @override
  String get hardwareUuid => '하드웨어 UUID';

  @override
  String get devicePosture => '기기 상태';

  @override
  String get unknownDevice => '알 수 없는 기기';

  @override
  String get securityAppLock => '앱 잠금';

  @override
  String get securityAppLockDescription =>
      '앱을 보호하기 위해 6자리 PIN을 설정하세요. PIN 설정 후 생체 인증을 활성화할 수 있습니다.';

  @override
  String get securityAppLockActive => '앱 잠금 활성화됨';

  @override
  String get securityAppLockInactive => '앱 잠금이 구성되지 않았습니다';

  @override
  String get securitySetPin => 'PIN 설정';

  @override
  String get securityChangePin => 'PIN 변경';

  @override
  String get securityRemovePin => 'PIN 제거';

  @override
  String get securityCurrentPin => '현재 PIN';

  @override
  String get securityNewPin => '새 PIN';

  @override
  String get securityConfirmPin => '확인을 위해 PIN을 다시 입력하세요.';

  @override
  String get securityPinLength => 'PIN은 6자리여야 합니다.';

  @override
  String get securityPinMismatch => 'PIN이 일치하지 않습니다.';

  @override
  String get securityPinWrong => '잘못된 PIN입니다.';

  @override
  String get securityPinSet => 'PIN이 설정되었습니다.';

  @override
  String get securityPinChanged => 'PIN이 변경되었습니다.';

  @override
  String get securityPinRemoved => 'PIN 및 앱 잠금이 제거되었습니다.';

  @override
  String get securityBiometric => '생체 인증';

  @override
  String get securityBiometricDescription =>
      'PIN 대신 지문 또는 얼굴 인식을 사용하여 앱을 잠금 해제합니다.';

  @override
  String get securityBiometricEnable => '생체 인증 잠금 해제';

  @override
  String get securityBiometricActive => '활성';

  @override
  String get securityBiometricInactive => '비활성';

  @override
  String get securityBiometricUnavailable => '이 기기에서 생체 인증을 사용할 수 없습니다.';

  @override
  String get securityNext => '다음';

  @override
  String get actionRenewMdm => 'MDM 프로필 갱신';

  @override
  String get actionSetName => '기기 이름 설정';

  @override
  String get actionSetNameHint => '새 기기 이름을 입력하세요';

  @override
  String get actionDeleteUser => '사용자 삭제';

  @override
  String get actionDeleteUserName => '사용자 이름';

  @override
  String get actionDeleteAllUsers => '모든 사용자 삭제';

  @override
  String get actionForceDeletion => '강제 삭제';

  @override
  String get actionUnlockAccount => '계정 잠금 해제';

  @override
  String get actionPlayLostModeSound => '분실 모드 소리 재생';

  @override
  String get actionUpdateLocation => '위치 업데이트';

  @override
  String get erasePin => '6자리 PIN';

  @override
  String get erasePinHint => '모바일 기기에 필요';

  @override
  String get erasePreserveDataPlan => '데이터 요금제 유지';

  @override
  String get eraseDisallowProximitySetup => '근접 설정 금지';

  @override
  String get eraseReturnToService => '서비스 복귀';

  @override
  String get lockMessage => '잠금 메시지';

  @override
  String get lockPhone => '전화번호';

  @override
  String get restartRebuildKernelCache => '커널 캐시 재빌드';

  @override
  String get restartNotifyUser => '사용자에게 알림';

  @override
  String get actionRemoteDesktop => '원격 데스크톱';

  @override
  String get tabNotes => '메모';

  @override
  String get noNotesFound => '아직 메모가 없습니다';

  @override
  String get addNote => '메모 추가';

  @override
  String get editNote => '메모 편집';

  @override
  String get deleteNote => '메모 삭제';

  @override
  String get deleteNoteConfirm => '이 메모를 정말 삭제하시겠습니까?';

  @override
  String get noteContent => '메모 내용';

  @override
  String get noteSaved => '메모가 저장되었습니다.';

  @override
  String get noteDeleted => '메모가 삭제되었습니다.';

  @override
  String get editDevice => '기기 편집';

  @override
  String get deviceUpdated => '기기가 업데이트되었습니다.';

  @override
  String get deleteDevice => '기기 삭제';

  @override
  String get deleteDeviceConfirm => '기기가 MDM에서 영구적으로 제거됩니다. 이 작업은 되돌릴 수 없습니다.';

  @override
  String get deviceDeleted => '기기가 삭제되었습니다.';

  @override
  String get cancelLostMode => '분실 모드 취소';

  @override
  String get cancelLostModeConfirm => '보류 중인 분실 모드 요청을 취소하시겠습니까?';

  @override
  String get lostModeCancelled => '분실 모드가 취소되었습니다.';

  @override
  String get tags => '태그';

  @override
  String get noTags => '태그 없음';

  @override
  String get addTag => '태그 추가';

  @override
  String get tagName => '태그 이름';

  @override
  String get manageTags => '태그 관리';

  @override
  String get auditLog => '감사 로그';

  @override
  String get noAuditEvents => '감사 이벤트를 찾을 수 없습니다';

  @override
  String get actionDailyCheckIn => '일일 체크인';

  @override
  String get licensing => '라이선스';

  @override
  String get deviceLimit => '기기 제한';

  @override
  String get devicesUsed => '사용 중인 기기';

  @override
  String get licenseType => '라이선스 유형';

  @override
  String get appleDevices => 'Apple 기기';

  @override
  String get deleteUser => '사용자 삭제';

  @override
  String get deleteUserConfirm => '이 사용자를 정말 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';

  @override
  String get userDeleted => '사용자가 삭제되었습니다.';

  @override
  String get createBlueprint => '블루프린트 생성';

  @override
  String get editBlueprint => '블루프린트 편집';

  @override
  String get deleteBlueprint => '블루프린트 삭제';

  @override
  String get deleteBlueprintConfirm =>
      '이 블루프린트를 삭제하면 할당된 모든 기기의 등록이 해제됩니다. 이 작업은 되돌릴 수 없습니다.';

  @override
  String get blueprintCreated => '블루프린트가 생성되었습니다.';

  @override
  String get blueprintUpdated => '블루프린트가 업데이트되었습니다.';

  @override
  String get blueprintDeleted => '블루프린트가 삭제되었습니다.';

  @override
  String get blueprintName => '블루프린트 이름';

  @override
  String get blueprintDescription => '설명';

  @override
  String get enrollmentCode => '등록 코드';

  @override
  String get assignLibraryItem => '라이브러리 항목 할당';

  @override
  String get removeLibraryItem => '라이브러리 항목 제거';

  @override
  String get libraryItemAssigned => '라이브러리 항목이 할당되었습니다.';

  @override
  String get libraryItemRemoved => '라이브러리 항목이 제거되었습니다.';

  @override
  String get lostModeDetails => '분실 모드 상세 정보';

  @override
  String get lostModeEnabledBy => '활성화한 사용자';

  @override
  String get lostModeEnabledAt => '활성화 시간';

  @override
  String get searchBlueprints => '블루프린트 검색...';

  @override
  String get searchVulnerabilities => '취약점 검색...';

  @override
  String get searchThreats => '위협 검색...';

  @override
  String get searchAuditLog => '감사 로그 검색...';

  @override
  String get filterCritical => '심각';

  @override
  String get filterHigh => '높음';

  @override
  String get filterMedium => '보통';

  @override
  String get filterLow => '낮음';

  @override
  String get filterClearAll => '모두 지우기';

  @override
  String get filterTitle => '필터';

  @override
  String get filterApply => '적용';

  @override
  String get filterPlatform => '플랫폼';

  @override
  String get filterSupervision => '감독 상태';

  @override
  String get filterStatus => '상태';

  @override
  String get adeIntegrations => 'ADE 통합';

  @override
  String get noAdeIntegrations => 'ADE 통합을 찾을 수 없습니다.';

  @override
  String get adeDevices => 'ADE 기기';

  @override
  String get noAdeDevices => 'ADE 기기를 찾을 수 없습니다.';

  @override
  String get tokenExpiry => '토큰 만료';

  @override
  String get tokenValid => '유효한 토큰';

  @override
  String get tokenExpired => '만료된 토큰';

  @override
  String get orgName => '조직';

  @override
  String get defaultBlueprint => '기본 블루프린트';

  @override
  String get renewToken => '토큰 갱신';

  @override
  String get publicKey => '공개 키';

  @override
  String get vulnerabilityDetections => '취약점 탐지';

  @override
  String get noDetectionsFound => '탐지 항목을 찾을 수 없습니다.';

  @override
  String get behavioralDetections => '행동 탐지';

  @override
  String get noBehavioralDetections => '행동 탐지 항목을 찾을 수 없습니다.';

  @override
  String get searchBehavioralDetections => '탐지 검색...';

  @override
  String get affectedDevices => '영향받는 기기';

  @override
  String get noAffectedDevices =>
      '영향받는 기기를 찾을 수 없습니다. 이전에 영향받은 기기가 제거되었을 수 있습니다.';

  @override
  String get affectedSoftware => '영향받는 소프트웨어';

  @override
  String get blueprintTemplates => '블루프린트 템플릿';

  @override
  String get noTemplatesFound => '템플릿을 찾을 수 없습니다.';

  @override
  String get otaEnrollmentProfile => 'OTA 등록 프로필';

  @override
  String get libraryItemActivity => '활동';

  @override
  String get libraryItemDeploymentStatus => '배포 상태';

  @override
  String get noActivityFound2 => '활동을 찾을 수 없습니다.';

  @override
  String get noStatusFound => '배포 상태를 찾을 수 없습니다.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '탐지 $count건',
      zero: '탐지 없음',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '통합 $count개',
      zero: '통합 없음',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => '취약점 상세 정보';

  @override
  String get description => '설명';

  @override
  String get firstDetected => '최초 탐지';

  @override
  String get lastDetected => '최근 탐지';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '소프트웨어 $count개',
      zero: '소프트웨어 없음',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => '통합 편집';

  @override
  String get deleteIntegration => '통합 삭제';

  @override
  String get deleteIntegrationConfirm =>
      '이 ADE 통합을 정말 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';

  @override
  String get integrationDeleted => '통합이 삭제되었습니다.';

  @override
  String get integrationUpdated => '통합이 업데이트되었습니다.';

  @override
  String get defaultBlueprintId => '기본 블루프린트 ID';

  @override
  String get phone => '전화';

  @override
  String get downloadOtaProfile => '등록 프로필 다운로드';

  @override
  String get otaProfileCopied => '등록 프로필이 클립보드에 복사되었습니다.';

  @override
  String get noOtaProfile => '등록 프로필을 사용할 수 없습니다.';

  @override
  String get createTag => '태그 생성';

  @override
  String get editTag => '태그 편집';

  @override
  String get deleteTag => '태그 삭제';

  @override
  String get deleteTagConfirm => '이 태그를 정말 삭제하시겠습니까?';

  @override
  String get tagColor => '색상';

  @override
  String get tagCreated => '태그가 생성되었습니다.';

  @override
  String get tagUpdated => '태그가 업데이트되었습니다.';

  @override
  String get tagDeleted => '태그가 삭제되었습니다.';

  @override
  String get noTagsFound => '태그를 찾을 수 없습니다.';

  @override
  String get libraryItemDetail => '라이브러리 항목';

  @override
  String get viewActivity => '활동 보기';

  @override
  String get viewStatus => '상태 보기';

  @override
  String get installations => '설치';

  @override
  String get createAdeIntegration => 'ADE 통합 생성';

  @override
  String get adeCreateDescription =>
      'Apple Business Manager에서 서버 토큰 파일(.p7m)을 업로드하여 새 ADE 통합을 생성합니다.';

  @override
  String get selectTokenFile => '토큰 파일 선택';

  @override
  String tokenFileSelected(String name) {
    return '토큰 파일: $name';
  }

  @override
  String get noTokenFileSelected => '토큰 파일이 선택되지 않았습니다';

  @override
  String get integrationCreated => '통합이 생성되었습니다.';

  @override
  String get create => '생성';

  @override
  String get step1GetPublicKey => '1단계: 공개 키 다운로드';

  @override
  String get step1Description => '공개 키를 복사하여 Apple Business Manager에 업로드하세요.';

  @override
  String get step2UploadToken => '2단계: 서버 토큰 업로드';

  @override
  String get step2Description => 'Apple에서 다운로드한 .p7m 토큰 파일을 선택하세요.';

  @override
  String get step3Configure => '3단계: 구성';

  @override
  String get publicKeyCopied => '공개 키가 클립보드에 복사되었습니다.';

  @override
  String get renewTokenDescription => '이 통합의 토큰을 갱신하려면 새 .p7m 토큰 파일을 업로드하세요.';

  @override
  String get tokenRenewed => '토큰이 갱신되었습니다.';

  @override
  String get aboutLinks => '링크';

  @override
  String get aboutWebsite => '웹사이트';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => '소스 코드';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => '기술 스택';

  @override
  String get aboutFramework => '프레임워크';

  @override
  String get aboutStateManagement => '상태 관리';

  @override
  String get aboutArchitecture => '아키텍처';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => '데이터 클래스';

  @override
  String get aboutNavigationLabel => '내비게이션';

  @override
  String get aboutOpenSourceLicenses => '오픈소스 라이선스';

  @override
  String get aboutShowHide => '표시 전환';

  @override
  String get editProfileTitle => '연결 편집';

  @override
  String get editProfileSubtitle => '테넌트 연결 설정을 업데이트하세요.';

  @override
  String get apiTokenHintEdit => '기존 토큰을 유지하려면 비워두세요';

  @override
  String get profileUpdated => '프로필이 업데이트되었습니다.';

  @override
  String profileSwitched(String name) {
    return '$name(으)로 전환되었습니다.';
  }

  @override
  String get securityAutoLock => '자동 잠금';

  @override
  String get securityAutoLockDescription => '앱이 백그라운드에 있었을 때 자동으로 인증을 요구합니다.';

  @override
  String get timeoutImmediately => '즉시';

  @override
  String get timeoutSeconds30 => '30초 후';

  @override
  String get timeoutSeconds60 => '1분 후';

  @override
  String get timeoutSeconds120 => '2분 후';

  @override
  String get timeoutMinutes5 => '5분 후';

  @override
  String get filterBlueprint => '블루프린트';

  @override
  String get noBlueprint => '블루프린트 없음';

  @override
  String get presetSaveFilter => '필터 프리셋 저장';

  @override
  String get presetLoad => '프리셋 불러오기';

  @override
  String get presetName => '프리셋 이름';

  @override
  String get presetNameHint => '예: 비감독 Mac';

  @override
  String get presetSaved => '필터 프리셋이 저장되었습니다.';

  @override
  String get presetDeleted => '필터 프리셋이 삭제되었습니다.';

  @override
  String presetApplied(String name) {
    return '프리셋 \"$name\"이(가) 적용되었습니다.';
  }

  @override
  String get presetNoPresets => '저장된 프리셋이 없습니다';

  @override
  String get presetNoPresetsMessage => '현재 필터를 프리셋으로 저장하여 빠르게 사용하세요.';

  @override
  String get presetDeleteConfirm => '이 프리셋을 삭제하시겠습니까?';

  @override
  String get presetNameRequired => '프리셋 이름을 입력하세요.';

  @override
  String selectedCount(int count) {
    return '$count개 선택됨';
  }

  @override
  String get selectAll => '모두 선택';

  @override
  String get deselectAll => '모두 선택 해제';

  @override
  String get bulkActions => '일괄 작업';

  @override
  String bulkActionsTitle(int count) {
    return '기기 $count대에 대한 작업';
  }

  @override
  String get bulkActionAssignTag => '태그 할당';

  @override
  String get bulkActionAssignTagDescription => '선택한 모든 기기에 태그 추가';

  @override
  String get bulkActionAssignBlueprint => '블루프린트 할당';

  @override
  String get bulkActionAssignBlueprintDescription => '선택한 기기를 블루프린트로 이동';

  @override
  String get bulkActionLock => '기기 잠금';

  @override
  String get bulkActionLockDescription => '선택한 모든 기기를 원격 잠금';

  @override
  String get bulkActionRestart => '기기 재시작';

  @override
  String get bulkActionRestartDescription => '선택한 모든 기기를 재시작';

  @override
  String bulkRestartConfirmMessage(int count) {
    return '정말 기기 $count대를 재시작하시겠습니까?';
  }

  @override
  String bulkActionSuccess(int count) {
    return '기기 $count대에 작업이 성공적으로 완료되었습니다.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return '기기 $success대 완료, $failed대 실패.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$total대 중 $completed대 완료';
  }

  @override
  String get biometricReasonBulkAction => '일괄 작업을 실행하려면 인증하세요';

  @override
  String get lockPin => '잠금 PIN (선택사항)';

  @override
  String get noTagsAvailable => '사용 가능한 태그가 없습니다. MDM 웹 콘솔에서 태그를 생성하세요.';

  @override
  String get noBlueprintsAvailable => '사용 가능한 블루프린트가 없습니다.';

  @override
  String get selectADevice => '기기 선택';

  @override
  String get selectABlueprint => '블루프린트 선택';

  @override
  String get clearSearch => '검색 지우기';

  @override
  String get refresh => '새로고침';

  @override
  String get moreActions => '추가 작업';

  @override
  String get close => '닫기';

  @override
  String get onboardingSkip => '건너뛰기';

  @override
  String get onboardingNext => '다음';

  @override
  String get onboardingGetStarted => '시작하기';

  @override
  String get onboardingWelcomeTitle => 'FleetPilot에 오신 것을 환영합니다';

  @override
  String get onboardingWelcomeSubtitle =>
      'Apple 기기 플릿 관리를 위한 모바일 관제 센터입니다. 어디서나 전체 플릿을 모니터링, 관리 및 보호하세요.';

  @override
  String get onboardingDevicesTitle => '기기 관리';

  @override
  String get onboardingDevicesSubtitle => '플릿의 모든 기기에 대한 완전한 가시성과 제어.';

  @override
  String get onboardingDevicesFeature1 =>
      '등록된 모든 iPhone, iPad, Mac 및 Apple TV 보기';

  @override
  String get onboardingDevicesFeature2 => '원격 명령 전송: 잠금, 재시작, 초기화 등';

  @override
  String get onboardingDevicesFeature3 => '블루프린트, 앱 및 규정 준수 상태 추적';

  @override
  String get onboardingSecurityTitle => '보안을 위해 설계됨';

  @override
  String get onboardingSecuritySubtitle => '플릿 데이터는 여러 보안 계층으로 보호됩니다.';

  @override
  String get onboardingSecurityFeature1 => 'Face ID 또는 지문을 통한 생체 인증';

  @override
  String get onboardingSecurityFeature2 => '앱 접근을 위한 6자리 PIN 잠금';

  @override
  String get onboardingSecurityFeature3 => '시간 초과 시 자동 세션 잠금';

  @override
  String get onboardingReadyTitle => '시작 준비 완료';

  @override
  String get onboardingReadySubtitle =>
      'MDM 테넌트를 연결하여 Apple 기기 플릿 관리를 시작하세요. 다음으로 API 연결 및 보안 PIN을 설정합니다.';

  @override
  String get searchTags => '태그 검색';

  @override
  String tagDeviceCount(int count) {
    return '기기 $count대';
  }

  @override
  String get sortTitle => '정렬';

  @override
  String get sortDirection => '정렬 방향';

  @override
  String get ascending => '오름차순';

  @override
  String get descending => '내림차순';

  @override
  String get filterSeverity => '심각도';

  @override
  String get filterSort => '필터 및 정렬';

  @override
  String get statusQuarantined => '격리됨';

  @override
  String get statusNotQuarantined => '격리 해제됨';

  @override
  String get statusDetected => '탐지됨';

  @override
  String get statusReleased => '해제됨';

  @override
  String get severityCritical => '심각';

  @override
  String get severityHigh => '높음';

  @override
  String get severityMedium => '보통';

  @override
  String get severityLow => '낮음';

  @override
  String threatCount(int count) {
    return '위협 $count건';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '탐지 $count건';
  }

  @override
  String get downloadPublicKey => '다운로드';

  @override
  String get publicKeySaved => '공개 키가 저장되었습니다';

  @override
  String get sortBy => '정렬 기준';

  @override
  String get sortByCvss => 'CVSS 점수';

  @override
  String get sortByDeviceCount => '영향받는 기기';

  @override
  String get sortByCveId => 'CVE ID';

  @override
  String vulnCount(int count) {
    return '취약점 $count건';
  }

  @override
  String get assignTags => '태그';

  @override
  String get noTagsAvailableMessage => '사용 가능한 태그가 없습니다. 먼저 태그를 생성하세요.';

  @override
  String get failedToLoadTags => '태그를 불러오지 못했습니다';

  @override
  String get details => '상세 정보';

  @override
  String get searchLibraryItems => '라이브러리 항목 검색...';

  @override
  String get categoryCustomScript => '사용자 지정 스크립트';

  @override
  String get categoryCustomApp => '사용자 지정 앱';

  @override
  String get categoryCustomProfile => '사용자 지정 프로필';

  @override
  String get categoryInHouseApp => '사내 앱';

  @override
  String get categoryBuiltIn => '내장';

  @override
  String get categoryVppApps => 'VPP / App Store 앱';

  @override
  String get categoryManagedProfiles => '관리형 프로필';

  @override
  String get categoryKandjiSetup => 'MDM 설정';

  @override
  String get categoryMacosRelease => 'macOS 업데이트';

  @override
  String get categoryThreatPolicy => '보안 정책';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '블루프린트 $count개에 포함',
      one: '블루프린트 1개에 포함',
    );
    return '$_temp0';
  }

  @override
  String get executionFrequencyOnce => '1회';

  @override
  String get executionFrequencyEvery15Min => '15분마다';

  @override
  String get executionFrequencyEveryDay => '매일';

  @override
  String get executionFrequencyNoEnforcement => '적용 안 함';

  @override
  String get scriptBody => '스크립트';

  @override
  String get remediationScript => '교정 스크립트';

  @override
  String get allProperties => '모든 속성';

  @override
  String get builtInLibraryItem => '내장 라이브러리 항목';

  @override
  String get builtInDetailsHint => '상태 탭에서 상세 정보를 확인할 수 있습니다';

  @override
  String get active => '활성';

  @override
  String get yes => '예';

  @override
  String get no => '아니오';

  @override
  String get execution => '실행';

  @override
  String get restart => '재시작';

  @override
  String get selfService => '셀프 서비스';

  @override
  String get installType => '설치 유형';

  @override
  String get enforcement => '적용';

  @override
  String get runsOnMac => 'Mac에서 실행';

  @override
  String get runsOnIphone => 'iPhone에서 실행';

  @override
  String get runsOnIpad => 'iPad에서 실행';

  @override
  String get appName => '앱 이름';

  @override
  String get appVersion => '앱 버전';

  @override
  String get minOsVersion => '최소 OS 버전';

  @override
  String get created => '생성';

  @override
  String get updated => '수정';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '항목 $count개',
      zero: '항목 없음',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => '해결됨';

  @override
  String get severityInformational => '정보';

  @override
  String get managementState => '관리 상태';

  @override
  String get managementStateOpen => '열림';

  @override
  String get managementStateClosed => '닫힘';

  @override
  String get classificationMalware => '멀웨어';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => '의심스러움';

  @override
  String get classificationMal => '악성';

  @override
  String get blueprintRouting => '블루프린트 라우팅';

  @override
  String get blueprintRoutingDesc =>
      '수동 등록 / Android Work Profile 등록을 위한 등록 코드 및 라우팅';

  @override
  String get blueprintRoutingNotConfigured => '이 테넌트에 블루프린트 라우팅이 구성되지 않았습니다.';

  @override
  String get enrollmentCodeActive => '활성';

  @override
  String get enrollmentCodeInactive => '비활성';

  @override
  String get routingActivity => '라우팅 활동';

  @override
  String get noRoutingActivity => '라우팅 활동을 찾을 수 없습니다.';

  @override
  String get selfServiceCategories => '셀프 서비스 카테고리';

  @override
  String get selfServiceDesc => '사용자를 위한 셀프 서비스 카테고리 관리';

  @override
  String get addCategory => '카테고리 추가';

  @override
  String get categoryName => '카테고리 이름';

  @override
  String get deleteCategory => '카테고리 삭제';

  @override
  String get deleteCategoryConfirm => '이 카테고리를 정말 삭제하시겠습니까?';

  @override
  String get noCategoriesFound => '카테고리를 찾을 수 없습니다.';

  @override
  String get categoryCreated => '카테고리가 생성되었습니다';

  @override
  String get categoryDeleted => '카테고리가 삭제되었습니다';

  @override
  String get profileBody => '프로필 XML';

  @override
  String get customProfile => '사용자 지정 프로필';

  @override
  String get classification => '분류';

  @override
  String get mdmEnabled => 'MDM 활성화됨';

  @override
  String get enrolledViaDep => 'DEP를 통해 등록됨';

  @override
  String get userApprovedMdm => '사용자 승인 MDM';

  @override
  String get network => '네트워크';

  @override
  String get ipAddress => 'IP 주소';

  @override
  String get wifiNetwork => 'Wi-Fi 네트워크';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => '활성화 잠금';

  @override
  String get googlePlayProtect => 'Google Play 프로텍트';

  @override
  String get developerMode => '개발자 모드';

  @override
  String get adbEnabled => 'ADB 활성화됨';

  @override
  String get unknownSources => '알 수 없는 출처';

  @override
  String get securityPatch => '보안 패치';

  @override
  String get provisioningUdid => '프로비저닝 UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM 정보';

  @override
  String get lastEnrollment => '최근 등록';

  @override
  String get enterpriseId => '엔터프라이즈 ID';

  @override
  String get manufacturer => '제조업체';

  @override
  String get generalStatus => '일반 상태';

  @override
  String get apiLevel => 'API 레벨';

  @override
  String get userApprovedEnrollment => '사용자 승인 등록';

  @override
  String get hostname => '호스트 이름';

  @override
  String get macAddress => 'MAC 주소';

  @override
  String get publicIp => '공인 IP';

  @override
  String get volumes => '볼륨';

  @override
  String volumeUsed(String percent) {
    return '$percent% 사용됨';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$total 중 $available 사용 가능';
  }

  @override
  String get encrypted => '암호화됨';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '코어 $cores개';
  }

  @override
  String processors(String count) {
    return '프로세서 $count개';
  }

  @override
  String get batteryLevel => '배터리 잔량';

  @override
  String get lastUser => '마지막 사용자';

  @override
  String get bootVolume => '부팅 볼륨';

  @override
  String get localUsers => '로컬 사용자';

  @override
  String get regularUsers => '일반 사용자';

  @override
  String get systemUsers => '시스템 사용자';

  @override
  String get admin => '관리자';

  @override
  String get assignToBlueprint => '블루프린트에 할당';

  @override
  String get installOnDevice => '기기에 설치';

  @override
  String get selectBlueprint => '블루프린트 선택';

  @override
  String get selectDevice => '기기 선택';

  @override
  String get selfServiceEnabled => '셀프 서비스';

  @override
  String get vppLicenses => 'VPP 라이선스';

  @override
  String get fileName => '파일 이름';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => '기기 인텔리전스';

  @override
  String get prismCategoryActivationLock => '활성화 잠금';

  @override
  String get prismCategoryApps => '애플리케이션';

  @override
  String get prismCategoryApplicationFirewall => '애플리케이션 방화벽';

  @override
  String get prismCategoryCellular => '셀룰러';

  @override
  String get prismCategoryCertificates => '인증서';

  @override
  String get prismCategoryDesktopAndScreensaver => '데스크톱 및 화면 보호기';

  @override
  String get prismCategoryDeviceInformation => '기기 정보';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper 및 XProtect';

  @override
  String get prismCategoryInstalledProfiles => '설치된 프로필';

  @override
  String get prismCategoryKernelExtensions => '커널 확장';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agent 및 Daemon';

  @override
  String get prismCategoryLocalUsers => '로컬 사용자';

  @override
  String get prismCategoryStartupSettings => '시작 설정';

  @override
  String get prismCategorySystemExtensions => '시스템 확장';

  @override
  String get prismCategoryTransparencyDatabase => '투명성 데이터베이스';

  @override
  String prismRecords(int count) {
    return '레코드 $count건';
  }

  @override
  String get prismNoData => '이 카테고리에 대한 데이터가 없습니다.';

  @override
  String get prismExport => 'CSV 내보내기';

  @override
  String get prismExportRequested => '내보내기가 요청되었습니다. 다운로드 링크가 곧 제공됩니다.';

  @override
  String get prismFilterByFamily => '기기 제품군';

  @override
  String get prismAllFamilies => '모든 제품군';

  @override
  String get appearance => '외관';

  @override
  String get themeMode => '테마';

  @override
  String get themeModeSystem => '시스템';

  @override
  String get themeModeLight => '라이트';

  @override
  String get themeModeDark => '다크';

  @override
  String get shortTypeScript => '스크립트';

  @override
  String get shortTypeCustom => '사용자 지정';

  @override
  String get shortTypeProfile => '프로필';

  @override
  String get shortTypeInHouse => '사내';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => '관리형';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => '보안';

  @override
  String get shortTypeAuto => '자동';

  @override
  String get categoryOsUpdates => 'OS 업데이트';

  @override
  String get categoryAutoApps => '자동 앱';

  @override
  String get autoApp => '자동 앱';

  @override
  String get fileSize => '파일 크기';

  @override
  String get unzipLocation => '압축 해제 위치';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => '파일 업데이트됨';

  @override
  String get mdmIdentifier => 'MDM 식별자';

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
  String get typeLabel => '유형';

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
