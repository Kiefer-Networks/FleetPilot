// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Romanian Moldavian Moldovan (`ro`).
class AppLocalizationsRo extends AppLocalizations {
  AppLocalizationsRo([String locale = 'ro']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Dispozitive';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Utilizatori';

  @override
  String get navSettings => 'Setări';

  @override
  String get welcomeTitle => 'Bine ați venit la FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Administrați flota de dispozitive Apple de oriunde.';

  @override
  String get addProfile => 'Adaugă profil';

  @override
  String get editProfile => 'Editează profil';

  @override
  String get displayName => 'Nume afișat';

  @override
  String get displayNameHint => 'ex. Acme Corp — Prod';

  @override
  String get region => 'Regiune';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomeniu';

  @override
  String get subdomainHint => 'tenant-ul-dvs';

  @override
  String get apiToken => 'Token API';

  @override
  String get apiTokenHint => 'Inserați token-ul API aici';

  @override
  String urlPreview(String url) {
    return 'URL API: $url';
  }

  @override
  String get verifyAndSave => 'Verifică și salvează';

  @override
  String get verifying => 'Se verifică conexiunea...';

  @override
  String get connectionSuccess => 'Conexiune verificată cu succes!';

  @override
  String get errorInvalidToken =>
      'Token API invalid. Verificați token-ul în consola web.';

  @override
  String get errorInsufficientPermissions =>
      'Permisiuni insuficiente. Asigurați-vă că token-ul are acces de citire la dispozitive.';

  @override
  String get errorNetworkUnreachable =>
      'API inaccesibil. Verificați conexiunea la internet și subdomeniul.';

  @override
  String get errorNotFound => 'Resursa solicitată nu a fost găsită.';

  @override
  String get errorValidation =>
      'Cererea conține date invalide. Verificați datele introduse.';

  @override
  String get errorRateLimit =>
      'Prea multe cereri. Așteptați un moment și încercați din nou.';

  @override
  String get errorServer =>
      'Serverul a întâmpinat o eroare. Încercați din nou mai târziu.';

  @override
  String get errorUnexpected =>
      'A apărut o eroare neașteptată. Încercați din nou.';

  @override
  String get retry => 'Reîncearcă';

  @override
  String get cancel => 'Anulează';

  @override
  String get delete => 'Șterge';

  @override
  String get save => 'Salvează';

  @override
  String get search => 'Căutare';

  @override
  String get searchDevices => 'Caută dispozitive...';

  @override
  String get filterAll => 'Toate';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Toate blueprint-urile';

  @override
  String loadingDevices(int count) {
    return 'Se încarcă $count dispozitive...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de dispozitive',
      few: '$count dispozitive',
      one: '1 dispozitiv',
      zero: 'Niciun dispozitiv',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Niciun dispozitiv găsit';

  @override
  String get noDevicesFoundMessage => 'Ajustați căutarea sau filtrele.';

  @override
  String lastCheckIn(String time) {
    return 'Ultima verificare: $time';
  }

  @override
  String get compliancePass => 'Conformitate';

  @override
  String get complianceFail => 'Neconformitate';

  @override
  String get compliancePending => 'În așteptare';

  @override
  String get deviceDetails => 'Detalii dispozitiv';

  @override
  String get serialNumber => 'Număr de serie';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'Versiune OS';

  @override
  String get assetTag => 'Etichetă activ';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Înregistrat';

  @override
  String get assignedUser => 'Utilizator alocat';

  @override
  String get actions => 'Acțiuni';

  @override
  String get actionLock => 'Blocare';

  @override
  String get actionRestart => 'Repornire';

  @override
  String get actionShutdown => 'Oprire';

  @override
  String get actionErase => 'Ștergere';

  @override
  String get actionBlankPush => 'Trimite Blank Push';

  @override
  String get actionReinstallAgent => 'Reinstalează agent';

  @override
  String get actionUpdateInventory => 'Actualizează inventar';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Activează Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Dezactivează Remote Desktop';

  @override
  String get actionLostMode => 'Activează modul pierdut';

  @override
  String get destructiveActionTitle => 'Confirmați acțiunea distructivă';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Această acțiune nu poate fi anulată. Introduceți \"$deviceName\" pentru confirmare.';
  }

  @override
  String get destructiveActionHint =>
      'Introduceți numele dispozitivului pentru confirmare';

  @override
  String get confirm => 'Confirmă';

  @override
  String get actionSuccess => 'Acțiune executată cu succes.';

  @override
  String get actionFailed => 'Acțiunea a eșuat. Încercați din nou.';

  @override
  String get biometricReason => 'Autentificați-vă pentru FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Autentificați-vă pentru a vizualiza datele sensibile';

  @override
  String get biometricReasonDestructive =>
      'Autentificați-vă pentru a executa această acțiune';

  @override
  String get biometricFailed => 'Autentificarea a eșuat. Încercați din nou.';

  @override
  String get profiles => 'Profile';

  @override
  String activeProfile(String name) {
    return 'Activ: $name';
  }

  @override
  String get switchProfile => 'Schimbă profilul';

  @override
  String get deleteProfile => 'Șterge profilul';

  @override
  String get deleteProfileConfirm =>
      'Sigur doriți să ștergeți acest profil? Această acțiune nu poate fi anulată.';

  @override
  String get noProfiles => 'Niciun profil configurat';

  @override
  String get settings => 'Setări';

  @override
  String get about => 'Despre';

  @override
  String version(String version) {
    return 'Versiune $version';
  }

  @override
  String get validationRequired => 'Acest câmp este obligatoriu.';

  @override
  String get validationSubdomain =>
      'Sunt permise doar litere, cifre și cratime. Fără cratime la început sau la sfârșit.';

  @override
  String get validationToken =>
      'Format de token invalid. 20–500 caractere, doar alfanumerice și separatori comuni.';

  @override
  String pinLockedOut(int seconds) {
    return 'Prea multe încercări eșuate. Încercați din nou în $seconds secunde.';
  }

  @override
  String get complianceStatus => 'Stare conformitate';

  @override
  String get platform => 'Platformă';

  @override
  String get deviceName => 'Nume dispozitiv';

  @override
  String get searchUsers => 'Caută utilizatori...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de utilizatori',
      few: '$count utilizatori',
      one: '1 utilizator',
      zero: 'Niciun utilizator',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Niciun utilizator găsit';

  @override
  String get noUsersFoundMessage => 'Ajustați căutarea sau filtrele.';

  @override
  String get showArchived => 'Afișează arhivate';

  @override
  String get archived => 'Arhivat';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de blueprint-uri',
      few: '$count blueprint-uri',
      one: '1 blueprint',
      zero: 'Niciun blueprint',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Niciun blueprint găsit';

  @override
  String get noBlueprintsFoundMessage =>
      'Nu au fost configurate blueprint-uri încă.';

  @override
  String get enrollmentActive => 'Înregistrare activă';

  @override
  String get enrollmentInactive => 'Înregistrare inactivă';

  @override
  String get tabOverview => 'Prezentare';

  @override
  String get tabApps => 'Aplicații';

  @override
  String get tabStatus => 'Stare';

  @override
  String get tabActivity => 'Activitate';

  @override
  String get tabCommands => 'Comenzi';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Securitate';

  @override
  String get totalStorage => 'Spațiu total';

  @override
  String get availableStorage => 'Spațiu disponibil';

  @override
  String get totalRam => 'RAM total';

  @override
  String get wifiMac => 'Adresă MAC Wi-Fi';

  @override
  String get encryption => 'Criptare';

  @override
  String get passcode => 'Cod de acces';

  @override
  String get noAppsFound => 'Nicio aplicație găsită';

  @override
  String get noActivityFound => 'Nicio activitate găsită';

  @override
  String get noCommandsFound => 'Nicio comandă găsită';

  @override
  String get libraryItems => 'Elemente bibliotecă';

  @override
  String get parameters => 'Parametri';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Build OS';

  @override
  String get cellular => 'Rețea mobilă';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de aplicații',
      few: '$count aplicații',
      one: '1 aplicație',
      zero: 'Nicio aplicație',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Detalii utilizator';

  @override
  String get jobTitle => 'Funcție';

  @override
  String get department => 'Departament';

  @override
  String get createdAt => 'Creat';

  @override
  String get updatedAt => 'Actualizat';

  @override
  String get assignedDevices => 'Dispozitive alocate';

  @override
  String get noAssignedDevices =>
      'Niciun dispozitiv alocat acestui utilizator.';

  @override
  String get userInfo => 'Informații utilizator';

  @override
  String get navMore => 'Mai mult';

  @override
  String get tabSecrets => 'Secrete';

  @override
  String get filevaultKey => 'Cheie de recuperare FileVault';

  @override
  String get unlockPin => 'PIN de deblocare';

  @override
  String get recoveryPassword => 'Parolă Recovery Lock';

  @override
  String get bypassCode => 'Cod de ocolire blocare activare';

  @override
  String get noSecretsFound =>
      'Niciun secret disponibil pentru acest dispozitiv.';

  @override
  String get secretCopied => 'Secret copiat în clipboard';

  @override
  String get threats => 'Amenințări';

  @override
  String get noThreatsFound => 'Nicio amenințare detectată.';

  @override
  String get vulnerabilities => 'Vulnerabilități';

  @override
  String get noVulnerabilitiesFound => 'Nicio vulnerabilitate detectată.';

  @override
  String get aboutApp => 'Despre FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot este o aplicație open-source de administrare MDM pentru flote de dispozitive Apple.';

  @override
  String get tapToCopy => 'Atingeți pentru copiere';

  @override
  String get devices => 'Dispozitive';

  @override
  String get severity => 'Severitate';

  @override
  String get tabLocation => 'Locație';

  @override
  String get locationNotAvailable =>
      'Datele de locație nu sunt disponibile pentru acest dispozitiv.';

  @override
  String get enableLostModeHint =>
      'Activați modul pierdut pentru a localiza acest dispozitiv.';

  @override
  String get lostModeEnabled => 'Mod pierdut activat';

  @override
  String get noLibraryItemsFound => 'Niciun element de bibliotecă găsit.';

  @override
  String get licenses => 'Licențe';

  @override
  String get lostModeMessage => 'Mesaj mod pierdut';

  @override
  String get lostModePhone => 'Număr de telefon';

  @override
  String get lostModeFootnote =>
      'Mesaj și număr de telefon opționale afișate pe dispozitiv';

  @override
  String get supervised => 'Supravegheat';

  @override
  String get unsupervised => 'Nesupravegheat';

  @override
  String get filterSupervised => 'Supravegheat';

  @override
  String get filterUnsupervised => 'Nesupravegheat';

  @override
  String get language => 'Limbă';

  @override
  String get languageSystem => 'Standard sistem';

  @override
  String get actionDisableLostMode => 'Dezactivează modul pierdut';

  @override
  String get actionClearPasscode => 'Șterge codul de acces';

  @override
  String get filterLostMode => 'Mod pierdut';

  @override
  String get lostMode => 'Mod pierdut';

  @override
  String get sectionManagement => 'Administrare';

  @override
  String get sectionStatus => 'Stare';

  @override
  String get statusMissing => 'Lipsă';

  @override
  String get statusRemoved => 'Eliminat';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identificator';

  @override
  String get processor => 'Procesor';

  @override
  String get hardwareUuid => 'UUID hardware';

  @override
  String get devicePosture => 'Stare dispozitiv';

  @override
  String get unknownDevice => 'Dispozitiv necunoscut';

  @override
  String get securityAppLock => 'Blocare aplicație';

  @override
  String get securityAppLockDescription =>
      'Setați un PIN de 6 cifre pentru a proteja aplicația. Autentificarea biometrică poate fi activată după setarea unui PIN.';

  @override
  String get securityAppLockActive => 'Blocare aplicație activată';

  @override
  String get securityAppLockInactive =>
      'Nicio blocare de aplicație configurată';

  @override
  String get securitySetPin => 'Setare PIN';

  @override
  String get securityChangePin => 'Schimbare PIN';

  @override
  String get securityRemovePin => 'Eliminare PIN';

  @override
  String get securityCurrentPin => 'PIN actual';

  @override
  String get securityNewPin => 'PIN nou';

  @override
  String get securityConfirmPin =>
      'Introduceți PIN-ul din nou pentru confirmare.';

  @override
  String get securityPinLength => 'PIN-ul trebuie să aibă 6 cifre.';

  @override
  String get securityPinMismatch => 'PIN-urile nu corespund.';

  @override
  String get securityPinWrong => 'PIN incorect.';

  @override
  String get securityPinSet => 'PIN-ul a fost setat.';

  @override
  String get securityPinChanged => 'PIN-ul a fost schimbat.';

  @override
  String get securityPinRemoved =>
      'PIN-ul și blocarea aplicației au fost eliminate.';

  @override
  String get securityBiometric => 'Biometrie';

  @override
  String get securityBiometricDescription =>
      'Folosiți amprenta digitală sau recunoașterea facială pentru a debloca aplicația în loc de PIN.';

  @override
  String get securityBiometricEnable => 'Deblocare biometrică';

  @override
  String get securityBiometricActive => 'Activă';

  @override
  String get securityBiometricInactive => 'Inactivă';

  @override
  String get securityBiometricUnavailable =>
      'Autentificarea biometrică nu este disponibilă pe acest dispozitiv.';

  @override
  String get securityNext => 'Înainte';

  @override
  String get actionRenewMdm => 'Reînnoire profil MDM';

  @override
  String get actionSetName => 'Setare nume dispozitiv';

  @override
  String get actionSetNameHint => 'Introduceți noul nume al dispozitivului';

  @override
  String get actionDeleteUser => 'Ștergere utilizator';

  @override
  String get actionDeleteUserName => 'Nume utilizator';

  @override
  String get actionDeleteAllUsers => 'Ștergere toți utilizatorii';

  @override
  String get actionForceDeletion => 'Forțare ștergere';

  @override
  String get actionUnlockAccount => 'Deblocare cont';

  @override
  String get actionPlayLostModeSound => 'Redare sunet mod pierdut';

  @override
  String get actionUpdateLocation => 'Actualizare locație';

  @override
  String get erasePin => 'PIN de 6 cifre';

  @override
  String get erasePinHint => 'Obligatoriu pentru dispozitive mobile';

  @override
  String get erasePreserveDataPlan => 'Păstrare plan de date';

  @override
  String get eraseDisallowProximitySetup =>
      'Interzicere configurare prin proximitate';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Mesaj de blocare';

  @override
  String get lockPhone => 'Număr de telefon';

  @override
  String get restartRebuildKernelCache => 'Reconstruire cache kernel';

  @override
  String get restartNotifyUser => 'Notificare utilizator';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Note';

  @override
  String get noNotesFound => 'Nicio notă încă';

  @override
  String get addNote => 'Adaugă notă';

  @override
  String get editNote => 'Editează notă';

  @override
  String get deleteNote => 'Șterge notă';

  @override
  String get deleteNoteConfirm => 'Sigur doriți să ștergeți această notă?';

  @override
  String get noteContent => 'Conținut notă';

  @override
  String get noteSaved => 'Notă salvată.';

  @override
  String get noteDeleted => 'Notă ștearsă.';

  @override
  String get editDevice => 'Editează dispozitiv';

  @override
  String get deviceUpdated => 'Dispozitiv actualizat.';

  @override
  String get deleteDevice => 'Șterge dispozitiv';

  @override
  String get deleteDeviceConfirm =>
      'Dispozitivul va fi eliminat permanent din MDM. Această acțiune nu poate fi anulată.';

  @override
  String get deviceDeleted => 'Dispozitiv șters.';

  @override
  String get cancelLostMode => 'Anulare mod pierdut';

  @override
  String get cancelLostModeConfirm =>
      'Anulați cererea de mod pierdut în așteptare?';

  @override
  String get lostModeCancelled => 'Mod pierdut anulat.';

  @override
  String get tags => 'Etichete';

  @override
  String get noTags => 'Nicio etichetă';

  @override
  String get addTag => 'Adaugă etichetă';

  @override
  String get tagName => 'Nume etichetă';

  @override
  String get manageTags => 'Gestionare etichete';

  @override
  String get auditLog => 'Jurnal de audit';

  @override
  String get noAuditEvents => 'Niciun eveniment de audit găsit';

  @override
  String get actionDailyCheckIn => 'Verificare zilnică';

  @override
  String get licensing => 'Licențiere';

  @override
  String get deviceLimit => 'Limită dispozitive';

  @override
  String get devicesUsed => 'Dispozitive utilizate';

  @override
  String get licenseType => 'Tip licență';

  @override
  String get appleDevices => 'Dispozitive Apple';

  @override
  String get deleteUser => 'Ștergere utilizator';

  @override
  String get deleteUserConfirm =>
      'Sigur doriți să ștergeți acest utilizator? Această acțiune nu poate fi anulată.';

  @override
  String get userDeleted => 'Utilizator șters.';

  @override
  String get createBlueprint => 'Creare blueprint';

  @override
  String get editBlueprint => 'Editare blueprint';

  @override
  String get deleteBlueprint => 'Ștergere blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Ștergerea acestui blueprint va dezînregistra toate dispozitivele alocate. Această acțiune nu poate fi anulată.';

  @override
  String get blueprintCreated => 'Blueprint creat.';

  @override
  String get blueprintUpdated => 'Blueprint actualizat.';

  @override
  String get blueprintDeleted => 'Blueprint șters.';

  @override
  String get blueprintName => 'Nume blueprint';

  @override
  String get blueprintDescription => 'Descriere';

  @override
  String get enrollmentCode => 'Cod de înregistrare';

  @override
  String get assignLibraryItem => 'Alocă element de bibliotecă';

  @override
  String get removeLibraryItem => 'Elimină element de bibliotecă';

  @override
  String get libraryItemAssigned => 'Element de bibliotecă alocat.';

  @override
  String get libraryItemRemoved => 'Element de bibliotecă eliminat.';

  @override
  String get lostModeDetails => 'Detalii mod pierdut';

  @override
  String get lostModeEnabledBy => 'Activat de';

  @override
  String get lostModeEnabledAt => 'Activat la';

  @override
  String get searchBlueprints => 'Caută blueprint-uri...';

  @override
  String get searchVulnerabilities => 'Caută vulnerabilități...';

  @override
  String get searchThreats => 'Caută amenințări...';

  @override
  String get searchAuditLog => 'Caută în jurnalul de audit...';

  @override
  String get filterCritical => 'Critică';

  @override
  String get filterHigh => 'Ridicată';

  @override
  String get filterMedium => 'Medie';

  @override
  String get filterLow => 'Scăzută';

  @override
  String get filterClearAll => 'Șterge toate';

  @override
  String get filterTitle => 'Filtre';

  @override
  String get filterApply => 'Aplică';

  @override
  String get filterPlatform => 'Platformă';

  @override
  String get filterSupervision => 'Supraveghere';

  @override
  String get filterStatus => 'Stare';

  @override
  String get adeIntegrations => 'Integrări ADE';

  @override
  String get noAdeIntegrations => 'Nicio integrare ADE găsită.';

  @override
  String get adeDevices => 'Dispozitive ADE';

  @override
  String get noAdeDevices => 'Niciun dispozitiv ADE găsit.';

  @override
  String get tokenExpiry => 'Expirare token';

  @override
  String get tokenValid => 'Token valid';

  @override
  String get tokenExpired => 'Token expirat';

  @override
  String get orgName => 'Organizație';

  @override
  String get defaultBlueprint => 'Blueprint implicit';

  @override
  String get renewToken => 'Reînnoire token';

  @override
  String get publicKey => 'Cheie publică';

  @override
  String get vulnerabilityDetections => 'Detectări de vulnerabilități';

  @override
  String get noDetectionsFound => 'Nicio detectare găsită.';

  @override
  String get behavioralDetections => 'Detectări comportamentale';

  @override
  String get noBehavioralDetections =>
      'Nicio detectare comportamentală găsită.';

  @override
  String get searchBehavioralDetections => 'Caută detectări...';

  @override
  String get affectedDevices => 'Dispozitive afectate';

  @override
  String get noAffectedDevices =>
      'Niciun dispozitiv afectat găsit. Dispozitivele afectate anterior pot fi fost eliminate.';

  @override
  String get affectedSoftware => 'Software afectat';

  @override
  String get blueprintTemplates => 'Șabloane blueprint';

  @override
  String get noTemplatesFound => 'Niciun șablon găsit.';

  @override
  String get otaEnrollmentProfile => 'Profil de înregistrare OTA';

  @override
  String get libraryItemActivity => 'Activitate';

  @override
  String get libraryItemDeploymentStatus => 'Stare implementare';

  @override
  String get noActivityFound2 => 'Nicio activitate găsită.';

  @override
  String get noStatusFound => 'Nicio stare de implementare găsită.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de detectări',
      few: '$count detectări',
      one: '1 detectare',
      zero: 'Nicio detectare',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de integrări',
      few: '$count integrări',
      one: '1 integrare',
      zero: 'Nicio integrare',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Detalii vulnerabilitate';

  @override
  String get description => 'Descriere';

  @override
  String get firstDetected => 'Prima detectare';

  @override
  String get lastDetected => 'Ultima detectare';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count software',
      few: '$count software',
      one: '1 software',
      zero: 'Niciun software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Editare integrare';

  @override
  String get deleteIntegration => 'Ștergere integrare';

  @override
  String get deleteIntegrationConfirm =>
      'Sigur doriți să ștergeți această integrare ADE? Această acțiune nu poate fi anulată.';

  @override
  String get integrationDeleted => 'Integrare ștearsă.';

  @override
  String get integrationUpdated => 'Integrare actualizată.';

  @override
  String get defaultBlueprintId => 'ID blueprint implicit';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Descărcare profil de înregistrare';

  @override
  String get otaProfileCopied => 'Profil de înregistrare copiat în clipboard.';

  @override
  String get noOtaProfile => 'Niciun profil de înregistrare disponibil.';

  @override
  String get createTag => 'Creare etichetă';

  @override
  String get editTag => 'Editare etichetă';

  @override
  String get deleteTag => 'Ștergere etichetă';

  @override
  String get deleteTagConfirm => 'Sigur doriți să ștergeți această etichetă?';

  @override
  String get tagColor => 'Culoare';

  @override
  String get tagCreated => 'Etichetă creată.';

  @override
  String get tagUpdated => 'Etichetă actualizată.';

  @override
  String get tagDeleted => 'Etichetă ștearsă.';

  @override
  String get noTagsFound => 'Nicio etichetă găsită.';

  @override
  String get libraryItemDetail => 'Element de bibliotecă';

  @override
  String get viewActivity => 'Vezi activitate';

  @override
  String get viewStatus => 'Vezi stare';

  @override
  String get installations => 'Instalări';

  @override
  String get createAdeIntegration => 'Creare integrare ADE';

  @override
  String get adeCreateDescription =>
      'Încărcați un fișier de token server (.p7m) din Apple Business Manager pentru a crea o nouă integrare ADE.';

  @override
  String get selectTokenFile => 'Selectare fișier token';

  @override
  String tokenFileSelected(String name) {
    return 'Fișier token: $name';
  }

  @override
  String get noTokenFileSelected => 'Niciun fișier token selectat';

  @override
  String get integrationCreated => 'Integrare creată.';

  @override
  String get create => 'Creare';

  @override
  String get step1GetPublicKey => 'Pasul 1: Descărcați cheia publică';

  @override
  String get step1Description =>
      'Copiați cheia publică și încărcați-o în Apple Business Manager.';

  @override
  String get step2UploadToken => 'Pasul 2: Încărcați token-ul server';

  @override
  String get step2Description =>
      'Selectați fișierul token .p7m descărcat de la Apple.';

  @override
  String get step3Configure => 'Pasul 3: Configurare';

  @override
  String get publicKeyCopied => 'Cheie publică copiată în clipboard.';

  @override
  String get renewTokenDescription =>
      'Încărcați un fișier nou de token .p7m pentru a reînnoi token-ul acestei integrări.';

  @override
  String get tokenRenewed => 'Token reînnoit.';

  @override
  String get aboutLinks => 'Linkuri';

  @override
  String get aboutWebsite => 'Website';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Cod sursă';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Tehnologie';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Gestionare stare';

  @override
  String get aboutArchitecture => 'Arhitectură';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Clase de date';

  @override
  String get aboutNavigationLabel => 'Navigare';

  @override
  String get aboutOpenSourceLicenses => 'Licențe open source';

  @override
  String get aboutShowHide => 'Comutare vizibilitate';

  @override
  String get editProfileTitle => 'Editare conexiune';

  @override
  String get editProfileSubtitle =>
      'Actualizați setările de conexiune ale tenant-ului.';

  @override
  String get apiTokenHintEdit => 'Lăsați gol pentru a păstra token-ul existent';

  @override
  String get profileUpdated => 'Profil actualizat.';

  @override
  String profileSwitched(String name) {
    return 'Comutat la $name.';
  }

  @override
  String get securityAutoLock => 'Blocare automată';

  @override
  String get securityAutoLockDescription =>
      'Solicită autentificare automat după ce aplicația a fost în fundal.';

  @override
  String get timeoutImmediately => 'Imediat';

  @override
  String get timeoutSeconds30 => 'După 30 de secunde';

  @override
  String get timeoutSeconds60 => 'După 1 minut';

  @override
  String get timeoutSeconds120 => 'După 2 minute';

  @override
  String get timeoutMinutes5 => 'După 5 minute';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Fără blueprint';

  @override
  String get presetSaveFilter => 'Salvare presetare filtre';

  @override
  String get presetLoad => 'Încărcare presetare';

  @override
  String get presetName => 'Nume presetare';

  @override
  String get presetNameHint => 'ex. Mac-uri nesupravegheate';

  @override
  String get presetSaved => 'Presetare filtre salvată.';

  @override
  String get presetDeleted => 'Presetare filtre ștearsă.';

  @override
  String presetApplied(String name) {
    return 'Presetare \"$name\" aplicată.';
  }

  @override
  String get presetNoPresets => 'Nicio presetare salvată';

  @override
  String get presetNoPresetsMessage =>
      'Salvați filtrele curente ca presetare pentru acces rapid.';

  @override
  String get presetDeleteConfirm => 'Ștergeți această presetare?';

  @override
  String get presetNameRequired => 'Introduceți un nume pentru presetare.';

  @override
  String selectedCount(int count) {
    return '$count selectate';
  }

  @override
  String get selectAll => 'Selectare totală';

  @override
  String get deselectAll => 'Deselectare totală';

  @override
  String get bulkActions => 'Acțiuni';

  @override
  String bulkActionsTitle(int count) {
    return 'Acțiuni pentru $count dispozitive';
  }

  @override
  String get bulkActionAssignTag => 'Alocare etichetă';

  @override
  String get bulkActionAssignTagDescription =>
      'Adăugați o etichetă tuturor dispozitivelor selectate';

  @override
  String get bulkActionAssignBlueprint => 'Alocare blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Mutați dispozitivele selectate într-un blueprint';

  @override
  String get bulkActionLock => 'Blocare dispozitive';

  @override
  String get bulkActionLockDescription =>
      'Blocați de la distanță toate dispozitivele selectate';

  @override
  String get bulkActionRestart => 'Repornire dispozitive';

  @override
  String get bulkActionRestartDescription =>
      'Reporniți toate dispozitivele selectate';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Sigur doriți să reporniți $count dispozitive?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Acțiune finalizată cu succes pe $count dispozitive.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Finalizat pe $success dispozitive, $failed eșuate.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed din $total finalizate';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autentificați-vă pentru a executa acțiunea în masă';

  @override
  String get lockPin => 'PIN de blocare (opțional)';

  @override
  String get noTagsAvailable =>
      'Nicio etichetă disponibilă. Creați etichete în consola web MDM.';

  @override
  String get noBlueprintsAvailable => 'Niciun blueprint disponibil.';

  @override
  String get selectADevice => 'Selectați un dispozitiv';

  @override
  String get selectABlueprint => 'Selectați un blueprint';

  @override
  String get clearSearch => 'Șterge căutarea';

  @override
  String get refresh => 'Actualizare';

  @override
  String get moreActions => 'Mai multe acțiuni';

  @override
  String get close => 'Închide';

  @override
  String get onboardingSkip => 'Omite';

  @override
  String get onboardingNext => 'Înainte';

  @override
  String get onboardingGetStarted => 'Începe';

  @override
  String get onboardingWelcomeTitle => 'Bine ați venit la FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Centrul dvs. de comandă mobil pentru administrarea flotei de dispozitive Apple. Monitorizați, administrați și securizați întreaga flotă de oriunde.';

  @override
  String get onboardingDevicesTitle => 'Administrare dispozitive';

  @override
  String get onboardingDevicesSubtitle =>
      'Vizibilitate și control deplin asupra fiecărui dispozitiv din flotă.';

  @override
  String get onboardingDevicesFeature1 =>
      'Vizualizați toate iPhone-urile, iPad-urile, Mac-urile și Apple TV-urile înregistrate';

  @override
  String get onboardingDevicesFeature2 =>
      'Trimiteți comenzi de la distanță: blocare, repornire, ștergere și altele';

  @override
  String get onboardingDevicesFeature3 =>
      'Urmăriți blueprint-uri, aplicații și starea conformității';

  @override
  String get onboardingSecurityTitle => 'Construit pentru securitate';

  @override
  String get onboardingSecuritySubtitle =>
      'Datele flotei rămân protejate cu mai multe niveluri de securitate.';

  @override
  String get onboardingSecurityFeature1 =>
      'Autentificare biometrică cu Face ID sau amprentă digitală';

  @override
  String get onboardingSecurityFeature2 =>
      'Blocare cu PIN de 6 cifre pentru accesul la aplicație';

  @override
  String get onboardingSecurityFeature3 =>
      'Blocare automată a sesiunii după expirare';

  @override
  String get onboardingReadyTitle => 'Pregătit de start';

  @override
  String get onboardingReadySubtitle =>
      'Conectați-vă tenant-ul MDM pentru a începe administrarea flotei de dispozitive Apple. În continuare veți configura conexiunea API și PIN-ul de securitate.';

  @override
  String get searchTags => 'Caută etichete';

  @override
  String tagDeviceCount(int count) {
    return '$count dispozitive';
  }

  @override
  String get sortTitle => 'Sortare';

  @override
  String get sortDirection => 'Direcție sortare';

  @override
  String get ascending => 'Crescător';

  @override
  String get descending => 'Descrescător';

  @override
  String get filterSeverity => 'Severitate';

  @override
  String get filterSort => 'Filtrare și sortare';

  @override
  String get statusQuarantined => 'Carantinat';

  @override
  String get statusNotQuarantined => 'Neizolat';

  @override
  String get statusDetected => 'Detectat';

  @override
  String get statusReleased => 'Eliberat';

  @override
  String get severityCritical => 'Critică';

  @override
  String get severityHigh => 'Ridicată';

  @override
  String get severityMedium => 'Medie';

  @override
  String get severityLow => 'Scăzută';

  @override
  String threatCount(int count) {
    return '$count amenințări';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detectări';
  }

  @override
  String get downloadPublicKey => 'Descărcare';

  @override
  String get publicKeySaved => 'Cheie publică salvată';

  @override
  String get sortBy => 'Sortare după';

  @override
  String get sortByCvss => 'Scor CVSS';

  @override
  String get sortByDeviceCount => 'Dispozitive afectate';

  @override
  String get sortByCveId => 'ID CVE';

  @override
  String vulnCount(int count) {
    return '$count vulnerabilități';
  }

  @override
  String get assignTags => 'Etichete';

  @override
  String get noTagsAvailableMessage =>
      'Nicio etichetă disponibilă. Creați mai întâi etichete.';

  @override
  String get failedToLoadTags => 'Etichetele nu au putut fi încărcate';

  @override
  String get details => 'Detalii';

  @override
  String get searchLibraryItems => 'Caută elemente de bibliotecă...';

  @override
  String get categoryCustomScript => 'Script personalizat';

  @override
  String get categoryCustomApp => 'Aplicație personalizată';

  @override
  String get categoryCustomProfile => 'Profil personalizat';

  @override
  String get categoryInHouseApp => 'Aplicație In-House';

  @override
  String get categoryBuiltIn => 'Integrat';

  @override
  String get categoryVppApps => 'Aplicații VPP / App Store';

  @override
  String get categoryManagedProfiles => 'Profile administrate';

  @override
  String get categoryKandjiSetup => 'Configurare MDM';

  @override
  String get categoryMacosRelease => 'Actualizări macOS';

  @override
  String get categoryThreatPolicy => 'Politici de securitate';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de blueprint-uri',
      few: '$count blueprint-uri',
      one: '1 blueprint',
    );
    return 'În $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'O singură dată';

