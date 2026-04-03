// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Thiết bị';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Người dùng';

  @override
  String get navSettings => 'Cài đặt';

  @override
  String get welcomeTitle => 'Chào mừng đến với FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Quản lý đội thiết bị Apple của bạn từ mọi nơi.';

  @override
  String get addProfile => 'Thêm Hồ sơ';

  @override
  String get editProfile => 'Sửa Hồ sơ';

  @override
  String get displayName => 'Tên hiển thị';

  @override
  String get displayNameHint => 'vd. Acme Corp — Prod';

  @override
  String get region => 'Khu vực';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Tên miền phụ';

  @override
  String get subdomainHint => 'tenant-cua-ban';

  @override
  String get apiToken => 'API Token';

  @override
  String get apiTokenHint => 'Dán API token tại đây';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'Xác minh & Lưu';

  @override
  String get verifying => 'Đang xác minh kết nối...';

  @override
  String get connectionSuccess => 'Kết nối được xác minh thành công!';

  @override
  String get errorInvalidToken =>
      'API token không hợp lệ. Vui lòng kiểm tra token của bạn trong bảng điều khiển web.';

  @override
  String get errorInsufficientPermissions =>
      'Không đủ quyền. Đảm bảo token có quyền đọc thiết bị.';

  @override
  String get errorNetworkUnreachable =>
      'Không thể kết nối API. Kiểm tra kết nối internet và tên miền phụ của bạn.';

  @override
  String get errorNotFound => 'Không tìm thấy tài nguyên được yêu cầu.';

  @override
  String get errorValidation =>
      'Yêu cầu chứa dữ liệu không hợp lệ. Vui lòng kiểm tra lại thông tin nhập.';

  @override
  String get errorRateLimit =>
      'Quá nhiều yêu cầu. Vui lòng đợi một lát và thử lại.';

  @override
  String get errorServer => 'Máy chủ gặp lỗi. Vui lòng thử lại sau.';

  @override
  String get errorUnexpected =>
      'Đã xảy ra lỗi không mong muốn. Vui lòng thử lại.';

  @override
  String get retry => 'Thử lại';

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get save => 'Lưu';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get searchDevices => 'Tìm thiết bị...';

  @override
  String get filterAll => 'Tất cả';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Tất cả Blueprints';

  @override
  String loadingDevices(int count) {
    return 'Đang tải $count thiết bị...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count thiết bị',
      one: '1 thiết bị',
      zero: 'Không có thiết bị',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Không tìm thấy thiết bị';

  @override
  String get noDevicesFoundMessage =>
      'Điều chỉnh tìm kiếm hoặc bộ lọc của bạn.';

  @override
  String lastCheckIn(String time) {
    return 'Check-in gần nhất: $time';
  }

  @override
  String get compliancePass => 'Đạt';

  @override
  String get complianceFail => 'Không đạt';

  @override
  String get compliancePending => 'Đang chờ';

  @override
  String get deviceDetails => 'Chi tiết Thiết bị';

  @override
  String get serialNumber => 'Số Serial';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'Phiên bản OS';

  @override
  String get assetTag => 'Thẻ Tài sản';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Ngày đăng ký';

  @override
  String get assignedUser => 'Người dùng được giao';

  @override
  String get actions => 'Hành động';

  @override
  String get actionLock => 'Khóa';

  @override
  String get actionRestart => 'Khởi động lại';

  @override
  String get actionShutdown => 'Tắt máy';

  @override
  String get actionErase => 'Xóa sạch';

  @override
  String get actionBlankPush => 'Gửi Blank Push';

  @override
  String get actionReinstallAgent => 'Cài đặt lại Agent';

  @override
  String get actionUpdateInventory => 'Cập nhật Kho';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Bật Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Tắt Remote Desktop';

  @override
  String get actionLostMode => 'Bật Chế độ Mất';

  @override
  String get destructiveActionTitle => 'Xác nhận Hành động Phá hủy';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Hành động này không thể hoàn tác. Nhập \"$deviceName\" để xác nhận.';
  }

  @override
  String get destructiveActionHint => 'Nhập tên thiết bị để xác nhận';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get actionSuccess => 'Hành động thực hiện thành công.';

  @override
  String get actionFailed => 'Hành động thất bại. Vui lòng thử lại.';

  @override
  String get biometricReason => 'Xác thực để truy cập FleetPilot';

  @override
  String get biometricReasonSecrets => 'Xác thực để xem dữ liệu nhạy cảm';

  @override
  String get biometricReasonDestructive =>
      'Xác thực để thực hiện hành động này';

  @override
  String get biometricFailed => 'Xác thực thất bại. Vui lòng thử lại.';

  @override
  String get profiles => 'Hồ sơ';

  @override
  String activeProfile(String name) {
    return 'Đang dùng: $name';
  }

  @override
  String get switchProfile => 'Chuyển Hồ sơ';

  @override
  String get deleteProfile => 'Xóa Hồ sơ';

  @override
  String get deleteProfileConfirm =>
      'Bạn có chắc muốn xóa hồ sơ này? Hành động này không thể hoàn tác.';

  @override
  String get noProfiles => 'Chưa có hồ sơ nào được cấu hình';

  @override
  String get settings => 'Cài đặt';

  @override
  String get about => 'Giới thiệu';

  @override
  String version(String version) {
    return 'Phiên bản $version';
  }

  @override
  String get validationRequired => 'Trường này là bắt buộc.';

  @override
  String get validationSubdomain =>
      'Chỉ cho phép chữ cái, số và dấu gạch ngang. Không được bắt đầu hoặc kết thúc bằng dấu gạch ngang.';

  @override
  String get validationToken =>
      'Định dạng token không hợp lệ. 20–500 ký tự, chỉ chữ và số cùng các ký tự phân tách thông dụng.';

  @override
  String pinLockedOut(int seconds) {
    return 'Quá nhiều lần thử sai. Thử lại sau $seconds giây.';
  }

  @override
  String get complianceStatus => 'Trạng thái Tuân thủ';

  @override
  String get platform => 'Nền tảng';

  @override
  String get deviceName => 'Tên Thiết bị';

  @override
  String get searchUsers => 'Tìm người dùng...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count người dùng',
      one: '1 người dùng',
      zero: 'Không có người dùng',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Không tìm thấy người dùng';

  @override
  String get noUsersFoundMessage => 'Điều chỉnh tìm kiếm hoặc bộ lọc của bạn.';

  @override
  String get showArchived => 'Hiển thị đã lưu trữ';

  @override
  String get archived => 'Đã lưu trữ';

  @override
  String get email => 'Email';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
      zero: 'Không có blueprint',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Không tìm thấy blueprint';

  @override
  String get noBlueprintsFoundMessage => 'Chưa có blueprint nào được cấu hình.';

  @override
  String get enrollmentActive => 'Đăng ký đang hoạt động';

  @override
  String get enrollmentInactive => 'Đăng ký không hoạt động';

  @override
  String get tabOverview => 'Tổng quan';

  @override
  String get tabApps => 'Ứng dụng';

  @override
  String get tabStatus => 'Trạng thái';

  @override
  String get tabActivity => 'Hoạt động';

  @override
  String get tabCommands => 'Lệnh';

  @override
  String get hardware => 'Phần cứng';

  @override
  String get security => 'Bảo mật';

  @override
  String get totalStorage => 'Tổng Bộ nhớ';

  @override
  String get availableStorage => 'Bộ nhớ Khả dụng';

  @override
  String get totalRam => 'Tổng RAM';

  @override
  String get wifiMac => 'Địa chỉ MAC Wi-Fi';

  @override
  String get encryption => 'Mã hóa';

  @override
  String get passcode => 'Mật mã';

  @override
  String get noAppsFound => 'Không tìm thấy ứng dụng';

  @override
  String get noActivityFound => 'Không tìm thấy hoạt động';

  @override
  String get noCommandsFound => 'Không tìm thấy lệnh';

  @override
  String get libraryItems => 'Mục Thư viện';

  @override
  String get parameters => 'Tham số';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Bản dựng OS';

  @override
  String get cellular => 'Di động';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ứng dụng',
      one: '1 ứng dụng',
      zero: 'Không có ứng dụng',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Chi tiết Người dùng';

  @override
  String get jobTitle => 'Chức danh';

  @override
  String get department => 'Phòng ban';

  @override
  String get createdAt => 'Ngày tạo';

  @override
  String get updatedAt => 'Ngày cập nhật';

  @override
  String get assignedDevices => 'Thiết bị được giao';

  @override
  String get noAssignedDevices =>
      'Không có thiết bị nào được giao cho người dùng này.';

  @override
  String get userInfo => 'Thông tin Người dùng';

  @override
  String get navMore => 'Thêm';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'Khóa Khôi phục FileVault';

  @override
  String get unlockPin => 'PIN Mở khóa';

  @override
  String get recoveryPassword => 'Mật khẩu Recovery Lock';

  @override
  String get bypassCode => 'Mã Bỏ qua Khóa Kích hoạt';

  @override
  String get noSecretsFound => 'Không có secrets khả dụng cho thiết bị này.';

  @override
  String get secretCopied => 'Secret đã sao chép vào bộ nhớ tạm';

  @override
  String get threats => 'Mối đe dọa';

  @override
  String get noThreatsFound => 'Không phát hiện mối đe dọa nào.';

  @override
  String get vulnerabilities => 'Lỗ hổng';

  @override
  String get noVulnerabilitiesFound => 'Không phát hiện lỗ hổng nào.';

  @override
  String get aboutApp => 'Giới thiệu FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot là ứng dụng quản lý MDM di động mã nguồn mở dành cho đội thiết bị Apple.';

  @override
  String get tapToCopy => 'Nhấn để sao chép';

  @override
  String get devices => 'Thiết bị';

  @override
  String get severity => 'Mức độ nghiêm trọng';

  @override
  String get tabLocation => 'Vị trí';

  @override
  String get locationNotAvailable =>
      'Dữ liệu vị trí không khả dụng cho thiết bị này.';

  @override
  String get enableLostModeHint =>
      'Bật chế độ mất để theo dõi vị trí thiết bị này.';

  @override
  String get lostModeEnabled => 'Chế độ Mất đã bật';

  @override
  String get noLibraryItemsFound => 'Không tìm thấy mục thư viện.';

  @override
  String get licenses => 'Giấy phép';

  @override
  String get lostModeMessage => 'Tin nhắn Chế độ Mất';

  @override
  String get lostModePhone => 'Số điện thoại';

  @override
  String get lostModeFootnote =>
      'Tin nhắn và số điện thoại tùy chọn hiển thị trên thiết bị';

  @override
  String get supervised => 'Được giám sát';

  @override
  String get unsupervised => 'Không giám sát';

  @override
  String get filterSupervised => 'Được giám sát';

  @override
  String get filterUnsupervised => 'Không giám sát';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get languageSystem => 'Mặc định Hệ thống';

  @override
  String get actionDisableLostMode => 'Tắt Chế độ Mất';

  @override
  String get actionClearPasscode => 'Xóa Mật mã';

  @override
  String get filterLostMode => 'Chế độ Mất';

  @override
  String get lostMode => 'Chế độ Mất';

  @override
  String get sectionManagement => 'Quản lý';

  @override
  String get sectionStatus => 'Trạng thái';

  @override
  String get statusMissing => 'Bị mất';

  @override
  String get statusRemoved => 'Đã xóa';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Mã định danh';

  @override
  String get processor => 'Bộ xử lý';

  @override
  String get hardwareUuid => 'UUID Phần cứng';

  @override
  String get devicePosture => 'Trạng thái Thiết bị';

  @override
  String get unknownDevice => 'Thiết bị Không xác định';

  @override
  String get securityAppLock => 'Khóa Ứng dụng';

  @override
  String get securityAppLockDescription =>
      'Đặt mã PIN 6 chữ số để bảo vệ ứng dụng. Xác thực sinh trắc học có thể được bật sau khi đặt PIN.';

  @override
  String get securityAppLockActive => 'Khóa ứng dụng đã bật';

  @override
  String get securityAppLockInactive => 'Chưa cấu hình khóa ứng dụng';

  @override
  String get securitySetPin => 'Đặt PIN';

  @override
  String get securityChangePin => 'Đổi PIN';

  @override
  String get securityRemovePin => 'Xóa PIN';

  @override
  String get securityCurrentPin => 'PIN Hiện tại';

  @override
  String get securityNewPin => 'PIN Mới';

  @override
  String get securityConfirmPin => 'Nhập lại PIN để xác nhận.';

  @override
  String get securityPinLength => 'PIN phải có 6 chữ số.';

  @override
  String get securityPinMismatch => 'PIN không khớp.';

  @override
  String get securityPinWrong => 'PIN sai.';

  @override
  String get securityPinSet => 'PIN đã được đặt.';

  @override
  String get securityPinChanged => 'PIN đã được đổi.';

  @override
  String get securityPinRemoved => 'PIN và khóa ứng dụng đã được xóa.';

  @override
  String get securityBiometric => 'Sinh trắc học';

  @override
  String get securityBiometricDescription =>
      'Sử dụng vân tay hoặc nhận diện khuôn mặt để mở khóa ứng dụng thay vì PIN.';

  @override
  String get securityBiometricEnable => 'Mở khóa Sinh trắc học';

  @override
  String get securityBiometricActive => 'Đang hoạt động';

  @override
  String get securityBiometricInactive => 'Không hoạt động';

  @override
  String get securityBiometricUnavailable =>
      'Xác thực sinh trắc học không khả dụng trên thiết bị này.';

  @override
  String get securityNext => 'Tiếp';

  @override
  String get actionRenewMdm => 'Gia hạn Hồ sơ MDM';

  @override
  String get actionSetName => 'Đặt Tên Thiết bị';

  @override
  String get actionSetNameHint => 'Nhập tên thiết bị mới';

  @override
  String get actionDeleteUser => 'Xóa Người dùng';

  @override
  String get actionDeleteUserName => 'Tên người dùng';

  @override
  String get actionDeleteAllUsers => 'Xóa Tất cả Người dùng';

  @override
  String get actionForceDeletion => 'Buộc Xóa';

  @override
  String get actionUnlockAccount => 'Mở khóa Tài khoản';

  @override
  String get actionPlayLostModeSound => 'Phát Âm thanh Chế độ Mất';

  @override
  String get actionUpdateLocation => 'Cập nhật Vị trí';

  @override
  String get erasePin => 'PIN 6 chữ số';

  @override
  String get erasePinHint => 'Bắt buộc cho thiết bị di động';

  @override
  String get erasePreserveDataPlan => 'Giữ Gói dữ liệu';

  @override
  String get eraseDisallowProximitySetup =>
      'Không cho phép Thiết lập Proximity';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Tin nhắn khóa (tùy chọn)';

  @override
  String get lockPhone => 'Số điện thoại';

  @override
  String get restartRebuildKernelCache => 'Xây dựng lại Bộ nhớ đệm Kernel';

  @override
  String get restartNotifyUser => 'Thông báo Người dùng';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Ghi chú';

  @override
  String get noNotesFound => 'Chưa có ghi chú';

  @override
  String get addNote => 'Thêm Ghi chú';

  @override
  String get editNote => 'Sửa Ghi chú';

  @override
  String get deleteNote => 'Xóa Ghi chú';

  @override
  String get deleteNoteConfirm => 'Bạn có chắc muốn xóa ghi chú này?';

  @override
  String get noteContent => 'Nội dung Ghi chú';

  @override
  String get noteSaved => 'Ghi chú đã lưu.';

  @override
  String get noteDeleted => 'Ghi chú đã xóa.';

  @override
  String get editDevice => 'Sửa Thiết bị';

  @override
  String get deviceUpdated => 'Thiết bị đã cập nhật.';

  @override
  String get deleteDevice => 'Xóa Thiết bị';

  @override
  String get deleteDeviceConfirm =>
      'Thiết bị sẽ bị xóa vĩnh viễn khỏi MDM. Hành động này không thể hoàn tác.';

  @override
  String get deviceDeleted => 'Thiết bị đã xóa.';

  @override
  String get cancelLostMode => 'Hủy Chế độ Mất';

  @override
  String get cancelLostModeConfirm => 'Hủy yêu cầu chế độ mất đang chờ?';

  @override
  String get lostModeCancelled => 'Chế độ mất đã hủy.';

  @override
  String get tags => 'Thẻ';

  @override
  String get noTags => 'Không có thẻ';

  @override
  String get addTag => 'Thêm Thẻ';

  @override
  String get tagName => 'Tên Thẻ';

  @override
  String get manageTags => 'Quản lý Thẻ';

  @override
  String get auditLog => 'Nhật ký Kiểm toán';

  @override
  String get noAuditEvents => 'Không tìm thấy sự kiện kiểm toán';

  @override
  String get actionDailyCheckIn => 'Check-in Hằng ngày';

  @override
  String get licensing => 'Cấp phép';

  @override
  String get deviceLimit => 'Giới hạn Thiết bị';

  @override
  String get devicesUsed => 'Thiết bị đã dùng';

  @override
  String get licenseType => 'Loại Giấy phép';

  @override
  String get appleDevices => 'Thiết bị Apple';

  @override
  String get deleteUser => 'Xóa Người dùng';

  @override
  String get deleteUserConfirm =>
      'Bạn có chắc muốn xóa người dùng này? Hành động này không thể hoàn tác.';

  @override
  String get userDeleted => 'Người dùng đã xóa.';

  @override
  String get createBlueprint => 'Tạo Blueprint';

  @override
  String get editBlueprint => 'Sửa Blueprint';

  @override
  String get deleteBlueprint => 'Xóa Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Xóa blueprint này sẽ hủy đăng ký tất cả thiết bị được giao. Hành động này không thể hoàn tác.';

  @override
  String get blueprintCreated => 'Blueprint đã tạo.';

  @override
  String get blueprintUpdated => 'Blueprint đã cập nhật.';

  @override
  String get blueprintDeleted => 'Blueprint đã xóa.';

  @override
  String get blueprintName => 'Tên Blueprint';

  @override
  String get blueprintDescription => 'Mô tả';

  @override
  String get enrollmentCode => 'Mã Đăng ký';

  @override
  String get assignLibraryItem => 'Gán Mục Thư viện';

  @override
  String get removeLibraryItem => 'Xóa Mục Thư viện';

  @override
  String get libraryItemAssigned => 'Mục thư viện đã gán.';

  @override
  String get libraryItemRemoved => 'Mục thư viện đã xóa.';

  @override
  String get lostModeDetails => 'Chi tiết Chế độ Mất';

  @override
  String get lostModeEnabledBy => 'Được bật bởi';

  @override
  String get lostModeEnabledAt => 'Được bật lúc';

  @override
  String get searchBlueprints => 'Tìm blueprint...';

  @override
  String get searchVulnerabilities => 'Tìm lỗ hổng...';

  @override
  String get searchThreats => 'Tìm mối đe dọa...';

  @override
  String get searchAuditLog => 'Tìm nhật ký kiểm toán...';

  @override
  String get filterCritical => 'Nghiêm trọng';

  @override
  String get filterHigh => 'Cao';

  @override
  String get filterMedium => 'Trung bình';

  @override
  String get filterLow => 'Thấp';

  @override
  String get filterClearAll => 'Xóa Tất cả';

  @override
  String get filterTitle => 'Bộ lọc';

  @override
  String get filterApply => 'Áp dụng';

  @override
  String get filterPlatform => 'Nền tảng';

  @override
  String get filterSupervision => 'Giám sát';

  @override
  String get filterStatus => 'Trạng thái';

  @override
  String get adeIntegrations => 'Tích hợp ADE';

  @override
  String get noAdeIntegrations => 'Không tìm thấy tích hợp ADE.';

  @override
  String get adeDevices => 'Thiết bị ADE';

  @override
  String get noAdeDevices => 'Không tìm thấy thiết bị ADE.';

  @override
  String get tokenExpiry => 'Hạn Token';

  @override
  String get tokenValid => 'Token hợp lệ';

  @override
  String get tokenExpired => 'Token hết hạn';

  @override
  String get orgName => 'Tổ chức';

  @override
  String get defaultBlueprint => 'Blueprint Mặc định';

  @override
  String get renewToken => 'Gia hạn Token';

  @override
  String get publicKey => 'Khóa Công khai';

  @override
  String get vulnerabilityDetections => 'Phát hiện Lỗ hổng';

  @override
  String get noDetectionsFound => 'Không tìm thấy phát hiện.';

  @override
  String get behavioralDetections => 'Phát hiện Hành vi';

  @override
  String get noBehavioralDetections => 'Không tìm thấy phát hiện hành vi.';

  @override
  String get searchBehavioralDetections => 'Tìm phát hiện...';

  @override
  String get affectedDevices => 'Thiết bị Bị ảnh hưởng';

  @override
  String get noAffectedDevices =>
      'Không tìm thấy thiết bị bị ảnh hưởng. Các thiết bị trước đó bị ảnh hưởng có thể đã bị xóa.';

  @override
  String get affectedSoftware => 'Phần mềm Bị ảnh hưởng';

  @override
  String get blueprintTemplates => 'Mẫu Blueprint';

  @override
  String get noTemplatesFound => 'Không tìm thấy mẫu.';

  @override
  String get otaEnrollmentProfile => 'Hồ sơ Đăng ký OTA';

  @override
  String get libraryItemActivity => 'Hoạt động';

  @override
  String get libraryItemDeploymentStatus => 'Trạng thái Triển khai';

  @override
  String get noActivityFound2 => 'Không tìm thấy hoạt động.';

  @override
  String get noStatusFound => 'Không tìm thấy trạng thái triển khai.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phát hiện',
      one: '1 phát hiện',
      zero: 'Không có phát hiện',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tích hợp',
      one: '1 tích hợp',
      zero: 'Không có tích hợp',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Chi tiết Lỗ hổng';

  @override
  String get description => 'Mô tả';

  @override
  String get firstDetected => 'Phát hiện Lần đầu';

  @override
  String get lastDetected => 'Phát hiện Gần nhất';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count phần mềm',
      one: '1 phần mềm',
      zero: 'Không có phần mềm',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Sửa Tích hợp';

  @override
  String get deleteIntegration => 'Xóa Tích hợp';

  @override
  String get deleteIntegrationConfirm =>
      'Bạn có chắc muốn xóa tích hợp ADE này? Hành động này không thể hoàn tác.';

  @override
  String get integrationDeleted => 'Tích hợp đã xóa.';

  @override
  String get integrationUpdated => 'Tích hợp đã cập nhật.';

  @override
  String get defaultBlueprintId => 'ID Blueprint Mặc định';

  @override
  String get phone => 'Điện thoại';

  @override
  String get downloadOtaProfile => 'Tải hồ sơ đăng ký';

  @override
  String get otaProfileCopied => 'Hồ sơ đăng ký đã sao chép vào bộ nhớ tạm.';

  @override
  String get noOtaProfile => 'Không có hồ sơ đăng ký khả dụng.';

  @override
  String get createTag => 'Tạo Thẻ';

  @override
  String get editTag => 'Sửa Thẻ';

  @override
  String get deleteTag => 'Xóa Thẻ';

  @override
  String get deleteTagConfirm => 'Bạn có chắc muốn xóa thẻ này?';

  @override
  String get tagColor => 'Màu sắc';

  @override
  String get tagCreated => 'Thẻ đã tạo.';

  @override
  String get tagUpdated => 'Thẻ đã cập nhật.';

  @override
  String get tagDeleted => 'Thẻ đã xóa.';

  @override
  String get noTagsFound => 'Không tìm thấy thẻ.';

  @override
  String get libraryItemDetail => 'Mục Thư viện';

  @override
  String get viewActivity => 'Xem Hoạt động';

  @override
  String get viewStatus => 'Xem Trạng thái';

  @override
  String get installations => 'Cài đặt';

  @override
  String get createAdeIntegration => 'Tạo Tích hợp ADE';

  @override
  String get adeCreateDescription =>
      'Tải lên tệp server token (.p7m) từ Apple Business Manager để tạo tích hợp ADE mới.';

  @override
  String get selectTokenFile => 'Chọn Tệp Token';

  @override
  String tokenFileSelected(String name) {
    return 'Tệp token: $name';
  }

  @override
  String get noTokenFileSelected => 'Chưa chọn tệp token';

  @override
  String get integrationCreated => 'Tích hợp đã tạo.';

  @override
  String get create => 'Tạo';

  @override
  String get step1GetPublicKey => 'Bước 1: Tải Khóa Công khai';

  @override
  String get step1Description =>
      'Sao chép khóa công khai và tải lên Apple Business Manager.';

  @override
  String get step2UploadToken => 'Bước 2: Tải lên Server Token';

  @override
  String get step2Description => 'Chọn tệp token .p7m bạn đã tải từ Apple.';

  @override
  String get step3Configure => 'Bước 3: Cấu hình';

  @override
  String get publicKeyCopied => 'Khóa công khai đã sao chép vào bộ nhớ tạm.';

  @override
  String get renewTokenDescription =>
      'Tải lên tệp token .p7m mới để gia hạn token của tích hợp này.';

  @override
  String get tokenRenewed => 'Token đã gia hạn.';

  @override
  String get aboutLinks => 'Liên kết';

  @override
  String get aboutWebsite => 'Trang web';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Mã nguồn';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Công nghệ';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Quản lý Trạng thái';

  @override
  String get aboutArchitecture => 'Kiến trúc';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Lớp Dữ liệu';

  @override
  String get aboutNavigationLabel => 'Điều hướng';

  @override
  String get aboutOpenSourceLicenses => 'Giấy phép Mã nguồn mở';

  @override
  String get aboutShowHide => 'Chuyển đổi Hiển thị';

  @override
  String get editProfileTitle => 'Sửa Kết nối';

  @override
  String get editProfileSubtitle => 'Cập nhật cài đặt kết nối tenant của bạn.';

  @override
  String get apiTokenHintEdit => 'Để trống để giữ token hiện tại';

  @override
  String get profileUpdated => 'Hồ sơ đã cập nhật.';

  @override
  String profileSwitched(String name) {
    return 'Đã chuyển sang $name.';
  }

  @override
  String get securityAutoLock => 'Khóa Tự động';

  @override
  String get securityAutoLockDescription =>
      'Tự động yêu cầu xác thực sau khi ứng dụng ở chế độ nền.';

  @override
  String get timeoutImmediately => 'Ngay lập tức';

  @override
  String get timeoutSeconds30 => 'Sau 30 giây';

  @override
  String get timeoutSeconds60 => 'Sau 1 phút';

  @override
  String get timeoutSeconds120 => 'Sau 2 phút';

  @override
  String get timeoutMinutes5 => 'Sau 5 phút';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Không có Blueprint';

  @override
  String get presetSaveFilter => 'Lưu Bộ lọc Mẫu';

  @override
  String get presetLoad => 'Tải Mẫu';

  @override
  String get presetName => 'Tên Mẫu';

  @override
  String get presetNameHint => 'vd. Mac Không giám sát';

  @override
  String get presetSaved => 'Bộ lọc mẫu đã lưu.';

  @override
  String get presetDeleted => 'Bộ lọc mẫu đã xóa.';

  @override
  String presetApplied(String name) {
    return 'Mẫu \"$name\" đã áp dụng.';
  }

  @override
  String get presetNoPresets => 'Không có mẫu đã lưu';

  @override
  String get presetNoPresetsMessage =>
      'Lưu bộ lọc hiện tại của bạn làm mẫu để truy cập nhanh.';

  @override
  String get presetDeleteConfirm => 'Xóa mẫu này?';

  @override
  String get presetNameRequired => 'Vui lòng nhập tên cho mẫu.';

  @override
  String selectedCount(int count) {
    return '$count đã chọn';
  }

  @override
  String get selectAll => 'Chọn Tất cả';

  @override
  String get deselectAll => 'Bỏ chọn Tất cả';

  @override
  String get bulkActions => 'Hành động';

  @override
  String bulkActionsTitle(int count) {
    return 'Hành động cho $count thiết bị';
  }

  @override
  String get bulkActionAssignTag => 'Gán Thẻ';

  @override
  String get bulkActionAssignTagDescription =>
      'Thêm thẻ cho tất cả thiết bị đã chọn';

  @override
  String get bulkActionAssignBlueprint => 'Gán Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Di chuyển thiết bị đã chọn vào một blueprint';

  @override
  String get bulkActionLock => 'Khóa Thiết bị';

  @override
  String get bulkActionLockDescription => 'Khóa từ xa tất cả thiết bị đã chọn';

  @override
  String get bulkActionRestart => 'Khởi động lại Thiết bị';

  @override
  String get bulkActionRestartDescription =>
      'Khởi động lại tất cả thiết bị đã chọn';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Bạn có chắc muốn khởi động lại $count thiết bị?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Hành động hoàn tất thành công trên $count thiết bị.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Hoàn tất trên $success thiết bị, $failed thất bại.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed trong $total hoàn tất';
  }

  @override
  String get biometricReasonBulkAction =>
      'Xác thực để thực hiện hành động hàng loạt';

  @override
  String get lockPin => 'PIN Khóa (tùy chọn)';

  @override
  String get noTagsAvailable =>
      'Không có thẻ khả dụng. Tạo thẻ trong bảng điều khiển web MDM.';

  @override
  String get noBlueprintsAvailable => 'Không có blueprint khả dụng.';

  @override
  String get selectADevice => 'Chọn thiết bị';

  @override
  String get selectABlueprint => 'Chọn blueprint';

  @override
  String get clearSearch => 'Xóa Tìm kiếm';

  @override
  String get refresh => 'Làm mới';

  @override
  String get moreActions => 'Thêm Hành động';

  @override
  String get close => 'Đóng';

  @override
  String get onboardingSkip => 'Bỏ qua';

  @override
  String get onboardingNext => 'Tiếp';

  @override
  String get onboardingGetStarted => 'Bắt đầu';

  @override
  String get onboardingWelcomeTitle => 'Chào mừng đến với FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Trung tâm điều khiển di động của bạn cho quản lý đội thiết bị Apple. Giám sát, quản lý và bảo mật toàn bộ đội thiết bị từ mọi nơi.';

  @override
  String get onboardingDevicesTitle => 'Quản lý Thiết bị';

  @override
  String get onboardingDevicesSubtitle =>
      'Khả năng quan sát và kiểm soát toàn diện mọi thiết bị trong đội của bạn.';

  @override
  String get onboardingDevicesFeature1 =>
      'Xem tất cả iPhone, iPad, Mac và Apple TV đã đăng ký';

  @override
  String get onboardingDevicesFeature2 =>
      'Gửi lệnh từ xa: khóa, khởi động lại, xóa sạch và nhiều hơn nữa';

  @override
  String get onboardingDevicesFeature3 =>
      'Theo dõi blueprints, ứng dụng và trạng thái tuân thủ';

  @override
  String get onboardingSecurityTitle => 'Xây dựng cho Bảo mật';

  @override
  String get onboardingSecuritySubtitle =>
      'Dữ liệu đội thiết bị của bạn được bảo vệ với nhiều lớp bảo mật.';

  @override
  String get onboardingSecurityFeature1 =>
      'Xác thực sinh trắc học với Face ID hoặc vân tay';

  @override
  String get onboardingSecurityFeature2 =>
      'Khóa PIN 6 chữ số cho truy cập ứng dụng';

  @override
  String get onboardingSecurityFeature3 =>
      'Tự động khóa phiên sau thời gian chờ';

  @override
  String get onboardingReadyTitle => 'Sẵn sàng Bắt đầu';

  @override
  String get onboardingReadySubtitle =>
      'Kết nối tenant MDM của bạn để bắt đầu quản lý đội thiết bị Apple. Tiếp theo, thiết lập kết nối API và PIN bảo mật.';

  @override
  String get searchTags => 'Tìm thẻ';

  @override
  String tagDeviceCount(int count) {
    return '$count thiết bị';
  }

  @override
  String get sortTitle => 'Sắp xếp';

  @override
  String get sortDirection => 'Hướng Sắp xếp';

  @override
  String get ascending => 'Tăng dần';

  @override
  String get descending => 'Giảm dần';

  @override
  String get filterSeverity => 'Mức độ nghiêm trọng';

  @override
  String get filterSort => 'Lọc & Sắp xếp';

  @override
  String get statusQuarantined => 'Cách ly';

  @override
  String get statusNotQuarantined => 'Không cách ly';

  @override
  String get statusDetected => 'Đã phát hiện';

  @override
  String get statusReleased => 'Đã phát hành';

  @override
  String get severityCritical => 'Nghiêm trọng';

  @override
  String get severityHigh => 'Cao';

  @override
  String get severityMedium => 'Trung bình';

  @override
  String get severityLow => 'Thấp';

  @override
  String threatCount(int count) {
    return '$count mối đe dọa';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count phát hiện';
  }

  @override
  String get downloadPublicKey => 'Tải xuống';

  @override
  String get publicKeySaved => 'Khóa công khai đã lưu';

  @override
  String get sortBy => 'Sắp xếp theo';

  @override
  String get sortByCvss => 'Điểm CVSS';

  @override
  String get sortByDeviceCount => 'Thiết bị Bị ảnh hưởng';

  @override
  String get sortByCveId => 'CVE ID';

  @override
  String vulnCount(int count) {
    return '$count lỗ hổng';
  }

  @override
  String get assignTags => 'Thẻ';

  @override
  String get noTagsAvailableMessage =>
      'Không có thẻ khả dụng. Hãy tạo thẻ trước.';

  @override
  String get failedToLoadTags => 'Không thể tải thẻ';

  @override
  String get details => 'Chi tiết';

  @override
  String get searchLibraryItems => 'Tìm mục thư viện...';

  @override
  String get categoryCustomScript => 'Script Tùy chỉnh';

  @override
  String get categoryCustomApp => 'Ứng dụng Tùy chỉnh';

  @override
  String get categoryCustomProfile => 'Hồ sơ Tùy chỉnh';

  @override
  String get categoryInHouseApp => 'Ứng dụng In-House';

  @override
  String get categoryBuiltIn => 'Tích hợp sẵn';

  @override
  String get categoryVppApps => 'Ứng dụng VPP / App Store';

  @override
  String get categoryManagedProfiles => 'Hồ sơ Được quản lý';

  @override
  String get categoryKandjiSetup => 'Thiết lập MDM';

  @override
  String get categoryMacosRelease => 'Cập nhật macOS';

  @override
  String get categoryThreatPolicy => 'Chính sách Bảo mật';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
    );
    return 'Trong $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Một lần';

  @override
  String get executionFrequencyEvery15Min => 'Mỗi 15 phút';

  @override
  String get executionFrequencyEveryDay => 'Hằng ngày';

  @override
  String get executionFrequencyNoEnforcement => 'Không áp dụng';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Script Khắc phục';

  @override
  String get allProperties => 'Tất cả Thuộc tính';

  @override
  String get builtInLibraryItem => 'Mục Thư viện Tích hợp sẵn';

  @override
  String get builtInDetailsHint => 'Chi tiết có trên tab Trạng thái';

  @override
  String get active => 'Hoạt động';

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';

  @override
  String get execution => 'Thực thi';

  @override
  String get restart => 'Khởi động lại';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Loại Cài đặt';

  @override
  String get enforcement => 'Áp dụng';

  @override
  String get runsOnMac => 'Chạy trên Mac';

  @override
  String get runsOnIphone => 'Chạy trên iPhone';

  @override
  String get runsOnIpad => 'Chạy trên iPad';

  @override
  String get appName => 'Tên Ứng dụng';

  @override
  String get appVersion => 'Phiên bản Ứng dụng';

  @override
  String get minOsVersion => 'Phiên bản OS Tối thiểu';

  @override
  String get created => 'Ngày tạo';

  @override
  String get updated => 'Ngày cập nhật';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count mục',
      one: '1 mục',
      zero: 'Không có mục',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Đã giải quyết';

  @override
  String get severityInformational => 'Thông tin';

  @override
  String get managementState => 'Trạng thái Quản lý';

  @override
  String get managementStateOpen => 'Mở';

  @override
  String get managementStateClosed => 'Đã đóng';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Đáng ngờ';

  @override
  String get classificationMal => 'Độc hại';

  @override
  String get blueprintRouting => 'Routing Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Mã đăng ký và routing cho đăng ký thủ công / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'Routing blueprint chưa được cấu hình cho tenant này.';

  @override
  String get enrollmentCodeActive => 'Hoạt động';

  @override
  String get enrollmentCodeInactive => 'Không hoạt động';

  @override
  String get routingActivity => 'Hoạt động Routing';

  @override
  String get noRoutingActivity => 'Không tìm thấy hoạt động routing.';

  @override
  String get selfServiceCategories => 'Danh mục Self Service';

  @override
  String get selfServiceDesc =>
      'Quản lý danh mục Self Service cho người dùng của bạn';

  @override
  String get addCategory => 'Thêm Danh mục';

  @override
  String get categoryName => 'Tên Danh mục';

  @override
  String get deleteCategory => 'Xóa Danh mục';

  @override
  String get deleteCategoryConfirm => 'Bạn có chắc muốn xóa danh mục này?';

  @override
  String get noCategoriesFound => 'Không tìm thấy danh mục.';

  @override
  String get categoryCreated => 'Danh mục đã tạo';

  @override
  String get categoryDeleted => 'Danh mục đã xóa';

  @override
  String get profileBody => 'XML Hồ sơ';

  @override
  String get customProfile => 'Hồ sơ Tùy chỉnh';

  @override
  String get classification => 'Phân loại';

  @override
  String get mdmEnabled => 'MDM Đã bật';

  @override
  String get enrolledViaDep => 'Đăng ký qua DEP';

  @override
  String get userApprovedMdm => 'MDM Được Người dùng Chấp thuận';

  @override
  String get network => 'Mạng';

  @override
  String get ipAddress => 'Địa chỉ IP';

  @override
  String get wifiNetwork => 'Mạng Wi-Fi';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Khóa Kích hoạt';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Chế độ Nhà phát triển';

  @override
  String get adbEnabled => 'ADB Đã bật';

  @override
  String get unknownSources => 'Nguồn Không xác định';

  @override
  String get securityPatch => 'Bản vá Bảo mật';

  @override
  String get provisioningUdid => 'UDID Provisioning';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Thông tin MDM';

  @override
  String get lastEnrollment => 'Đăng ký Gần nhất';

  @override
  String get enterpriseId => 'ID Enterprise';

  @override
  String get manufacturer => 'Nhà sản xuất';

  @override
  String get generalStatus => 'Trạng thái Chung';

  @override
  String get apiLevel => 'API Level';

  @override
  String get userApprovedEnrollment => 'Đăng ký Được Người dùng Chấp thuận';

  @override
  String get hostname => 'Hostname';

  @override
  String get macAddress => 'Địa chỉ MAC';

  @override
  String get publicIp => 'IP Công cộng';

  @override
  String get volumes => 'Ổ đĩa';

  @override
  String volumeUsed(String percent) {
    return '$percent% đã dùng';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available trống trên tổng $total';
  }

  @override
  String get encrypted => 'Đã mã hóa';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores lõi';
  }

  @override
  String processors(String count) {
    return '$count bộ xử lý';
  }

  @override
  String get batteryLevel => 'Mức Pin';

  @override
  String get lastUser => 'Người dùng Gần nhất';

  @override
  String get bootVolume => 'Ổ đĩa Khởi động';

  @override
  String get localUsers => 'Người dùng Cục bộ';

  @override
  String get regularUsers => 'Người dùng Thông thường';

  @override
  String get systemUsers => 'Người dùng Hệ thống';

  @override
  String get admin => 'Quản trị viên';

  @override
  String get assignToBlueprint => 'Gán vào Blueprint';

  @override
  String get installOnDevice => 'Cài đặt trên Thiết bị';

  @override
  String get selectBlueprint => 'Chọn Blueprint';

  @override
  String get selectDevice => 'Chọn Thiết bị';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Giấy phép VPP';

  @override
  String get fileName => 'Tên Tệp';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Khóa Kích hoạt';

  @override
  String get prismCategoryApps => 'Ứng dụng';

  @override
  String get prismCategoryApplicationFirewall => 'Tường lửa Ứng dụng';

  @override
  String get prismCategoryCellular => 'Di động';

  @override
  String get prismCategoryCertificates => 'Chứng chỉ';

  @override
  String get prismCategoryDesktopAndScreensaver =>
      'Desktop & Trình bảo vệ Màn hình';

  @override
  String get prismCategoryDeviceInformation => 'Thông tin Thiết bị';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper & XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Hồ sơ Đã cài đặt';

  @override
  String get prismCategoryKernelExtensions => 'Phần mở rộng Kernel';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents & Daemons';

  @override
  String get prismCategoryLocalUsers => 'Người dùng Cục bộ';

  @override
  String get prismCategoryStartupSettings => 'Cài đặt Khởi động';

  @override
  String get prismCategorySystemExtensions => 'Phần mở rộng Hệ thống';

  @override
  String get prismCategoryTransparencyDatabase => 'Cơ sở dữ liệu Minh bạch';

  @override
  String prismRecords(int count) {
    return '$count bản ghi';
  }

  @override
  String get prismNoData => 'Không có dữ liệu cho danh mục này.';

  @override
  String get prismExport => 'Xuất CSV';

  @override
  String get prismExportRequested =>
      'Đã yêu cầu xuất. Liên kết tải xuống sẽ sớm khả dụng.';

  @override
  String get prismFilterByFamily => 'Họ Thiết bị';

  @override
  String get prismAllFamilies => 'Tất cả Họ';

  @override
  String get appearance => 'Giao diện';

  @override
  String get themeMode => 'Chủ đề';

  @override
  String get themeModeSystem => 'Hệ thống';

  @override
  String get themeModeLight => 'Sáng';

  @override
  String get themeModeDark => 'Tối';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Tùy chỉnh';

  @override
  String get shortTypeProfile => 'Hồ sơ';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Quản lý';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Bảo mật';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Cập nhật OS';

  @override
  String get categoryAutoApps => 'Ứng dụng Auto';

  @override
  String get autoApp => 'Ứng dụng Auto';

  @override
  String get fileSize => 'Kích thước Tệp';

  @override
  String get unzipLocation => 'Vị trí Giải nén';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Tệp đã cập nhật';

  @override
  String get mdmIdentifier => 'Mã định danh MDM';

  @override
  String get bundleId => 'Bundle ID';

  @override
  String get appleTV => 'Apple TV';

  @override
  String get appleVision => 'Apple Vision';

  @override
  String get appleWatch => 'Apple Watch';

  @override
  String get iPodLabel => 'iPod';

  @override
  String get typeLabel => 'Loại';

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
