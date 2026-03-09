// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => '设备';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => '用户';

  @override
  String get navSettings => '设置';

  @override
  String get welcomeTitle => '欢迎使用 FleetPilot';

  @override
  String get welcomeSubtitle => '随时随地管理您的 Apple 设备队列。';

  @override
  String get addProfile => '添加配置';

  @override
  String get editProfile => '编辑配置';

  @override
  String get displayName => '显示名称';

  @override
  String get displayNameHint => '例如 Acme Corp — Prod';

  @override
  String get region => '地区';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => '子域名';

  @override
  String get subdomainHint => 'your-tenant';

  @override
  String get apiToken => 'API 令牌';

  @override
  String get apiTokenHint => '在此粘贴您的 API 令牌';

  @override
  String urlPreview(String url) {
    return 'API 地址：$url';
  }

  @override
  String get verifyAndSave => '验证并保存';

  @override
  String get verifying => '正在验证连接...';

  @override
  String get connectionSuccess => '连接验证成功！';

  @override
  String get errorInvalidToken => '无效的 API 令牌。请在网页控制台中检查您的令牌。';

  @override
  String get errorInsufficientPermissions => '权限不足。请确保令牌具有设备的读取权限。';

  @override
  String get errorNetworkUnreachable => '无法访问 API。请检查您的网络连接和子域名。';

  @override
  String get errorNotFound => '未找到请求的资源。';

  @override
  String get errorValidation => '请求包含无效数据。请检查您的输入。';

  @override
  String get errorRateLimit => '请求过于频繁。请稍后再试。';

  @override
  String get errorServer => '服务器遇到错误。请稍后再试。';

  @override
  String get errorUnexpected => '发生意外错误。请重试。';

  @override
  String get retry => '重试';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get save => '保存';

  @override
  String get search => '搜索';

  @override
  String get searchDevices => '搜索设备...';

  @override
  String get filterAll => '全部';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => '所有 Blueprints';

  @override
  String loadingDevices(int count) {
    return '正在加载 $count 台设备...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 台设备',
      zero: '没有设备',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => '未找到设备';

  @override
  String get noDevicesFoundMessage => '请尝试调整搜索条件或筛选器。';

  @override
  String lastCheckIn(String time) {
    return '上次签到：$time';
  }

  @override
  String get compliancePass => '合规';

  @override
  String get complianceFail => '不合规';

  @override
  String get compliancePending => '待定';

  @override
  String get deviceDetails => '设备详情';

  @override
  String get serialNumber => '序列号';

  @override
  String get model => '型号';

  @override
  String get osVersion => '操作系统版本';

  @override
  String get assetTag => '资产标签';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => '注册时间';

  @override
  String get assignedUser => '分配用户';

  @override
  String get actions => '操作';

  @override
  String get actionLock => '锁定';

  @override
  String get actionRestart => '重新启动';

  @override
  String get actionShutdown => '关机';

  @override
  String get actionErase => '抹除';

  @override
  String get actionBlankPush => '发送空推送';

  @override
  String get actionReinstallAgent => '重新安装代理';

  @override
  String get actionUpdateInventory => '更新清单';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => '启用远程桌面';

  @override
  String get actionRemoteDesktopDisable => '禁用远程桌面';

  @override
  String get actionLostMode => '启用丢失模式';

  @override
  String get destructiveActionTitle => '确认危险操作';

  @override
  String destructiveActionMessage(String deviceName) {
    return '此操作无法撤销。请输入“$deviceName”以确认。';
  }

  @override
  String get destructiveActionHint => '输入设备名称以确认';

  @override
  String get confirm => '确认';

  @override
  String get actionSuccess => '操作执行成功。';

  @override
  String get actionFailed => '操作失败。请重试。';

  @override
  String get biometricReason => '验证身份以访问 FleetPilot';

  @override
  String get biometricReasonSecrets => '验证身份以查看敏感数据';

  @override
  String get biometricReasonDestructive => '验证身份以执行此操作';

  @override
  String get biometricFailed => '身份验证失败。请重试。';

  @override
  String get profiles => '配置';

  @override
  String activeProfile(String name) {
    return '当前：$name';
  }

  @override
  String get switchProfile => '切换配置';

  @override
  String get deleteProfile => '删除配置';

  @override
  String get deleteProfileConfirm => '确定要删除此配置吗？此操作无法撤销。';

  @override
  String get noProfiles => '未配置任何连接';

  @override
  String get settings => '设置';

  @override
  String get about => '关于';

  @override
  String version(String version) {
    return '版本 $version';
  }

  @override
  String get validationRequired => '此字段为必填项。';

  @override
  String get validationSubdomain => '仅允许字母、数字和连字符。不能以连字符开头或结尾。';

  @override
  String get validationToken => '令牌格式无效。需要 20–500 个字符，仅限字母数字和常见分隔符。';

  @override
  String pinLockedOut(int seconds) {
    return '尝试次数过多。请在 $seconds 秒后重试。';
  }

  @override
  String get complianceStatus => '合规状态';

  @override
  String get platform => '平台';

  @override
  String get deviceName => '设备名称';

  @override
  String get searchUsers => '搜索用户...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个用户',
      zero: '没有用户',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => '未找到用户';

  @override
  String get noUsersFoundMessage => '请尝试调整搜索条件或筛选器。';

  @override
  String get showArchived => '显示已归档';

  @override
  String get archived => '已归档';

  @override
  String get email => '电子邮件';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个 Blueprints',
      zero: '没有 Blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => '未找到 Blueprints';

  @override
  String get noBlueprintsFoundMessage => '尚未配置任何 Blueprints。';

  @override
  String get enrollmentActive => '注册已激活';

  @override
  String get enrollmentInactive => '注册未激活';

  @override
  String get tabOverview => '概览';

  @override
  String get tabApps => '应用';

  @override
  String get tabStatus => '状态';

  @override
  String get tabActivity => '活动';

  @override
  String get tabCommands => '命令';

  @override
  String get hardware => '硬件';

  @override
  String get security => '安全';

  @override
  String get totalStorage => '总存储空间';

  @override
  String get availableStorage => '可用存储空间';

  @override
  String get totalRam => '总内存';

  @override
  String get wifiMac => 'Wi-Fi MAC 地址';

  @override
  String get encryption => '加密';

  @override
  String get passcode => '密码';

  @override
  String get noAppsFound => '未找到应用';

  @override
  String get noActivityFound => '未找到活动记录';

  @override
  String get noCommandsFound => '未找到命令';

  @override
  String get libraryItems => '资源库项目';

  @override
  String get parameters => '参数';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => '操作系统版本号';

  @override
  String get cellular => '蜂窝网络';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个应用',
      zero: '没有应用',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => '用户详情';

  @override
  String get jobTitle => '职位';

  @override
  String get department => '部门';

  @override
  String get createdAt => '创建时间';

  @override
  String get updatedAt => '更新时间';

  @override
  String get assignedDevices => '分配的设备';

  @override
  String get noAssignedDevices => '该用户没有分配的设备。';

  @override
  String get userInfo => '用户信息';

  @override
  String get navMore => '更多';

  @override
  String get tabSecrets => '密钥';

  @override
  String get filevaultKey => 'FileVault 恢复密钥';

  @override
  String get unlockPin => '解锁 PIN';

  @override
  String get recoveryPassword => 'Recovery Lock 密码';

  @override
  String get bypassCode => '激活锁绕过代码';

  @override
  String get noSecretsFound => '此设备没有可用的密钥。';

  @override
  String get secretCopied => '密钥已复制到剪贴板';

  @override
  String get threats => '威胁';

  @override
  String get noThreatsFound => '未检测到威胁。';

  @override
  String get vulnerabilities => '漏洞';

  @override
  String get noVulnerabilitiesFound => '未检测到漏洞。';

  @override
  String get aboutApp => '关于 FleetPilot';

  @override
  String get aboutDescription => 'FleetPilot 是一款用于管理 Apple 设备队列的开源 MDM 管理应用。';

  @override
  String get tapToCopy => '点击复制';

  @override
  String get devices => '设备';

  @override
  String get severity => '严重程度';

  @override
  String get tabLocation => '位置';

  @override
  String get locationNotAvailable => '此设备没有可用的位置数据。';

  @override
  String get enableLostModeHint => '启用丢失模式以追踪此设备。';

  @override
  String get lostModeEnabled => '丢失模式已启用';

  @override
  String get noLibraryItemsFound => '未找到资源库项目。';

  @override
  String get licenses => '许可证';

  @override
  String get lostModeMessage => '丢失模式消息';

  @override
  String get lostModePhone => '电话号码';

  @override
  String get lostModeFootnote => '设备上显示的可选消息和电话号码';

  @override
  String get supervised => '受监管';

  @override
  String get unsupervised => '非受监管';

  @override
  String get filterSupervised => '受监管';

  @override
  String get filterUnsupervised => '非受监管';

  @override
  String get language => '语言';

  @override
  String get languageSystem => '系统默认';

  @override
  String get actionDisableLostMode => '禁用丢失模式';

  @override
  String get actionClearPasscode => '清除密码';

  @override
  String get filterLostMode => '丢失模式';

  @override
  String get lostMode => '丢失模式';

  @override
  String get sectionManagement => '管理';

  @override
  String get sectionStatus => '状态';

  @override
  String get statusMissing => '丢失';

  @override
  String get statusRemoved => '已移除';

  @override
  String get agent => '代理';

  @override
  String get identifier => '标识符';

  @override
  String get processor => '处理器';

  @override
  String get hardwareUuid => '硬件 UUID';

  @override
  String get devicePosture => '设备安全状态';

  @override
  String get unknownDevice => '未知设备';

  @override
  String get securityAppLock => '应用锁';

  @override
  String get securityAppLockDescription =>
      '设置 6 位数 PIN 以保护应用。设置 PIN 后可启用生物识别认证。';

  @override
  String get securityAppLockActive => '应用锁已启用';

  @override
  String get securityAppLockInactive => '未配置应用锁';

  @override
  String get securitySetPin => '设置 PIN';

  @override
  String get securityChangePin => '更改 PIN';

  @override
  String get securityRemovePin => '移除 PIN';

  @override
  String get securityCurrentPin => '当前 PIN';

  @override
  String get securityNewPin => '新 PIN';

  @override
  String get securityConfirmPin => '请再次输入 PIN 以确认。';

  @override
  String get securityPinLength => 'PIN 必须为 6 位数字。';

  @override
  String get securityPinMismatch => '两次输入的 PIN 不一致。';

  @override
  String get securityPinWrong => 'PIN 错误。';

  @override
  String get securityPinSet => 'PIN 已设置。';

  @override
  String get securityPinChanged => 'PIN 已更改。';

  @override
  String get securityPinRemoved => 'PIN 和应用锁已移除。';

  @override
  String get securityBiometric => '生物识别';

  @override
  String get securityBiometricDescription => '使用指纹或面部识别解锁应用，无需输入 PIN。';

  @override
  String get securityBiometricEnable => '生物识别解锁';

  @override
  String get securityBiometricActive => '已启用';

  @override
  String get securityBiometricInactive => '未启用';

  @override
  String get securityBiometricUnavailable => '此设备不支持生物识别认证。';

  @override
  String get securityNext => '下一步';

  @override
  String get actionRenewMdm => '续订 MDM 配置文件';

  @override
  String get actionSetName => '设置设备名称';

  @override
  String get actionSetNameHint => '输入新的设备名称';

  @override
  String get actionDeleteUser => '删除用户';

  @override
  String get actionDeleteUserName => '用户名';

  @override
  String get actionDeleteAllUsers => '删除所有用户';

  @override
  String get actionForceDeletion => '强制删除';

  @override
  String get actionUnlockAccount => '解锁账户';

  @override
  String get actionPlayLostModeSound => '播放丢失模式声音';

  @override
  String get actionUpdateLocation => '更新位置';

  @override
  String get erasePin => '6 位 PIN';

  @override
  String get erasePinHint => '移动设备必填';

  @override
  String get erasePreserveDataPlan => '保留数据套餐';

  @override
  String get eraseDisallowProximitySetup => '禁止近距离设置';

  @override
  String get eraseReturnToService => '恢复服务';

  @override
  String get lockMessage => '锁定消息（可选）';

  @override
  String get lockPhone => '电话号码';

  @override
  String get restartRebuildKernelCache => '重建内核缓存';

  @override
  String get restartNotifyUser => '通知用户';

  @override
  String get actionRemoteDesktop => '远程桌面';

  @override
  String get tabNotes => '备注';

  @override
  String get noNotesFound => '暂无备注';

  @override
  String get addNote => '添加备注';

  @override
  String get editNote => '编辑备注';

  @override
  String get deleteNote => '删除备注';

  @override
  String get deleteNoteConfirm => '确定要删除此备注吗？';

  @override
  String get noteContent => '备注内容';

  @override
  String get noteSaved => '备注已保存。';

  @override
  String get noteDeleted => '备注已删除。';

  @override
  String get editDevice => '编辑设备';

  @override
  String get deviceUpdated => '设备已更新。';

  @override
  String get deleteDevice => '删除设备';

  @override
  String get deleteDeviceConfirm => '设备将从 MDM 中永久移除。此操作无法撤销。';

  @override
  String get deviceDeleted => '设备已删除。';

  @override
  String get cancelLostMode => '取消丢失模式';

  @override
  String get cancelLostModeConfirm => '取消待处理的丢失模式请求？';

  @override
  String get lostModeCancelled => '丢失模式已取消。';

  @override
  String get tags => '标签';

  @override
  String get noTags => '没有标签';

  @override
  String get addTag => '添加标签';

  @override
  String get tagName => '标签名称';

  @override
  String get manageTags => '管理标签';

  @override
  String get auditLog => '审计日志';

  @override
  String get noAuditEvents => '未找到审计事件';

  @override
  String get actionDailyCheckIn => '每日签到';

  @override
  String get licensing => '许可';

  @override
  String get deviceLimit => '设备上限';

  @override
  String get devicesUsed => '已使用设备';

  @override
  String get licenseType => '许可类型';

  @override
  String get appleDevices => 'Apple 设备';

  @override
  String get deleteUser => '删除用户';

  @override
  String get deleteUserConfirm => '确定要删除此用户吗？此操作无法撤销。';

  @override
  String get userDeleted => '用户已删除。';

  @override
  String get createBlueprint => '创建 Blueprint';

  @override
  String get editBlueprint => '编辑 Blueprint';

  @override
  String get deleteBlueprint => '删除 Blueprint';

  @override
  String get deleteBlueprintConfirm => '删除此 Blueprint 将取消注册所有已分配的设备。此操作无法撤销。';

  @override
  String get blueprintCreated => 'Blueprint 已创建。';

  @override
  String get blueprintUpdated => 'Blueprint 已更新。';

  @override
  String get blueprintDeleted => 'Blueprint 已删除。';

  @override
  String get blueprintName => 'Blueprint 名称';

  @override
  String get blueprintDescription => '描述';

  @override
  String get enrollmentCode => '注册码';

  @override
  String get assignLibraryItem => '分配资源库项目';

  @override
  String get removeLibraryItem => '移除资源库项目';

  @override
  String get libraryItemAssigned => '资源库项目已分配。';

  @override
  String get libraryItemRemoved => '资源库项目已移除。';

  @override
  String get lostModeDetails => '丢失模式详情';

  @override
  String get lostModeEnabledBy => '启用者';

  @override
  String get lostModeEnabledAt => '启用时间';

  @override
  String get searchBlueprints => '搜索 Blueprints...';

  @override
  String get searchVulnerabilities => '搜索漏洞...';

  @override
  String get searchThreats => '搜索威胁...';

  @override
  String get searchAuditLog => '搜索审计日志...';

  @override
  String get filterCritical => '严重';

  @override
  String get filterHigh => '高';

  @override
  String get filterMedium => '中';

  @override
  String get filterLow => '低';

  @override
  String get filterClearAll => '清除全部';

  @override
  String get filterTitle => '筛选';

  @override
  String get filterApply => '应用';

  @override
  String get filterPlatform => '平台';

  @override
  String get filterSupervision => '监管状态';

  @override
  String get filterStatus => '状态';

  @override
  String get adeIntegrations => 'ADE 集成';

  @override
  String get noAdeIntegrations => '未找到 ADE 集成。';

  @override
  String get adeDevices => 'ADE 设备';

  @override
  String get noAdeDevices => '未找到 ADE 设备。';

  @override
  String get tokenExpiry => '令牌到期时间';

  @override
  String get tokenValid => '令牌有效';

  @override
  String get tokenExpired => '令牌已过期';

  @override
  String get orgName => '组织';

  @override
  String get defaultBlueprint => '默认 Blueprint';

  @override
  String get renewToken => '续订令牌';

  @override
  String get publicKey => '公钥';

  @override
  String get vulnerabilityDetections => '漏洞检测';

  @override
  String get noDetectionsFound => '未找到检测结果。';

  @override
  String get behavioralDetections => '行为检测';

  @override
  String get noBehavioralDetections => '未找到行为检测结果。';

  @override
  String get searchBehavioralDetections => '搜索检测结果...';

  @override
  String get affectedDevices => '受影响的设备';

  @override
  String get noAffectedDevices => '未找到受影响的设备。先前受影响的设备可能已被移除。';

  @override
  String get affectedSoftware => '受影响的软件';

  @override
  String get blueprintTemplates => 'Blueprint 模板';

  @override
  String get noTemplatesFound => '未找到模板。';

  @override
  String get otaEnrollmentProfile => 'OTA 注册配置文件';

  @override
  String get libraryItemActivity => '活动';

  @override
  String get libraryItemDeploymentStatus => '部署状态';

  @override
  String get noActivityFound2 => '未找到活动记录。';

  @override
  String get noStatusFound => '未找到部署状态。';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个检测结果',
      zero: '没有检测结果',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个集成',
      zero: '没有集成',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => '漏洞详情';

  @override
  String get description => '描述';

  @override
  String get firstDetected => '首次检测';

  @override
  String get lastDetected => '最近检测';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个软件',
      zero: '没有软件',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => '编辑集成';

  @override
  String get deleteIntegration => '删除集成';

  @override
  String get deleteIntegrationConfirm => '确定要删除此 ADE 集成吗？此操作无法撤销。';

  @override
  String get integrationDeleted => '集成已删除。';

  @override
  String get integrationUpdated => '集成已更新。';

  @override
  String get defaultBlueprintId => '默认 Blueprint ID';

  @override
  String get phone => '电话';

  @override
  String get downloadOtaProfile => '下载注册配置文件';

  @override
  String get otaProfileCopied => '注册配置文件已复制到剪贴板。';

  @override
  String get noOtaProfile => '没有可用的注册配置文件。';

  @override
  String get createTag => '创建标签';

  @override
  String get editTag => '编辑标签';

  @override
  String get deleteTag => '删除标签';

  @override
  String get deleteTagConfirm => '确定要删除此标签吗？';

  @override
  String get tagColor => '颜色';

  @override
  String get tagCreated => '标签已创建。';

  @override
  String get tagUpdated => '标签已更新。';

  @override
  String get tagDeleted => '标签已删除。';

  @override
  String get noTagsFound => '未找到标签。';

  @override
  String get libraryItemDetail => '资源库项目';

  @override
  String get viewActivity => '查看活动';

  @override
  String get viewStatus => '查看状态';

  @override
  String get installations => '安装';

  @override
  String get createAdeIntegration => '创建 ADE 集成';

  @override
  String get adeCreateDescription =>
      '从 Apple Business Manager 上传服务器令牌文件（.p7m）以创建新的 ADE 集成。';

  @override
  String get selectTokenFile => '选择令牌文件';

  @override
  String tokenFileSelected(String name) {
    return '令牌文件：$name';
  }

  @override
  String get noTokenFileSelected => '未选择令牌文件';

  @override
  String get integrationCreated => '集成已创建。';

  @override
  String get create => '创建';

  @override
  String get step1GetPublicKey => '步骤 1：下载公钥';

  @override
  String get step1Description => '复制公钥并上传到 Apple Business Manager。';

  @override
  String get step2UploadToken => '步骤 2：上传服务器令牌';

  @override
  String get step2Description => '选择从 Apple 下载的 .p7m 令牌文件。';

  @override
  String get step3Configure => '步骤 3：配置';

  @override
  String get publicKeyCopied => '公钥已复制到剪贴板。';

  @override
  String get renewTokenDescription => '上传新的 .p7m 令牌文件以续订此集成的令牌。';

  @override
  String get tokenRenewed => '令牌已续订。';

  @override
  String get aboutLinks => '链接';

  @override
  String get aboutWebsite => '网站';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => '源代码';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => '技术栈';

  @override
  String get aboutFramework => '框架';

  @override
  String get aboutStateManagement => '状态管理';

  @override
  String get aboutArchitecture => '架构';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => '数据类';

  @override
  String get aboutNavigationLabel => '导航';

  @override
  String get aboutOpenSourceLicenses => '开源许可证';

  @override
  String get aboutShowHide => '切换显示';

  @override
  String get editProfileTitle => '编辑连接';

  @override
  String get editProfileSubtitle => '更新您的租户连接设置。';

  @override
  String get apiTokenHintEdit => '留空以保留现有令牌';

  @override
  String get profileUpdated => '配置已更新。';

  @override
  String profileSwitched(String name) {
    return '已切换到 $name。';
  }

  @override
  String get securityAutoLock => '自动锁定';

  @override
  String get securityAutoLockDescription => '应用进入后台后自动要求身份验证。';

  @override
  String get timeoutImmediately => '立即';

  @override
  String get timeoutSeconds30 => '30 秒后';

  @override
  String get timeoutSeconds60 => '1 分钟后';

  @override
  String get timeoutSeconds120 => '2 分钟后';

  @override
  String get timeoutMinutes5 => '5 分钟后';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => '无 Blueprint';

  @override
  String get presetSaveFilter => '保存筛选预设';

  @override
  String get presetLoad => '加载预设';

  @override
  String get presetName => '预设名称';

  @override
  String get presetNameHint => '例如 非受监管的 Mac';

  @override
  String get presetSaved => '筛选预设已保存。';

  @override
  String get presetDeleted => '筛选预设已删除。';

  @override
  String presetApplied(String name) {
    return '已应用预设“$name”。';
  }

  @override
  String get presetNoPresets => '没有已保存的预设';

  @override
  String get presetNoPresetsMessage => '将当前筛选条件保存为预设，以便快速访问。';

  @override
  String get presetDeleteConfirm => '删除此预设？';

  @override
  String get presetNameRequired => '请输入预设名称。';

  @override
  String selectedCount(int count) {
    return '已选择 $count 个';
  }

  @override
  String get selectAll => '全选';

  @override
  String get deselectAll => '取消全选';

  @override
  String get bulkActions => '批量操作';

  @override
  String bulkActionsTitle(int count) {
    return '对 $count 台设备执行操作';
  }

  @override
  String get bulkActionAssignTag => '分配标签';

  @override
  String get bulkActionAssignTagDescription => '为所有选中的设备添加标签';

  @override
  String get bulkActionAssignBlueprint => '分配 Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription => '将选中的设备移至某个 Blueprint';

  @override
  String get bulkActionLock => '锁定设备';

  @override
  String get bulkActionLockDescription => '远程锁定所有选中的设备';

  @override
  String get bulkActionRestart => '重启设备';

  @override
  String get bulkActionRestartDescription => '重启所有选中的设备';

  @override
  String bulkRestartConfirmMessage(int count) {
    return '确定要重启 $count 台设备吗？';
  }

  @override
  String bulkActionSuccess(int count) {
    return '操作已在 $count 台设备上成功完成。';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return '已在 $success 台设备上完成，$failed 台失败。';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '已完成 $completed/$total';
  }

  @override
  String get biometricReasonBulkAction => '验证身份以执行批量操作';

  @override
  String get lockPin => '锁定 PIN（可选）';

  @override
  String get noTagsAvailable => '没有可用的标签。请在 MDM 网页控制台中创建标签。';

  @override
  String get noBlueprintsAvailable => '没有可用的 Blueprints。';

  @override
  String get selectADevice => '选择设备';

  @override
  String get selectABlueprint => '选择 Blueprint';

  @override
  String get clearSearch => '清除搜索';

  @override
  String get refresh => '刷新';

  @override
  String get moreActions => '更多操作';

  @override
  String get close => '关闭';

  @override
  String get onboardingSkip => '跳过';

  @override
  String get onboardingNext => '下一步';

  @override
  String get onboardingGetStarted => '开始使用';

  @override
  String get onboardingWelcomeTitle => '欢迎使用 FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      '您的 Apple 设备队列管理移动指挥中心。随时随地监控、管理和保护您的整个设备队列。';

  @override
  String get onboardingDevicesTitle => '设备管理';

  @override
  String get onboardingDevicesSubtitle => '对队列中每台设备拥有完全的可视性和控制权。';

  @override
  String get onboardingDevicesFeature1 => '查看所有已注册的 iPhone、iPad、Mac 和 Apple TV';

  @override
  String get onboardingDevicesFeature2 => '发送远程命令：锁定、重启、抹除等';

  @override
  String get onboardingDevicesFeature3 => '跟踪 Blueprints、应用和合规状态';

  @override
  String get onboardingSecurityTitle => '安全至上';

  @override
  String get onboardingSecuritySubtitle => '通过多层安全保护，确保您的队列数据安全无虞。';

  @override
  String get onboardingSecurityFeature1 => '支持 Face ID 或指纹的生物识别认证';

  @override
  String get onboardingSecurityFeature2 => '6 位 PIN 应用锁';

  @override
  String get onboardingSecurityFeature3 => '超时后自动锁定会话';

  @override
  String get onboardingReadyTitle => '准备就绪';

  @override
  String get onboardingReadySubtitle =>
      '连接您的 MDM 租户，开始管理 Apple 设备队列。接下来设置您的 API 连接和安全 PIN。';

  @override
  String get searchTags => '搜索标签';

  @override
  String tagDeviceCount(int count) {
    return '$count 台设备';
  }

  @override
  String get sortTitle => '排序';

  @override
  String get sortDirection => '排序方向';

  @override
  String get ascending => '升序';

  @override
  String get descending => '降序';

  @override
  String get filterSeverity => '严重程度';

  @override
  String get filterSort => '筛选与排序';

  @override
  String get statusQuarantined => '已隔离';

  @override
  String get statusNotQuarantined => '未隔离';

  @override
  String get statusDetected => '已检测';

  @override
  String get statusReleased => '已释放';

  @override
  String get severityCritical => '严重';

  @override
  String get severityHigh => '高';

  @override
  String get severityMedium => '中';

  @override
  String get severityLow => '低';

  @override
  String threatCount(int count) {
    return '$count 个威胁';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count 个检测';
  }

  @override
  String get downloadPublicKey => '下载';

  @override
  String get publicKeySaved => '公钥已保存';

  @override
  String get sortBy => '排序方式';

  @override
  String get sortByCvss => 'CVSS 评分';

  @override
  String get sortByDeviceCount => '受影响设备数';

  @override
  String get sortByCveId => 'CVE ID';

  @override
  String vulnCount(int count) {
    return '$count 个漏洞';
  }

  @override
  String get assignTags => '标签';

  @override
  String get noTagsAvailableMessage => '没有可用的标签。请先创建标签。';

  @override
  String get failedToLoadTags => '无法加载标签';

  @override
  String get details => '详情';

  @override
  String get searchLibraryItems => '搜索资源库项目...';

  @override
  String get categoryCustomScript => '自定义脚本';

  @override
  String get categoryCustomApp => '自定义应用';

  @override
  String get categoryCustomProfile => '自定义配置文件';

  @override
  String get categoryInHouseApp => '内部应用';

  @override
  String get categoryBuiltIn => '内置';

  @override
  String get categoryVppApps => 'VPP / App Store 应用';

  @override
  String get categoryManagedProfiles => '托管配置文件';

  @override
  String get categoryKandjiSetup => 'MDM 设置';

  @override
  String get categoryMacosRelease => 'macOS 更新';

  @override
  String get categoryThreatPolicy => '安全策略';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个 Blueprints',
      one: '1 个 Blueprint',
    );
    return '在 $_temp0 中';
  }

  @override
  String get executionFrequencyOnce => '仅一次';

  @override
  String get executionFrequencyEvery15Min => '每 15 分钟';

  @override
  String get executionFrequencyEveryDay => '每天';

  @override
  String get executionFrequencyNoEnforcement => '不强制执行';

  @override
  String get scriptBody => '脚本';

  @override
  String get remediationScript => '修复脚本';

  @override
  String get allProperties => '所有属性';

  @override
  String get builtInLibraryItem => '内置资源库项目';

  @override
  String get builtInDetailsHint => '详情可在状态标签页中查看';

  @override
  String get active => '活跃';

  @override
  String get yes => '是';

  @override
  String get no => '否';

  @override
  String get execution => '执行';

  @override
  String get restart => '重启';

  @override
  String get selfService => '自助服务';

  @override
  String get installType => '安装类型';

  @override
  String get enforcement => '强制执行';

  @override
  String get runsOnMac => '在 Mac 上运行';

  @override
  String get runsOnIphone => '在 iPhone 上运行';

  @override
  String get runsOnIpad => '在 iPad 上运行';

  @override
  String get appName => '应用名称';

  @override
  String get appVersion => '应用版本';

  @override
  String get minOsVersion => '最低操作系统版本';

  @override
  String get created => '创建时间';

  @override
  String get updated => '更新时间';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count 个项目',
      zero: '没有项目',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => '已解决';

  @override
  String get severityInformational => '信息';

  @override
  String get managementState => '管理状态';

  @override
  String get managementStateOpen => '开放';

  @override
  String get managementStateClosed => '已关闭';

  @override
  String get classificationMalware => '恶意软件';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => '可疑';

  @override
  String get classificationMal => '恶意';

  @override
  String get blueprintRouting => 'Blueprint 路由';

  @override
  String get blueprintRoutingDesc => '手动注册 / Android Work Profile 注册的注册码和路由';

  @override
  String get blueprintRoutingNotConfigured => '此租户未配置 Blueprint 路由。';

  @override
  String get enrollmentCodeActive => '活跃';

  @override
  String get enrollmentCodeInactive => '未活跃';

  @override
  String get routingActivity => '路由活动';

  @override
  String get noRoutingActivity => '未找到路由活动。';

  @override
  String get selfServiceCategories => '自助服务类别';

  @override
  String get selfServiceDesc => '管理面向用户的自助服务类别';

  @override
  String get addCategory => '添加类别';

  @override
  String get categoryName => '类别名称';

  @override
  String get deleteCategory => '删除类别';

  @override
  String get deleteCategoryConfirm => '确定要删除此类别吗？';

  @override
  String get noCategoriesFound => '未找到类别。';

  @override
  String get categoryCreated => '类别已创建';

  @override
  String get categoryDeleted => '类别已删除';

  @override
  String get profileBody => '配置文件 XML';

  @override
  String get customProfile => '自定义配置文件';

  @override
  String get classification => '分类';

  @override
  String get mdmEnabled => 'MDM 已启用';

  @override
  String get enrolledViaDep => '通过 DEP 注册';

  @override
  String get userApprovedMdm => '用户批准的 MDM';

  @override
  String get network => '网络';

  @override
  String get ipAddress => 'IP 地址';

  @override
  String get wifiNetwork => 'Wi-Fi 网络';

  @override
  String get bluetoothMac => '蓝牙 MAC';

  @override
  String get activationLock => '激活锁';

  @override
  String get googlePlayProtect => 'Google Play 保护机制';

  @override
  String get developerMode => '开发者模式';

  @override
  String get adbEnabled => 'ADB 已启用';

  @override
  String get unknownSources => '未知来源';

  @override
  String get securityPatch => '安全补丁';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM 信息';

  @override
  String get lastEnrollment => '上次注册';

  @override
  String get enterpriseId => '企业 ID';

  @override
  String get manufacturer => '制造商';

  @override
  String get generalStatus => '总体状态';

  @override
  String get apiLevel => 'API 级别';

  @override
  String get userApprovedEnrollment => '用户批准的注册';

  @override
  String get hostname => '主机名';

  @override
  String get macAddress => 'MAC 地址';

  @override
  String get publicIp => '公网 IP';

  @override
  String get volumes => '卷';

  @override
  String volumeUsed(String percent) {
    return '已使用 $percent%';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available 可用，共 $total';
  }

  @override
  String get encrypted => '已加密';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores 核';
  }

  @override
  String processors(String count) {
    return '$count 个处理器';
  }

  @override
  String get batteryLevel => '电池电量';

  @override
  String get lastUser => '上次用户';

  @override
  String get bootVolume => '启动卷';

  @override
  String get localUsers => '本地用户';

  @override
  String get regularUsers => '标准用户';

  @override
  String get systemUsers => '系统用户';

  @override
  String get admin => '管理员';

  @override
  String get assignToBlueprint => '分配到 Blueprint';

  @override
  String get installOnDevice => '安装到设备';

  @override
  String get selectBlueprint => '选择 Blueprint';

  @override
  String get selectDevice => '选择设备';

  @override
  String get selfServiceEnabled => '自助服务';

  @override
  String get vppLicenses => 'VPP 许可证';

  @override
  String get fileName => '文件名';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => '设备智能分析';

  @override
  String get prismCategoryActivationLock => '激活锁';

  @override
  String get prismCategoryApps => '应用程序';

  @override
  String get prismCategoryApplicationFirewall => '应用防火墙';

  @override
  String get prismCategoryCellular => '蜂窝网络';

  @override
  String get prismCategoryCertificates => '证书';

  @override
  String get prismCategoryDesktopAndScreensaver => '桌面与屏保';

  @override
  String get prismCategoryDeviceInformation => '设备信息';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper 与 XProtect';

  @override
  String get prismCategoryInstalledProfiles => '已安装的配置文件';

  @override
  String get prismCategoryKernelExtensions => '内核扩展';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => '启动代理与守护进程';

  @override
  String get prismCategoryLocalUsers => '本地用户';

  @override
  String get prismCategoryStartupSettings => '启动设置';

  @override
  String get prismCategorySystemExtensions => '系统扩展';

  @override
  String get prismCategoryTransparencyDatabase => '透明度数据库';

  @override
  String prismRecords(int count) {
    return '$count 条记录';
  }

  @override
  String get prismNoData => '此类别没有可用数据。';

  @override
  String get prismExport => '导出 CSV';

  @override
  String get prismExportRequested => '已请求导出。下载链接即将可用。';

  @override
  String get prismFilterByFamily => '设备系列';

  @override
  String get prismAllFamilies => '所有系列';

  @override
  String get appearance => '外观';

  @override
  String get themeMode => '主题';

  @override
  String get themeModeSystem => '跟随系统';

  @override
  String get themeModeLight => '浅色';

  @override
  String get themeModeDark => '深色';

  @override
  String get shortTypeScript => '脚本';

  @override
  String get shortTypeCustom => '自定义';

  @override
  String get shortTypeProfile => '配置文件';

  @override
  String get shortTypeInHouse => '内部';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => '托管';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => '安全';

  @override
  String get shortTypeAuto => '自动';

  @override
  String get categoryOsUpdates => '操作系统更新';

  @override
  String get categoryAutoApps => '自动应用';

  @override
  String get autoApp => '自动应用';

  @override
  String get fileSize => '文件大小';

  @override
  String get unzipLocation => '解压位置';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => '文件更新时间';

  @override
  String get mdmIdentifier => 'MDM 标识符';

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
  String get typeLabel => '类型';

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