  @override
  String get executionFrequencyEvery15Min => 'La fiecare 15 minute';

  @override
  String get executionFrequencyEveryDay => 'Zilnic';

  @override
  String get executionFrequencyNoEnforcement => 'Fără aplicare';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Script de remediere';

  @override
  String get allProperties => 'Toate proprietățile';

  @override
  String get builtInLibraryItem => 'Element de bibliotecă integrat';

  @override
  String get builtInDetailsHint => 'Detalii disponibile în fila Stare';

  @override
  String get active => 'Activ';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Nu';

  @override
  String get execution => 'Execuție';

  @override
  String get restart => 'Repornire';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Tip instalare';

  @override
  String get enforcement => 'Aplicare';

  @override
  String get runsOnMac => 'Rulează pe Mac';

  @override
  String get runsOnIphone => 'Rulează pe iPhone';

  @override
  String get runsOnIpad => 'Rulează pe iPad';

  @override
  String get appName => 'Nume aplicație';

  @override
  String get appVersion => 'Versiune aplicație';

  @override
  String get minOsVersion => 'Versiune OS minimă';

  @override
  String get created => 'Creat';

  @override
  String get updated => 'Actualizat';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count de elemente',
      few: '$count elemente',
      one: '1 element',
      zero: 'Niciun element',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Rezolvat';

