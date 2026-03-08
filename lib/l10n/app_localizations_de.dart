// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Geräte';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Benutzer';

  @override
  String get navSettings => 'Einstellungen';

  @override
  String get welcomeTitle => 'Willkommen bei FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Verwalten Sie Ihre Apple-Geräteflotte von überall.';

  @override
  String get addProfile => 'Profil hinzufügen';

  @override
  String get editProfile => 'Profil bearbeiten';

  @override
  String get displayName => 'Anzeigename';

  @override
  String get displayNameHint => 'z.B. Acme Corp — Prod';

  @override
  String get region => 'Region';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomain';

  @override
  String get subdomainHint => 'ihr-tenant';

  @override
  String get apiToken => 'API-Token';

  @override
  String get apiTokenHint => 'API-Token hier einfügen';

  @override
  String urlPreview(String url) {
    return 'API-URL: $url';
  }

  @override
  String get verifyAndSave => 'Prüfen & Speichern';

  @override
  String get verifying => 'Verbindung wird geprüft...';

  @override
  String get connectionSuccess => 'Verbindung erfolgreich verifiziert!';

  @override
  String get errorInvalidToken =>
      'Ungültiges API-Token. Bitte überprüfen Sie Ihr Token in der Web-Konsole.';

  @override
  String get errorInsufficientPermissions =>
      'Unzureichende Berechtigungen. Stellen Sie sicher, dass das Token Lesezugriff auf Geräte hat.';

  @override
  String get errorNetworkUnreachable =>
      'API nicht erreichbar. Überprüfen Sie Ihre Internetverbindung und Subdomain.';

  @override
  String get errorNotFound =>
      'Die angeforderte Ressource wurde nicht gefunden.';

  @override
  String get errorValidation =>
      'Die Anfrage enthielt ungültige Daten. Bitte überprüfen Sie Ihre Eingabe.';

  @override
  String get errorRateLimit =>
      'Zu viele Anfragen. Bitte warten Sie einen Moment und versuchen Sie es erneut.';

  @override
  String get errorServer =>
      'Der Server hat einen Fehler festgestellt. Bitte versuchen Sie es später erneut.';

  @override
  String get errorUnexpected =>
      'Ein unerwarteter Fehler ist aufgetreten. Bitte versuchen Sie es erneut.';

  @override
  String get retry => 'Wiederholen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get save => 'Speichern';

  @override
  String get search => 'Suche';

  @override
  String get searchDevices => 'Geräte suchen...';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Alle Blueprints';

  @override
  String loadingDevices(int count) {
    return '$count Geräte werden geladen...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Geräte',
      one: '1 Gerät',
      zero: 'Keine Geräte',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Keine Geräte gefunden';

  @override
  String get noDevicesFoundMessage => 'Passen Sie Ihre Suche oder Filter an.';

  @override
  String lastCheckIn(String time) {
    return 'Letzter Check-in: $time';
  }

  @override
  String get compliancePass => 'Bestanden';

  @override
  String get complianceFail => 'Fehlgeschlagen';

  @override
  String get compliancePending => 'Ausstehend';

  @override
  String get deviceDetails => 'Gerätedetails';

  @override
  String get serialNumber => 'Seriennummer';

  @override
  String get model => 'Modell';

  @override
  String get osVersion => 'OS-Version';

  @override
  String get assetTag => 'Asset-Tag';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Registriert';

  @override
  String get assignedUser => 'Zugewiesener Benutzer';

  @override
  String get actions => 'Aktionen';

  @override
  String get actionLock => 'Sperren';

  @override
  String get actionRestart => 'Neustarten';

  @override
  String get actionShutdown => 'Herunterfahren';

  @override
  String get actionErase => 'Löschen';

  @override
  String get actionBlankPush => 'Blank Push senden';

  @override
  String get actionReinstallAgent => 'Agent neu installieren';

  @override
  String get actionUpdateInventory => 'Inventar aktualisieren';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Remote Desktop aktivieren';

  @override
  String get actionRemoteDesktopDisable => 'Remote Desktop deaktivieren';

  @override
  String get actionLostMode => 'Verloren-Modus aktivieren';

  @override
  String get destructiveActionTitle => 'Destruktive Aktion bestätigen';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Diese Aktion kann nicht rückgängig gemacht werden. Geben Sie \"$deviceName\" zur Bestätigung ein.';
  }

  @override
  String get destructiveActionHint => 'Gerätename zur Bestätigung eingeben';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get actionSuccess => 'Aktion erfolgreich ausgeführt.';

  @override
  String get actionFailed =>
      'Aktion fehlgeschlagen. Bitte versuchen Sie es erneut.';

  @override
  String get biometricReason => 'Authentifizieren Sie sich für FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Authentifizieren Sie sich, um sensible Daten anzuzeigen';

  @override
  String get biometricReasonDestructive =>
      'Authentifizieren Sie sich, um diese Aktion auszuführen';

  @override
  String get biometricFailed =>
      'Authentifizierung fehlgeschlagen. Bitte versuchen Sie es erneut.';

  @override
  String get profiles => 'Profile';

  @override
  String activeProfile(String name) {
    return 'Aktiv: $name';
  }

  @override
  String get switchProfile => 'Profil wechseln';

  @override
  String get deleteProfile => 'Profil löschen';

  @override
  String get deleteProfileConfirm =>
      'Möchten Sie dieses Profil wirklich löschen? Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get noProfiles => 'Keine Profile konfiguriert';

  @override
  String get settings => 'Einstellungen';

  @override
  String get about => 'Über';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get validationRequired => 'Dieses Feld ist erforderlich.';

  @override
  String get validationSubdomain =>
      'Nur Buchstaben, Zahlen und Bindestriche erlaubt. Keine führenden oder nachgestellten Bindestriche.';

  @override
  String get complianceStatus => 'Compliance-Status';

  @override
  String get platform => 'Plattform';

  @override
  String get deviceName => 'Gerätename';

  @override
  String get searchUsers => 'Benutzer suchen...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Benutzer',
      one: '1 Benutzer',
      zero: 'Keine Benutzer',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Keine Benutzer gefunden';

  @override
  String get noUsersFoundMessage => 'Passen Sie Ihre Suche oder Filter an.';

  @override
  String get showArchived => 'Archivierte anzeigen';

  @override
  String get archived => 'Archiviert';

  @override
  String get email => 'E-Mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      one: '1 Blueprint',
      zero: 'Keine Blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Keine Blueprints gefunden';

  @override
  String get noBlueprintsFoundMessage =>
      'Es wurden noch keine Blueprints konfiguriert.';

  @override
  String get enrollmentActive => 'Registrierung aktiv';

  @override
  String get enrollmentInactive => 'Registrierung inaktiv';

  @override
  String get tabOverview => 'Übersicht';

  @override
  String get tabApps => 'Apps';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Aktivität';

  @override
  String get tabCommands => 'Befehle';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Sicherheit';

  @override
  String get totalStorage => 'Gesamtspeicher';

  @override
  String get availableStorage => 'Verfügbarer Speicher';

  @override
  String get totalRam => 'Gesamter RAM';

  @override
  String get wifiMac => 'WLAN-MAC-Adresse';

  @override
  String get encryption => 'Verschlüsselung';

  @override
  String get passcode => 'Passcode';

  @override
  String get noAppsFound => 'Keine Apps gefunden';

  @override
  String get noActivityFound => 'Keine Aktivität gefunden';

  @override
  String get noCommandsFound => 'Keine Befehle gefunden';

  @override
  String get libraryItems => 'Bibliothekselemente';

  @override
  String get parameters => 'Parameter';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS-Build';

  @override
  String get cellular => 'Mobilfunk';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Apps',
      one: '1 App',
      zero: 'Keine Apps',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Benutzerdetails';

  @override
  String get jobTitle => 'Berufsbezeichnung';

  @override
  String get department => 'Abteilung';

  @override
  String get createdAt => 'Erstellt';

  @override
  String get updatedAt => 'Aktualisiert';

  @override
  String get assignedDevices => 'Zugewiesene Geräte';

  @override
  String get noAssignedDevices =>
      'Diesem Benutzer sind keine Geräte zugewiesen.';

  @override
  String get userInfo => 'Benutzerinfo';

  @override
  String get navMore => 'Mehr';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'FileVault-Wiederherstellungsschlüssel';

  @override
  String get unlockPin => 'Entsperr-PIN';

  @override
  String get recoveryPassword => 'Recovery Lock Passwort';

  @override
  String get bypassCode => 'Aktivierungssperre-Umgehungscode';

  @override
  String get noSecretsFound => 'Keine Secrets für dieses Gerät verfügbar.';

  @override
  String get secretCopied => 'Secret in die Zwischenablage kopiert';

  @override
  String get threats => 'Bedrohungen';

  @override
  String get noThreatsFound => 'Keine Bedrohungen erkannt.';

  @override
  String get vulnerabilities => 'Schwachstellen';

  @override
  String get noVulnerabilitiesFound => 'Keine Schwachstellen erkannt.';

  @override
  String get aboutApp => 'Über FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot ist eine Open-Source MDM-Management-App für Kandji.';

  @override
  String get tapToCopy => 'Tippen zum Kopieren';

  @override
  String get devices => 'Geräte';

  @override
  String get severity => 'Schweregrad';

  @override
  String get tabLocation => 'Standort';

  @override
  String get locationNotAvailable =>
      'Standortdaten sind für dieses Gerät nicht verfügbar.';

  @override
  String get lostModeEnabled => 'Verloren-Modus aktiviert';

  @override
  String get noLibraryItemsFound => 'Keine Bibliothekselemente gefunden.';

  @override
  String get licenses => 'Lizenzen';

  @override
  String get lostModeMessage => 'Verloren-Modus-Nachricht';

  @override
  String get lostModePhone => 'Telefonnummer';

  @override
  String get lostModeFootnote =>
      'Optionale Nachricht und Telefonnummer auf dem Gerät angezeigt';

  @override
  String get supervised => 'Überwacht';

  @override
  String get unsupervised => 'Nicht überwacht';

  @override
  String get filterSupervised => 'Überwacht';

  @override
  String get filterUnsupervised => 'Nicht überwacht';

  @override
  String get language => 'Sprache';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get actionDisableLostMode => 'Verloren-Modus deaktivieren';

  @override
  String get actionClearPasscode => 'Passcode löschen';

  @override
  String get filterLostMode => 'Verloren-Modus';

  @override
  String get lostMode => 'Verloren-Modus';

  @override
  String get sectionManagement => 'Verwaltung';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Vermisst';

  @override
  String get statusRemoved => 'Entfernt';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Kennung';

  @override
  String get processor => 'Prozessor';

  @override
  String get hardwareUuid => 'Hardware-UUID';

  @override
  String get devicePosture => 'Gerätestatus';

  @override
  String get unknownDevice => 'Unbekanntes Gerät';

  @override
  String get securityAppLock => 'App-Sperre';

  @override
  String get securityAppLockDescription =>
      'Legen Sie eine 6-stellige PIN fest, um die App zu schützen. Biometrische Authentifizierung kann nach dem Setzen einer PIN aktiviert werden.';

  @override
  String get securityAppLockActive => 'App-Sperre aktiviert';

  @override
  String get securityAppLockInactive => 'Keine App-Sperre konfiguriert';

  @override
  String get securitySetPin => 'PIN festlegen';

  @override
  String get securityChangePin => 'PIN ändern';

  @override
  String get securityRemovePin => 'PIN entfernen';

  @override
  String get securityCurrentPin => 'Aktuelle PIN';

  @override
  String get securityNewPin => 'Neue PIN';

  @override
  String get securityConfirmPin =>
      'Geben Sie die PIN zur Bestätigung erneut ein.';

  @override
  String get securityPinLength => 'PIN muss 6 Ziffern lang sein.';

  @override
  String get securityPinMismatch => 'PINs stimmen nicht überein.';

  @override
  String get securityPinWrong => 'Falsche PIN.';

  @override
  String get securityPinSet => 'PIN wurde festgelegt.';

  @override
  String get securityPinChanged => 'PIN wurde geändert.';

  @override
  String get securityPinRemoved => 'PIN und App-Sperre wurden entfernt.';

  @override
  String get securityBiometric => 'Biometrie';

  @override
  String get securityBiometricDescription =>
      'Verwenden Sie Fingerabdruck oder Gesichtserkennung zum Entsperren der App anstelle der PIN.';

  @override
  String get securityBiometricEnable => 'Biometrische Entsperrung';

  @override
  String get securityBiometricActive => 'Aktiv';

  @override
  String get securityBiometricInactive => 'Inaktiv';

  @override
  String get securityBiometricUnavailable =>
      'Biometrische Authentifizierung ist auf diesem Gerät nicht verfügbar.';

  @override
  String get securityNext => 'Weiter';

  @override
  String get actionRenewMdm => 'MDM-Profil erneuern';

  @override
  String get actionSetName => 'Gerätename festlegen';

  @override
  String get actionSetNameHint => 'Neuen Gerätenamen eingeben';

  @override
  String get actionDeleteUser => 'Benutzer löschen';

  @override
  String get actionDeleteUserName => 'Benutzername';

  @override
  String get actionDeleteAllUsers => 'Alle Benutzer löschen';

  @override
  String get actionForceDeletion => 'Löschung erzwingen';

  @override
  String get actionUnlockAccount => 'Konto entsperren';

  @override
  String get actionPlayLostModeSound => 'Verloren-Modus-Ton abspielen';

  @override
  String get actionUpdateLocation => 'Standort aktualisieren';

  @override
  String get erasePin => '6-stellige PIN';

  @override
  String get erasePinHint => 'Erforderlich für mobile Geräte';

  @override
  String get erasePreserveDataPlan => 'Datentarif beibehalten';

  @override
  String get eraseDisallowProximitySetup => 'Proximity-Setup verbieten';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Sperr-Nachricht (optional)';

  @override
  String get lockPhone => 'Telefonnummer';

  @override
  String get restartRebuildKernelCache => 'Kernel-Cache neu erstellen';

  @override
  String get restartNotifyUser => 'Benutzer benachrichtigen';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Notizen';

  @override
  String get noNotesFound => 'Noch keine Notizen';

  @override
  String get addNote => 'Notiz hinzufügen';

  @override
  String get editNote => 'Notiz bearbeiten';

  @override
  String get deleteNote => 'Notiz löschen';

  @override
  String get deleteNoteConfirm => 'Möchten Sie diese Notiz wirklich löschen?';

  @override
  String get noteContent => 'Notizinhalt';

  @override
  String get noteSaved => 'Notiz gespeichert.';

  @override
  String get noteDeleted => 'Notiz gelöscht.';

  @override
  String get editDevice => 'Gerät bearbeiten';

  @override
  String get deviceUpdated => 'Gerät aktualisiert.';

  @override
  String get deleteDevice => 'Gerät löschen';

  @override
  String get deleteDeviceConfirm =>
      'Das Gerät wird dauerhaft aus dem MDM entfernt. Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get deviceDeleted => 'Gerät gelöscht.';

  @override
  String get cancelLostMode => 'Verloren-Modus abbrechen';

  @override
  String get cancelLostModeConfirm =>
      'Die ausstehende Verloren-Modus-Anfrage abbrechen?';

  @override
  String get lostModeCancelled => 'Verloren-Modus abgebrochen.';

  @override
  String get tags => 'Tags';

  @override
  String get noTags => 'Keine Tags';

  @override
  String get addTag => 'Tag hinzufügen';

  @override
  String get tagName => 'Tag-Name';

  @override
  String get manageTags => 'Tags verwalten';

  @override
  String get auditLog => 'Audit-Protokoll';

  @override
  String get noAuditEvents => 'Keine Audit-Ereignisse gefunden';

  @override
  String get actionDailyCheckIn => 'Täglicher Check-in';

  @override
  String get licensing => 'Lizenzierung';

  @override
  String get deviceLimit => 'Gerätelimit';

  @override
  String get devicesUsed => 'Geräte verwendet';

  @override
  String get licenseType => 'Lizenztyp';

  @override
  String get appleDevices => 'Apple-Geräte';

  @override
  String get deleteUser => 'Benutzer löschen';

  @override
  String get deleteUserConfirm =>
      'Möchten Sie diesen Benutzer wirklich löschen? Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get userDeleted => 'Benutzer gelöscht.';

  @override
  String get createBlueprint => 'Blueprint erstellen';

  @override
  String get editBlueprint => 'Blueprint bearbeiten';

  @override
  String get deleteBlueprint => 'Blueprint löschen';

  @override
  String get deleteBlueprintConfirm =>
      'Das Löschen dieses Blueprints wird alle zugewiesenen Geräte abmelden. Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get blueprintCreated => 'Blueprint erstellt.';

  @override
  String get blueprintUpdated => 'Blueprint aktualisiert.';

  @override
  String get blueprintDeleted => 'Blueprint gelöscht.';

  @override
  String get blueprintName => 'Blueprint-Name';

  @override
  String get blueprintDescription => 'Beschreibung';

  @override
  String get enrollmentCode => 'Registrierungscode';

  @override
  String get assignLibraryItem => 'Bibliothekselement zuweisen';

  @override
  String get removeLibraryItem => 'Bibliothekselement entfernen';

  @override
  String get libraryItemAssigned => 'Bibliothekselement zugewiesen.';

  @override
  String get libraryItemRemoved => 'Bibliothekselement entfernt.';

  @override
  String get lostModeDetails => 'Verloren-Modus-Details';

  @override
  String get lostModeEnabledBy => 'Aktiviert von';

  @override
  String get lostModeEnabledAt => 'Aktiviert am';

  @override
  String get searchBlueprints => 'Blueprints suchen...';

  @override
  String get searchVulnerabilities => 'Schwachstellen suchen...';

  @override
  String get searchThreats => 'Bedrohungen suchen...';

  @override
  String get searchAuditLog => 'Audit-Log suchen...';

  @override
  String get filterCritical => 'Kritisch';

  @override
  String get filterHigh => 'Hoch';

  @override
  String get filterMedium => 'Mittel';

  @override
  String get filterLow => 'Niedrig';

  @override
  String get filterClearAll => 'Alle löschen';

  @override
  String get filterTitle => 'Filter';

  @override
  String get filterApply => 'Anwenden';

  @override
  String get filterPlatform => 'Plattform';

  @override
  String get filterSupervision => 'Überwachung';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'ADE-Integrationen';

  @override
  String get noAdeIntegrations => 'Keine ADE-Integrationen gefunden.';

  @override
  String get adeDevices => 'ADE-Geräte';

  @override
  String get noAdeDevices => 'Keine ADE-Geräte gefunden.';

  @override
  String get tokenExpiry => 'Token-Ablauf';

  @override
  String get tokenValid => 'Token gültig';

  @override
  String get tokenExpired => 'Token abgelaufen';

  @override
  String get orgName => 'Organisation';

  @override
  String get defaultBlueprint => 'Standard-Blueprint';

  @override
  String get renewToken => 'Token erneuern';

  @override
  String get publicKey => 'Öffentlicher Schlüssel';

  @override
  String get vulnerabilityDetections => 'Schwachstellen-Erkennungen';

  @override
  String get noDetectionsFound => 'Keine Erkennungen gefunden.';

  @override
  String get behavioralDetections => 'Verhaltenserkennungen';

  @override
  String get noBehavioralDetections => 'Keine Verhaltenserkennungen gefunden.';

  @override
  String get searchBehavioralDetections => 'Erkennungen suchen...';

  @override
  String get affectedDevices => 'Betroffene Geräte';

  @override
  String get affectedSoftware => 'Betroffene Software';

  @override
  String get blueprintTemplates => 'Blueprint-Vorlagen';

  @override
  String get noTemplatesFound => 'Keine Vorlagen gefunden.';

  @override
  String get otaEnrollmentProfile => 'OTA-Registrierungsprofil';

  @override
  String get libraryItemActivity => 'Aktivität';

  @override
  String get libraryItemDeploymentStatus => 'Bereitstellungsstatus';

  @override
  String get noActivityFound2 => 'Keine Aktivität gefunden.';

  @override
  String get noStatusFound => 'Kein Bereitstellungsstatus gefunden.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Erkennungen',
      one: '1 Erkennung',
      zero: 'Keine Erkennungen',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Integrationen',
      one: '1 Integration',
      zero: 'Keine Integrationen',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Schwachstellendetails';

  @override
  String get description => 'Beschreibung';

  @override
  String get firstDetected => 'Erste Erkennung';

  @override
  String get lastDetected => 'Letzte Erkennung';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Software',
      one: '1 Software',
      zero: 'Keine Software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Integration bearbeiten';

  @override
  String get deleteIntegration => 'Integration löschen';

  @override
  String get deleteIntegrationConfirm =>
      'Sind Sie sicher, dass Sie diese ADE-Integration löschen möchten? Dies kann nicht rückgängig gemacht werden.';

  @override
  String get integrationDeleted => 'Integration gelöscht.';

  @override
  String get integrationUpdated => 'Integration aktualisiert.';

  @override
  String get defaultBlueprintId => 'Standard-Blueprint-ID';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Registrierungsprofil herunterladen';

  @override
  String get otaProfileCopied =>
      'Registrierungsprofil in die Zwischenablage kopiert.';

  @override
  String get noOtaProfile => 'Kein Registrierungsprofil verfügbar.';

  @override
  String get createTag => 'Tag erstellen';

  @override
  String get editTag => 'Tag bearbeiten';

  @override
  String get deleteTag => 'Tag löschen';

  @override
  String get deleteTagConfirm =>
      'Sind Sie sicher, dass Sie diesen Tag löschen möchten?';

  @override
  String get tagColor => 'Farbe';

  @override
  String get tagCreated => 'Tag erstellt.';

  @override
  String get tagUpdated => 'Tag aktualisiert.';

  @override
  String get tagDeleted => 'Tag gelöscht.';

  @override
  String get noTagsFound => 'Keine Tags gefunden.';

  @override
  String get libraryItemDetail => 'Bibliothekselement';

  @override
  String get viewActivity => 'Aktivität anzeigen';

  @override
  String get viewStatus => 'Status anzeigen';

  @override
  String get installations => 'Installationen';

  @override
  String get createAdeIntegration => 'ADE-Integration erstellen';

  @override
  String get adeCreateDescription =>
      'Laden Sie eine Server-Token-Datei (.p7m) aus dem Apple Business Manager hoch, um eine neue ADE-Integration zu erstellen.';

  @override
  String get selectTokenFile => 'Token-Datei auswählen';

  @override
  String tokenFileSelected(String name) {
    return 'Token-Datei: $name';
  }

  @override
  String get noTokenFileSelected => 'Keine Token-Datei ausgewählt';

  @override
  String get integrationCreated => 'Integration erstellt.';

  @override
  String get create => 'Erstellen';

  @override
  String get step1GetPublicKey => 'Schritt 1: Public Key herunterladen';

  @override
  String get step1Description =>
      'Kopieren Sie den Public Key und laden Sie ihn im Apple Business Manager hoch.';

  @override
  String get step2UploadToken => 'Schritt 2: Server-Token hochladen';

  @override
  String get step2Description =>
      'Wählen Sie die .p7m Token-Datei aus, die Sie von Apple heruntergeladen haben.';

  @override
  String get step3Configure => 'Schritt 3: Konfigurieren';

  @override
  String get publicKeyCopied => 'Public Key in die Zwischenablage kopiert.';

  @override
  String get renewTokenDescription =>
      'Laden Sie eine neue .p7m Token-Datei hoch, um das Token dieser Integration zu erneuern.';

  @override
  String get tokenRenewed => 'Token erneuert.';

  @override
  String get aboutLinks => 'Links';

  @override
  String get aboutWebsite => 'Website';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Quellcode';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Technologie';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Architektur';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Datenklassen';

  @override
  String get aboutNavigationLabel => 'Navigation';

  @override
  String get aboutOpenSourceLicenses => 'Open Source Lizenzen';

  @override
  String get aboutShowHide => 'Sichtbarkeit umschalten';

  @override
  String get editProfileTitle => 'Verbindung bearbeiten';

  @override
  String get editProfileSubtitle =>
      'Aktualisieren Sie Ihre Tenant-Verbindungseinstellungen.';

  @override
  String get apiTokenHintEdit =>
      'Leer lassen, um vorhandenes Token beizubehalten';

  @override
  String get profileUpdated => 'Profil aktualisiert.';

  @override
  String profileSwitched(String name) {
    return 'Zu $name gewechselt.';
  }

  @override
  String get securityAutoLock => 'Automatische Sperre';

  @override
  String get securityAutoLockDescription =>
      'Authentifizierung automatisch erfordern, nachdem die App im Hintergrund war.';

  @override
  String get timeoutImmediately => 'Sofort';

  @override
  String get timeoutSeconds30 => 'Nach 30 Sekunden';

  @override
  String get timeoutSeconds60 => 'Nach 1 Minute';

  @override
  String get timeoutSeconds120 => 'Nach 2 Minuten';

  @override
  String get timeoutMinutes5 => 'Nach 5 Minuten';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Kein Blueprint';

  @override
  String get presetSaveFilter => 'Filtervoreinstellung speichern';

  @override
  String get presetLoad => 'Voreinstellung laden';

  @override
  String get presetName => 'Name der Voreinstellung';

  @override
  String get presetNameHint => 'z.B. Nicht überwachte Macs';

  @override
  String get presetSaved => 'Filtervoreinstellung gespeichert.';

  @override
  String get presetDeleted => 'Filtervoreinstellung gelöscht.';

  @override
  String presetApplied(String name) {
    return 'Voreinstellung \"$name\" angewendet.';
  }

  @override
  String get presetNoPresets => 'Keine gespeicherten Voreinstellungen';

  @override
  String get presetNoPresetsMessage =>
      'Speichern Sie Ihre aktuellen Filter als Voreinstellung für schnellen Zugriff.';

  @override
  String get presetDeleteConfirm => 'Diese Voreinstellung löschen?';

  @override
  String get presetNameRequired =>
      'Bitte geben Sie einen Namen für die Voreinstellung ein.';

  @override
  String selectedCount(int count) {
    return '$count ausgewählt';
  }

  @override
  String get selectAll => 'Alle auswählen';

  @override
  String get deselectAll => 'Alle abwählen';

  @override
  String get bulkActions => 'Aktionen';

  @override
  String bulkActionsTitle(int count) {
    return 'Aktionen für $count Geräte';
  }

  @override
  String get bulkActionAssignTag => 'Tag zuweisen';

  @override
  String get bulkActionAssignTagDescription =>
      'Allen ausgewählten Geräten ein Tag hinzufügen';

  @override
  String get bulkActionAssignBlueprint => 'Blueprint zuweisen';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Ausgewählte Geräte in ein Blueprint verschieben';

  @override
  String get bulkActionLock => 'Geräte sperren';

  @override
  String get bulkActionLockDescription =>
      'Alle ausgewählten Geräte ferngesteuert sperren';

  @override
  String get bulkActionRestart => 'Geräte neustarten';

  @override
  String get bulkActionRestartDescription =>
      'Alle ausgewählten Geräte neustarten';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Möchten Sie wirklich $count Geräte neustarten?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Aktion auf $count Geräten erfolgreich abgeschlossen.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Auf $success Geräten abgeschlossen, $failed fehlgeschlagen.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed von $total abgeschlossen';
  }

  @override
  String get biometricReasonBulkAction =>
      'Authentifizieren Sie sich, um die Massenaktion auszuführen';

  @override
  String get lockPin => 'Sperr-PIN (optional)';

  @override
  String get noTagsAvailable =>
      'Keine Tags verfügbar. Erstellen Sie Tags in der Kandji-Konsole.';

  @override
  String get noBlueprintsAvailable => 'Keine Blueprints verfügbar.';

  @override
  String get selectADevice => 'Gerät auswählen';

  @override
  String get selectABlueprint => 'Blueprint auswählen';

  @override
  String get clearSearch => 'Suche löschen';

  @override
  String get refresh => 'Aktualisieren';

  @override
  String get moreActions => 'Weitere Aktionen';

  @override
  String get close => 'Schließen';

  @override
  String get onboardingSkip => 'Überspringen';

  @override
  String get onboardingNext => 'Weiter';

  @override
  String get onboardingGetStarted => 'Loslegen';

  @override
  String get onboardingWelcomeTitle => 'Willkommen bei FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Ihre mobile Kommandozentrale für Apple-Geräteflottenverwaltung. Überwachen, verwalten und sichern Sie Ihre gesamte Flotte von überall.';

  @override
  String get onboardingDevicesTitle => 'Geräteverwaltung';

  @override
  String get onboardingDevicesSubtitle =>
      'Volle Transparenz und Kontrolle über jedes Gerät in Ihrer Flotte.';

  @override
  String get onboardingDevicesFeature1 =>
      'Alle registrierten iPhones, iPads, Macs und Apple TVs anzeigen';

  @override
  String get onboardingDevicesFeature2 =>
      'Fernbefehle senden: Sperren, Neustarten, Löschen und mehr';

  @override
  String get onboardingDevicesFeature3 =>
      'Blueprints, Apps und Compliance-Status verfolgen';

  @override
  String get onboardingSecurityTitle => 'Für Sicherheit gebaut';

  @override
  String get onboardingSecuritySubtitle =>
      'Ihre Flottendaten bleiben mit mehreren Sicherheitsebenen geschützt.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrische Authentifizierung mit Face ID oder Fingerabdruck';

  @override
  String get onboardingSecurityFeature2 =>
      '6-stellige PIN-Sperre für den App-Zugang';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatische Sitzungssperre nach Zeitüberschreitung';

  @override
  String get onboardingReadyTitle => 'Bereit zum Start';

  @override
  String get onboardingReadySubtitle =>
      'Verbinden Sie Ihren Kandji-Tenant, um mit der Verwaltung Ihrer Apple-Geräteflotte zu beginnen. Als Nächstes richten Sie Ihre API-Verbindung und Sicherheits-PIN ein.';
}