  @override
  String get severityInformational => 'Informativ';

  @override
  String get managementState => 'Stare administrare';

  @override
  String get managementStateOpen => 'Deschis';

  @override
  String get managementStateClosed => 'Închis';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Suspect';

  @override
  String get classificationMal => 'Malițios';

  @override
  String get blueprintRouting => 'Rutare blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Cod de înregistrare și rutare pentru înregistrare manuală / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'Rutarea blueprint nu este configurată pentru acest tenant.';

  @override
  String get enrollmentCodeActive => 'Activ';

  @override
  String get enrollmentCodeInactive => 'Inactiv';

  @override
  String get routingActivity => 'Activitate rutare';

  @override
  String get noRoutingActivity => 'Nicio activitate de rutare găsită.';

  @override
  String get selfServiceCategories => 'Categorii Self-Service';

  @override
  String get selfServiceDesc =>
      'Administrați categoriile Self-Service pentru utilizatorii dvs.';

  @override
  String get addCategory => 'Adaugă categorie';

  @override
  String get categoryName => 'Nume categorie';

  @override
  String get deleteCategory => 'Ștergere categorie';

  @override
  String get deleteCategoryConfirm =>
      'Sigur doriți să ștergeți această categorie?';

  @override
  String get noCategoriesFound => 'Nicio categorie găsită.';

  @override
  String get categoryCreated => 'Categorie creată';

  @override
  String get categoryDeleted => 'Categorie ștearsă';

  @override
  String get profileBody => 'XML profil';

  @override
  String get customProfile => 'Profil personalizat';

  @override
  String get classification => 'Clasificare';

  @override
  String get mdmEnabled => 'MDM activat';

  @override
  String get enrolledViaDep => 'Înregistrat prin DEP';

  @override
  String get userApprovedMdm => 'MDM aprobat de utilizator';

  @override
  String get network => 'Rețea';

  @override
  String get ipAddress => 'Adresă IP';

  @override
  String get wifiNetwork => 'Rețea Wi-Fi';

  @override
  String get bluetoothMac => 'MAC Bluetooth';

  @override
  String get activationLock => 'Blocare activare';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Mod dezvoltator';

  @override
  String get adbEnabled => 'ADB activat';

  @override
  String get unknownSources => 'Surse necunoscute';

  @override
  String get securityPatch => 'Patch de securitate';

  @override
  String get provisioningUdid => 'UDID provizionare';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Informații MDM';

  @override
  String get lastEnrollment => 'Ultima înregistrare';

  @override
  String get enterpriseId => 'ID întreprindere';

  @override
  String get manufacturer => 'Producător';

  @override
  String get generalStatus => 'Stare generală';

  @override
  String get apiLevel => 'Nivel API';

  @override
  String get userApprovedEnrollment => 'Înregistrare aprobată de utilizator';

  @override
  String get hostname => 'Nume gazdă';

  @override
  String get macAddress => 'Adresă MAC';

  @override
  String get publicIp => 'IP public';

  @override
  String get volumes => 'Volume';

  @override
  String volumeUsed(String percent) {
    return '$percent% utilizat';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available liber din $total';
  }

  @override
  String get encrypted => 'Criptat';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores nuclee';
  }

  @override
  String processors(String count) {
    return '$count procesoare';
  }

  @override
  String get batteryLevel => 'Nivel baterie';

  @override
  String get lastUser => 'Ultimul utilizator';

  @override
  String get bootVolume => 'Volum de pornire';

  @override
  String get localUsers => 'Utilizatori locali';

  @override
  String get regularUsers => 'Utilizatori standard';

  @override
  String get systemUsers => 'Utilizatori de sistem';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Alocare blueprint';

  @override
  String get installOnDevice => 'Instalare pe dispozitiv';

  @override
  String get selectBlueprint => 'Selectare blueprint';

  @override
  String get selectDevice => 'Selectare dispozitiv';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Licențe VPP';

  @override
  String get fileName => 'Nume fișier';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Blocare activare';

  @override
  String get prismCategoryApps => 'Aplicații';

  @override
  String get prismCategoryApplicationFirewall => 'Firewall aplicații';

  @override
  String get prismCategoryCellular => 'Rețea mobilă';

  @override
  String get prismCategoryCertificates => 'Certificate';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Desktop și screensaver';

  @override
  String get prismCategoryDeviceInformation => 'Informații dispozitiv';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper și XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Profile instalate';

  @override
  String get prismCategoryKernelExtensions => 'Extensii kernel';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents și Daemons';

  @override
  String get prismCategoryLocalUsers => 'Utilizatori locali';

  @override
  String get prismCategoryStartupSettings => 'Setări de pornire';

  @override
  String get prismCategorySystemExtensions => 'Extensii de sistem';

  @override
  String get prismCategoryTransparencyDatabase =>
      'Baza de date de transparență';

  @override
  String prismRecords(int count) {
    return '$count înregistrări';
  }

  @override
  String get prismNoData =>
      'Nu sunt date disponibile pentru această categorie.';

  @override
  String get prismExport => 'Export CSV';

  @override
  String get prismExportRequested =>
      'Export solicitat. Linkul de descărcare va fi disponibil în curând.';

  @override
  String get prismFilterByFamily => 'Familie dispozitiv';

  @override
  String get prismAllFamilies => 'Toate familiile';

  @override
  String get appearance => 'Aspect';

  @override
  String get themeMode => 'Temă';

  @override
  String get themeModeSystem => 'Sistem';

  @override
  String get themeModeLight => 'Luminoasă';

  @override
  String get themeModeDark => 'Întunecată';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Personalizat';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Administrat';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Securitate';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Actualizări OS';

  @override
  String get categoryAutoApps => 'Aplicații auto';

  @override
  String get autoApp => 'Aplicație auto';

  @override
  String get fileSize => 'Dimensiune fișier';

  @override
  String get unzipLocation => 'Locație decomprimare';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Fișier actualizat';

  @override
  String get mdmIdentifier => 'Identificator MDM';

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
  String get typeLabel => 'Tip';

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
