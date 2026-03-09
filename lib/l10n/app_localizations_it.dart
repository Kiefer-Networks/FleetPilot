// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Dispositivi';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Utenti';

  @override
  String get navSettings => 'Impostazioni';

  @override
  String get welcomeTitle => 'Benvenuto su FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Gestisci la tua flotta di dispositivi Apple da qualsiasi luogo.';

  @override
  String get addProfile => 'Aggiungi profilo';

  @override
  String get editProfile => 'Modifica profilo';

  @override
  String get displayName => 'Nome visualizzato';

  @override
  String get displayNameHint => 'es. Acme Corp — Prod';

  @override
  String get region => 'Regione';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Sottodominio';

  @override
  String get subdomainHint => 'il-tuo-tenant';

  @override
  String get apiToken => 'Token API';

  @override
  String get apiTokenHint => 'Incolla qui il token API';

  @override
  String urlPreview(String url) {
    return 'URL API: $url';
  }

  @override
  String get verifyAndSave => 'Verifica e salva';

  @override
  String get verifying => 'Verifica della connessione in corso...';

  @override
  String get connectionSuccess => 'Connessione verificata con successo!';

  @override
  String get errorInvalidToken =>
      'Token API non valido. Verificare il token nella console web.';

  @override
  String get errorInsufficientPermissions =>
      'Permessi insufficienti. Assicurarsi che il token abbia accesso in lettura ai dispositivi.';

  @override
  String get errorNetworkUnreachable =>
      'API non raggiungibile. Verificare la connessione Internet e il sottodominio.';

  @override
  String get errorNotFound => 'La risorsa richiesta non è stata trovata.';

  @override
  String get errorValidation =>
      'La richiesta conteneva dati non validi. Verificare l\'input.';

  @override
  String get errorRateLimit =>
      'Troppe richieste. Attendere un momento e riprovare.';

  @override
  String get errorServer =>
      'Il server ha riscontrato un errore. Riprovare più tardi.';

  @override
  String get errorUnexpected =>
      'Si è verificato un errore imprevisto. Riprovare.';

  @override
  String get retry => 'Riprova';

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get save => 'Salva';

  @override
  String get search => 'Cerca';

  @override
  String get searchDevices => 'Cerca dispositivi...';

  @override
  String get filterAll => 'Tutti';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Tutti i Blueprint';

  @override
  String loadingDevices(int count) {
    return 'Caricamento di $count dispositivi...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dispositivi',
      one: '1 dispositivo',
      zero: 'Nessun dispositivo',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Nessun dispositivo trovato';

  @override
  String get noDevicesFoundMessage => 'Modifica la ricerca o i filtri.';

  @override
  String lastCheckIn(String time) {
    return 'Ultimo check-in: $time';
  }

  @override
  String get compliancePass => 'Conforme';

  @override
  String get complianceFail => 'Non conforme';

  @override
  String get compliancePending => 'In attesa';

  @override
  String get deviceDetails => 'Dettagli dispositivo';

  @override
  String get serialNumber => 'Numero di serie';

  @override
  String get model => 'Modello';

  @override
  String get osVersion => 'Versione OS';

  @override
  String get assetTag => 'Tag asset';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Data di registrazione';

  @override
  String get assignedUser => 'Utente assegnato';

  @override
  String get actions => 'Azioni';

  @override
  String get actionLock => 'Blocca';

  @override
  String get actionRestart => 'Riavvia';

  @override
  String get actionShutdown => 'Spegni';

  @override
  String get actionErase => 'Cancella';

  @override
  String get actionBlankPush => 'Invia Blank Push';

  @override
  String get actionReinstallAgent => 'Reinstalla agente';

  @override
  String get actionUpdateInventory => 'Aggiorna inventario';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Attiva Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Disattiva Remote Desktop';

  @override
  String get actionLostMode => 'Attiva modalità smarrito';

  @override
  String get destructiveActionTitle => 'Conferma azione distruttiva';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Questa azione non può essere annullata. Inserire \"$deviceName\" per confermare.';
  }

  @override
  String get destructiveActionHint =>
      'Inserire il nome del dispositivo per confermare';

  @override
  String get confirm => 'Conferma';

  @override
  String get actionSuccess => 'Azione eseguita con successo.';

  @override
  String get actionFailed => 'Azione non riuscita. Riprovare.';

  @override
  String get biometricReason => 'Autenticarsi per accedere a FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Autenticarsi per visualizzare i dati sensibili';

  @override
  String get biometricReasonDestructive =>
      'Autenticarsi per eseguire questa azione';

  @override
  String get biometricFailed => 'Autenticazione non riuscita. Riprovare.';

  @override
  String get profiles => 'Profili';

  @override
  String activeProfile(String name) {
    return 'Attivo: $name';
  }

  @override
  String get switchProfile => 'Cambia profilo';

  @override
  String get deleteProfile => 'Elimina profilo';

  @override
  String get deleteProfileConfirm =>
      'Eliminare questo profilo? Questa azione non può essere annullata.';

  @override
  String get noProfiles => 'Nessun profilo configurato';

  @override
  String get settings => 'Impostazioni';

  @override
  String get about => 'Informazioni';

  @override
  String version(String version) {
    return 'Versione $version';
  }

  @override
  String get validationRequired => 'Questo campo è obbligatorio.';

  @override
  String get validationSubdomain =>
      'Sono ammessi solo lettere, numeri e trattini. Nessun trattino iniziale o finale.';

  @override
  String get validationToken =>
      'Formato del token non valido. Da 20 a 500 caratteri, solo alfanumerici e separatori comuni.';

  @override
  String pinLockedOut(int seconds) {
    return 'Troppi tentativi falliti. Riprovare tra $seconds secondi.';
  }

  @override
  String get complianceStatus => 'Stato di conformità';

  @override
  String get platform => 'Piattaforma';

  @override
  String get deviceName => 'Nome dispositivo';

  @override
  String get searchUsers => 'Cerca utenti...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count utenti',
      one: '1 utente',
      zero: 'Nessun utente',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Nessun utente trovato';

  @override
  String get noUsersFoundMessage => 'Modifica la ricerca o i filtri.';

  @override
  String get showArchived => 'Mostra archiviati';

  @override
  String get archived => 'Archiviato';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprint',
      one: '1 Blueprint',
      zero: 'Nessun Blueprint',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Nessun Blueprint trovato';

  @override
  String get noBlueprintsFoundMessage =>
      'Non sono ancora stati configurati Blueprint.';

  @override
  String get enrollmentActive => 'Registrazione attiva';

  @override
  String get enrollmentInactive => 'Registrazione inattiva';

  @override
  String get tabOverview => 'Panoramica';

  @override
  String get tabApps => 'App';

  @override
  String get tabStatus => 'Stato';

  @override
  String get tabActivity => 'Attività';

  @override
  String get tabCommands => 'Comandi';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Sicurezza';

  @override
  String get totalStorage => 'Archiviazione totale';

  @override
  String get availableStorage => 'Archiviazione disponibile';

  @override
  String get totalRam => 'RAM totale';

  @override
  String get wifiMac => 'Indirizzo MAC Wi-Fi';

  @override
  String get encryption => 'Crittografia';

  @override
  String get passcode => 'Codice di accesso';

  @override
  String get noAppsFound => 'Nessuna app trovata';

  @override
  String get noActivityFound => 'Nessuna attività trovata';

  @override
  String get noCommandsFound => 'Nessun comando trovato';

  @override
  String get libraryItems => 'Elementi della libreria';

  @override
  String get parameters => 'Parametri';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Build OS';

  @override
  String get cellular => 'Cellulare';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count app',
      one: '1 app',
      zero: 'Nessuna app',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Dettagli utente';

  @override
  String get jobTitle => 'Titolo professionale';

  @override
  String get department => 'Reparto';

  @override
  String get createdAt => 'Creato';

  @override
  String get updatedAt => 'Aggiornato';

  @override
  String get assignedDevices => 'Dispositivi assegnati';

  @override
  String get noAssignedDevices =>
      'Nessun dispositivo assegnato a questo utente.';

  @override
  String get userInfo => 'Info utente';

  @override
  String get navMore => 'Altro';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'Chiave di recupero FileVault';

  @override
  String get unlockPin => 'PIN di sblocco';

  @override
  String get recoveryPassword => 'Password Recovery Lock';

  @override
  String get bypassCode => 'Codice di bypass del blocco attivazione';

  @override
  String get noSecretsFound =>
      'Nessun secret disponibile per questo dispositivo.';

  @override
  String get secretCopied => 'Secret copiato negli appunti';

  @override
  String get threats => 'Minacce';

  @override
  String get noThreatsFound => 'Nessuna minaccia rilevata.';

  @override
  String get vulnerabilities => 'Vulnerabilità';

  @override
  String get noVulnerabilitiesFound => 'Nessuna vulnerabilità rilevata.';

  @override
  String get aboutApp => 'Informazioni su FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot è un\'app open source di gestione MDM per flotte di dispositivi Apple.';

  @override
  String get tapToCopy => 'Tocca per copiare';

  @override
  String get devices => 'Dispositivi';

  @override
  String get severity => 'Gravità';

  @override
  String get tabLocation => 'Posizione';

  @override
  String get locationNotAvailable =>
      'I dati di posizione non sono disponibili per questo dispositivo.';

  @override
  String get enableLostModeHint =>
      'Attiva la modalità smarrito per localizzare questo dispositivo.';

  @override
  String get lostModeEnabled => 'Modalità smarrito attivata';

  @override
  String get noLibraryItemsFound => 'Nessun elemento della libreria trovato.';

  @override
  String get licenses => 'Licenze';

  @override
  String get lostModeMessage => 'Messaggio modalità smarrito';

  @override
  String get lostModePhone => 'Numero di telefono';

  @override
  String get lostModeFootnote =>
      'Messaggio e numero di telefono opzionali visualizzati sul dispositivo';

  @override
  String get supervised => 'Supervisionato';

  @override
  String get unsupervised => 'Non supervisionato';

  @override
  String get filterSupervised => 'Supervisionato';

  @override
  String get filterUnsupervised => 'Non supervisionato';

  @override
  String get language => 'Lingua';

  @override
  String get languageSystem => 'Predefinita di sistema';

  @override
  String get actionDisableLostMode => 'Disattiva modalità smarrito';

  @override
  String get actionClearPasscode => 'Cancella codice di accesso';

  @override
  String get filterLostMode => 'Modalità smarrito';

  @override
  String get lostMode => 'Modalità smarrito';

  @override
  String get sectionManagement => 'Gestione';

  @override
  String get sectionStatus => 'Stato';

  @override
  String get statusMissing => 'Mancante';

  @override
  String get statusRemoved => 'Rimosso';

  @override
  String get agent => 'Agente';

  @override
  String get identifier => 'Identificativo';

  @override
  String get processor => 'Processore';

  @override
  String get hardwareUuid => 'UUID hardware';

  @override
  String get devicePosture => 'Postura del dispositivo';

  @override
  String get unknownDevice => 'Dispositivo sconosciuto';

  @override
  String get securityAppLock => 'Blocco app';

  @override
  String get securityAppLockDescription =>
      'Imposta un PIN a 6 cifre per proteggere l\'app. L\'autenticazione biometrica può essere attivata dopo aver impostato un PIN.';

  @override
  String get securityAppLockActive => 'Blocco app attivato';

  @override
  String get securityAppLockInactive => 'Nessun blocco app configurato';

  @override
  String get securitySetPin => 'Imposta PIN';

  @override
  String get securityChangePin => 'Cambia PIN';

  @override
  String get securityRemovePin => 'Rimuovi PIN';

  @override
  String get securityCurrentPin => 'PIN attuale';

  @override
  String get securityNewPin => 'Nuovo PIN';

  @override
  String get securityConfirmPin => 'Inserire nuovamente il PIN per conferma.';

  @override
  String get securityPinLength => 'Il PIN deve essere di 6 cifre.';

  @override
  String get securityPinMismatch => 'I PIN non corrispondono.';

  @override
  String get securityPinWrong => 'PIN errato.';

  @override
  String get securityPinSet => 'PIN impostato.';

  @override
  String get securityPinChanged => 'PIN modificato.';

  @override
  String get securityPinRemoved => 'PIN e blocco app rimossi.';

  @override
  String get securityBiometric => 'Biometria';

  @override
  String get securityBiometricDescription =>
      'Usa l\'impronta digitale o il riconoscimento facciale per sbloccare l\'app al posto del PIN.';

  @override
  String get securityBiometricEnable => 'Sblocco biometrico';

  @override
  String get securityBiometricActive => 'Attivo';

  @override
  String get securityBiometricInactive => 'Inattivo';

  @override
  String get securityBiometricUnavailable =>
      'L\'autenticazione biometrica non è disponibile su questo dispositivo.';

  @override
  String get securityNext => 'Avanti';

  @override
  String get actionRenewMdm => 'Rinnova profilo MDM';

  @override
  String get actionSetName => 'Imposta nome dispositivo';

  @override
  String get actionSetNameHint => 'Inserire il nuovo nome del dispositivo';

  @override
  String get actionDeleteUser => 'Elimina utente';

  @override
  String get actionDeleteUserName => 'Nome utente';

  @override
  String get actionDeleteAllUsers => 'Elimina tutti gli utenti';

  @override
  String get actionForceDeletion => 'Forza eliminazione';

  @override
  String get actionUnlockAccount => 'Sblocca account';

  @override
  String get actionPlayLostModeSound => 'Riproduci suono modalità smarrito';

  @override
  String get actionUpdateLocation => 'Aggiorna posizione';

  @override
  String get erasePin => 'PIN a 6 cifre';

  @override
  String get erasePinHint => 'Obbligatorio per dispositivi mobili';

  @override
  String get erasePreserveDataPlan => 'Mantieni piano dati';

  @override
  String get eraseDisallowProximitySetup =>
      'Non consentire configurazione di prossimità';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Messaggio di blocco';

  @override
  String get lockPhone => 'Numero di telefono';

  @override
  String get restartRebuildKernelCache => 'Ricostruisci cache del kernel';

  @override
  String get restartNotifyUser => 'Notifica utente';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Note';

  @override
  String get noNotesFound => 'Nessuna nota presente';

  @override
  String get addNote => 'Aggiungi nota';

  @override
  String get editNote => 'Modifica nota';

  @override
  String get deleteNote => 'Elimina nota';

  @override
  String get deleteNoteConfirm => 'Eliminare questa nota?';

  @override
  String get noteContent => 'Contenuto della nota';

  @override
  String get noteSaved => 'Nota salvata.';

  @override
  String get noteDeleted => 'Nota eliminata.';

  @override
  String get editDevice => 'Modifica dispositivo';

  @override
  String get deviceUpdated => 'Dispositivo aggiornato.';

  @override
  String get deleteDevice => 'Elimina dispositivo';

  @override
  String get deleteDeviceConfirm =>
      'Il dispositivo verrà rimosso definitivamente dall\'MDM. Questa azione non può essere annullata.';

  @override
  String get deviceDeleted => 'Dispositivo eliminato.';

  @override
  String get cancelLostMode => 'Annulla modalità smarrito';

  @override
  String get cancelLostModeConfirm =>
      'Annullare la richiesta di modalità smarrito in sospeso?';

  @override
  String get lostModeCancelled => 'Modalità smarrito annullata.';

  @override
  String get tags => 'Tag';

  @override
  String get noTags => 'Nessun tag';

  @override
  String get addTag => 'Aggiungi tag';

  @override
  String get tagName => 'Nome tag';

  @override
  String get manageTags => 'Gestisci tag';

  @override
  String get auditLog => 'Registro audit';

  @override
  String get noAuditEvents => 'Nessun evento di audit trovato';

  @override
  String get actionDailyCheckIn => 'Check-in giornaliero';

  @override
  String get licensing => 'Licenze';

  @override
  String get deviceLimit => 'Limite dispositivi';

  @override
  String get devicesUsed => 'Dispositivi utilizzati';

  @override
  String get licenseType => 'Tipo di licenza';

  @override
  String get appleDevices => 'Dispositivi Apple';

  @override
  String get deleteUser => 'Elimina utente';

  @override
  String get deleteUserConfirm =>
      'Eliminare questo utente? Questa azione non può essere annullata.';

  @override
  String get userDeleted => 'Utente eliminato.';

  @override
  String get createBlueprint => 'Crea Blueprint';

  @override
  String get editBlueprint => 'Modifica Blueprint';

  @override
  String get deleteBlueprint => 'Elimina Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'L\'eliminazione di questo Blueprint annullerà la registrazione di tutti i dispositivi assegnati. Questa azione non può essere annullata.';

  @override
  String get blueprintCreated => 'Blueprint creato.';

  @override
  String get blueprintUpdated => 'Blueprint aggiornato.';

  @override
  String get blueprintDeleted => 'Blueprint eliminato.';

  @override
  String get blueprintName => 'Nome Blueprint';

  @override
  String get blueprintDescription => 'Descrizione';

  @override
  String get enrollmentCode => 'Codice di registrazione';

  @override
  String get assignLibraryItem => 'Assegna elemento della libreria';

  @override
  String get removeLibraryItem => 'Rimuovi elemento della libreria';

  @override
  String get libraryItemAssigned => 'Elemento della libreria assegnato.';

  @override
  String get libraryItemRemoved => 'Elemento della libreria rimosso.';

  @override
  String get lostModeDetails => 'Dettagli modalità smarrito';

  @override
  String get lostModeEnabledBy => 'Attivato da';

  @override
  String get lostModeEnabledAt => 'Attivato il';

  @override
  String get searchBlueprints => 'Cerca Blueprint...';

  @override
  String get searchVulnerabilities => 'Cerca vulnerabilità...';

  @override
  String get searchThreats => 'Cerca minacce...';

  @override
  String get searchAuditLog => 'Cerca nel registro audit...';

  @override
  String get filterCritical => 'Critico';

  @override
  String get filterHigh => 'Alto';

  @override
  String get filterMedium => 'Medio';

  @override
  String get filterLow => 'Basso';

  @override
  String get filterClearAll => 'Cancella tutti';

  @override
  String get filterTitle => 'Filtri';

  @override
  String get filterApply => 'Applica';

  @override
  String get filterPlatform => 'Piattaforma';

  @override
  String get filterSupervision => 'Supervisione';

  @override
  String get filterStatus => 'Stato';

  @override
  String get adeIntegrations => 'Integrazioni ADE';

  @override
  String get noAdeIntegrations => 'Nessuna integrazione ADE trovata.';

  @override
  String get adeDevices => 'Dispositivi ADE';

  @override
  String get noAdeDevices => 'Nessun dispositivo ADE trovato.';

  @override
  String get tokenExpiry => 'Scadenza token';

  @override
  String get tokenValid => 'Token valido';

  @override
  String get tokenExpired => 'Token scaduto';

  @override
  String get orgName => 'Organizzazione';

  @override
  String get defaultBlueprint => 'Blueprint predefinito';

  @override
  String get renewToken => 'Rinnova token';

  @override
  String get publicKey => 'Chiave pubblica';

  @override
  String get vulnerabilityDetections => 'Rilevamenti vulnerabilità';

  @override
  String get noDetectionsFound => 'Nessun rilevamento trovato.';

  @override
  String get behavioralDetections => 'Rilevamenti comportamentali';

  @override
  String get noBehavioralDetections =>
      'Nessun rilevamento comportamentale trovato.';

  @override
  String get searchBehavioralDetections => 'Cerca rilevamenti...';

  @override
  String get affectedDevices => 'Dispositivi interessati';

  @override
  String get noAffectedDevices =>
      'Nessun dispositivo interessato trovato. I dispositivi precedentemente interessati potrebbero essere stati rimossi.';

  @override
  String get affectedSoftware => 'Software interessato';

  @override
  String get blueprintTemplates => 'Modelli Blueprint';

  @override
  String get noTemplatesFound => 'Nessun modello trovato.';

  @override
  String get otaEnrollmentProfile => 'Profilo di registrazione OTA';

  @override
  String get libraryItemActivity => 'Attività';

  @override
  String get libraryItemDeploymentStatus => 'Stato di distribuzione';

  @override
  String get noActivityFound2 => 'Nessuna attività trovata.';

  @override
  String get noStatusFound => 'Nessuno stato di distribuzione trovato.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count rilevamenti',
      one: '1 rilevamento',
      zero: 'Nessun rilevamento',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integrazioni',
      one: '1 integrazione',
      zero: 'Nessuna integrazione',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Dettagli vulnerabilità';

  @override
  String get description => 'Descrizione';

  @override
  String get firstDetected => 'Primo rilevamento';

  @override
  String get lastDetected => 'Ultimo rilevamento';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count software',
      one: '1 software',
      zero: 'Nessun software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Modifica integrazione';

  @override
  String get deleteIntegration => 'Elimina integrazione';

  @override
  String get deleteIntegrationConfirm =>
      'Eliminare questa integrazione ADE? Questa azione non può essere annullata.';

  @override
  String get integrationDeleted => 'Integrazione eliminata.';

  @override
  String get integrationUpdated => 'Integrazione aggiornata.';

  @override
  String get defaultBlueprintId => 'ID Blueprint predefinito';

  @override
  String get phone => 'Telefono';

  @override
  String get downloadOtaProfile => 'Scarica profilo di registrazione';

  @override
  String get otaProfileCopied =>
      'Profilo di registrazione copiato negli appunti.';

  @override
  String get noOtaProfile => 'Nessun profilo di registrazione disponibile.';

  @override
  String get createTag => 'Crea tag';

  @override
  String get editTag => 'Modifica tag';

  @override
  String get deleteTag => 'Elimina tag';

  @override
  String get deleteTagConfirm => 'Eliminare questo tag?';

  @override
  String get tagColor => 'Colore';

  @override
  String get tagCreated => 'Tag creato.';

  @override
  String get tagUpdated => 'Tag aggiornato.';

  @override
  String get tagDeleted => 'Tag eliminato.';

  @override
  String get noTagsFound => 'Nessun tag trovato.';

  @override
  String get libraryItemDetail => 'Elemento della libreria';

  @override
  String get viewActivity => 'Visualizza attività';

  @override
  String get viewStatus => 'Visualizza stato';

  @override
  String get installations => 'Installazioni';

  @override
  String get createAdeIntegration => 'Crea integrazione ADE';

  @override
  String get adeCreateDescription =>
      'Carica un file token del server (.p7m) dall\'Apple Business Manager per creare una nuova integrazione ADE.';

  @override
  String get selectTokenFile => 'Seleziona file token';

  @override
  String tokenFileSelected(String name) {
    return 'File token: $name';
  }

  @override
  String get noTokenFileSelected => 'Nessun file token selezionato';

  @override
  String get integrationCreated => 'Integrazione creata.';

  @override
  String get create => 'Crea';

  @override
  String get step1GetPublicKey => 'Passo 1: Scarica la chiave pubblica';

  @override
  String get step1Description =>
      'Copia la chiave pubblica e caricala nell\'Apple Business Manager.';

  @override
  String get step2UploadToken => 'Passo 2: Carica il token del server';

  @override
  String get step2Description =>
      'Seleziona il file token .p7m scaricato da Apple.';

  @override
  String get step3Configure => 'Passo 3: Configura';

  @override
  String get publicKeyCopied => 'Chiave pubblica copiata negli appunti.';

  @override
  String get renewTokenDescription =>
      'Carica un nuovo file token .p7m per rinnovare il token di questa integrazione.';

  @override
  String get tokenRenewed => 'Token rinnovato.';

  @override
  String get aboutLinks => 'Link';

  @override
  String get aboutWebsite => 'Sito web';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Codice sorgente';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Tecnologia';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Architettura';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Classi dati';

  @override
  String get aboutNavigationLabel => 'Navigazione';

  @override
  String get aboutOpenSourceLicenses => 'Licenze open source';

  @override
  String get aboutShowHide => 'Cambia visibilità';

  @override
  String get editProfileTitle => 'Modifica connessione';

  @override
  String get editProfileSubtitle =>
      'Aggiorna le impostazioni di connessione del tenant.';

  @override
  String get apiTokenHintEdit =>
      'Lascia vuoto per mantenere il token esistente';

  @override
  String get profileUpdated => 'Profilo aggiornato.';

  @override
  String profileSwitched(String name) {
    return 'Passato a $name.';
  }

  @override
  String get securityAutoLock => 'Blocco automatico';

  @override
  String get securityAutoLockDescription =>
      'Richiedi automaticamente l\'autenticazione dopo che l\'app è stata in background.';

  @override
  String get timeoutImmediately => 'Immediatamente';

  @override
  String get timeoutSeconds30 => 'Dopo 30 secondi';

  @override
  String get timeoutSeconds60 => 'Dopo 1 minuto';

  @override
  String get timeoutSeconds120 => 'Dopo 2 minuti';

  @override
  String get timeoutMinutes5 => 'Dopo 5 minuti';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Nessun Blueprint';

  @override
  String get presetSaveFilter => 'Salva preset filtro';

  @override
  String get presetLoad => 'Carica preset';

  @override
  String get presetName => 'Nome preset';

  @override
  String get presetNameHint => 'es. Mac non supervisionati';

  @override
  String get presetSaved => 'Preset filtro salvato.';

  @override
  String get presetDeleted => 'Preset filtro eliminato.';

  @override
  String presetApplied(String name) {
    return 'Preset \"$name\" applicato.';
  }

  @override
  String get presetNoPresets => 'Nessun preset salvato';

  @override
  String get presetNoPresetsMessage =>
      'Salva i filtri attuali come preset per un accesso rapido.';

  @override
  String get presetDeleteConfirm => 'Eliminare questo preset?';

  @override
  String get presetNameRequired => 'Inserire un nome per il preset.';

  @override
  String selectedCount(int count) {
    return '$count selezionati';
  }

  @override
  String get selectAll => 'Seleziona tutto';

  @override
  String get deselectAll => 'Deseleziona tutto';

  @override
  String get bulkActions => 'Azioni';

  @override
  String bulkActionsTitle(int count) {
    return 'Azioni per $count dispositivi';
  }

  @override
  String get bulkActionAssignTag => 'Assegna tag';

  @override
  String get bulkActionAssignTagDescription =>
      'Aggiungi un tag a tutti i dispositivi selezionati';

  @override
  String get bulkActionAssignBlueprint => 'Assegna Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Sposta i dispositivi selezionati in un Blueprint';

  @override
  String get bulkActionLock => 'Blocca dispositivi';

  @override
  String get bulkActionLockDescription =>
      'Blocca tutti i dispositivi selezionati da remoto';

  @override
  String get bulkActionRestart => 'Riavvia dispositivi';

  @override
  String get bulkActionRestartDescription =>
      'Riavvia tutti i dispositivi selezionati';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Riavviare $count dispositivi?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Azione completata con successo su $count dispositivi.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Completata su $success dispositivi, $failed non riusciti.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed di $total completati';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autenticarsi per eseguire l\'azione di massa';

  @override
  String get lockPin => 'PIN di blocco (opzionale)';

  @override
  String get noTagsAvailable =>
      'Nessun tag disponibile. Crea i tag nella console web MDM.';

  @override
  String get noBlueprintsAvailable => 'Nessun Blueprint disponibile.';

  @override
  String get selectADevice => 'Seleziona un dispositivo';

  @override
  String get selectABlueprint => 'Seleziona un Blueprint';

  @override
  String get clearSearch => 'Cancella ricerca';

  @override
  String get refresh => 'Aggiorna';

  @override
  String get moreActions => 'Altre azioni';

  @override
  String get close => 'Chiudi';

  @override
  String get onboardingSkip => 'Salta';

  @override
  String get onboardingNext => 'Avanti';

  @override
  String get onboardingGetStarted => 'Inizia';

  @override
  String get onboardingWelcomeTitle => 'Benvenuto su FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Il tuo centro di comando mobile per la gestione della flotta di dispositivi Apple. Monitora, gestisci e proteggi l\'intera flotta da qualsiasi luogo.';

  @override
  String get onboardingDevicesTitle => 'Gestione dispositivi';

  @override
  String get onboardingDevicesSubtitle =>
      'Visibilità e controllo completi su ogni dispositivo della tua flotta.';

  @override
  String get onboardingDevicesFeature1 =>
      'Visualizza tutti gli iPhone, iPad, Mac e Apple TV registrati';

  @override
  String get onboardingDevicesFeature2 =>
      'Invia comandi remoti: blocca, riavvia, cancella e altro';

  @override
  String get onboardingDevicesFeature3 =>
      'Monitora Blueprint, app e stato di conformità';

  @override
  String get onboardingSecurityTitle => 'Progettato per la sicurezza';

  @override
  String get onboardingSecuritySubtitle =>
      'I dati della tua flotta restano protetti con più livelli di sicurezza.';

  @override
  String get onboardingSecurityFeature1 =>
      'Autenticazione biometrica con Face ID o impronta digitale';

  @override
  String get onboardingSecurityFeature2 =>
      'Blocco con PIN a 6 cifre per l\'accesso all\'app';

  @override
  String get onboardingSecurityFeature3 =>
      'Blocco automatico della sessione dopo il timeout';

  @override
  String get onboardingReadyTitle => 'Pronto per iniziare';

  @override
  String get onboardingReadySubtitle =>
      'Collega il tuo tenant MDM per iniziare a gestire la tua flotta di dispositivi Apple. Il prossimo passo è configurare la connessione API e il PIN di sicurezza.';

  @override
  String get searchTags => 'Cerca tag';

  @override
  String tagDeviceCount(int count) {
    return '$count dispositivi';
  }

  @override
  String get sortTitle => 'Ordinamento';

  @override
  String get sortDirection => 'Direzione di ordinamento';

  @override
  String get ascending => 'Crescente';

  @override
  String get descending => 'Decrescente';

  @override
  String get filterSeverity => 'Gravità';

  @override
  String get filterSort => 'Filtra e ordina';

  @override
  String get statusQuarantined => 'In quarantena';

  @override
  String get statusNotQuarantined => 'Non in quarantena';

  @override
  String get statusDetected => 'Rilevato';

  @override
  String get statusReleased => 'Rilasciato';

  @override
  String get severityCritical => 'Critico';

  @override
  String get severityHigh => 'Alto';

  @override
  String get severityMedium => 'Medio';

  @override
  String get severityLow => 'Basso';

  @override
  String threatCount(int count) {
    return '$count minacce';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count rilevamenti';
  }

  @override
  String get downloadPublicKey => 'Scarica';

  @override
  String get publicKeySaved => 'Chiave pubblica salvata';

  @override
  String get sortBy => 'Ordina per';

  @override
  String get sortByCvss => 'Punteggio CVSS';

  @override
  String get sortByDeviceCount => 'Dispositivi interessati';

  @override
  String get sortByCveId => 'ID CVE';

  @override
  String vulnCount(int count) {
    return '$count vulnerabilità';
  }

  @override
  String get assignTags => 'Tag';

  @override
  String get noTagsAvailableMessage =>
      'Nessun tag disponibile. Crea prima dei tag.';

  @override
  String get failedToLoadTags => 'Impossibile caricare i tag';

  @override
  String get details => 'Dettagli';

  @override
  String get searchLibraryItems => 'Cerca elementi della libreria...';

  @override
  String get categoryCustomScript => 'Script personalizzato';

  @override
  String get categoryCustomApp => 'App personalizzata';

  @override
  String get categoryCustomProfile => 'Profilo personalizzato';

  @override
  String get categoryInHouseApp => 'App in-house';

  @override
  String get categoryBuiltIn => 'Integrato';

  @override
  String get categoryVppApps => 'App VPP / App Store';

  @override
  String get categoryManagedProfiles => 'Profili gestiti';

  @override
  String get categoryKandjiSetup => 'Configurazione MDM';

  @override
  String get categoryMacosRelease => 'Aggiornamenti macOS';

  @override
  String get categoryThreatPolicy => 'Criteri di sicurezza';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprint',
      one: '1 Blueprint',
    );
    return 'In $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Una sola volta';

  @override
  String get executionFrequencyEvery15Min => 'Ogni 15 minuti';

  @override
  String get executionFrequencyEveryDay => 'Giornaliero';

  @override
  String get executionFrequencyNoEnforcement => 'Nessuna applicazione';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Script di correzione';

  @override
  String get allProperties => 'Tutte le proprietà';

  @override
  String get builtInLibraryItem => 'Elemento della libreria integrato';

  @override
  String get builtInDetailsHint => 'Dettagli disponibili nella scheda Stato';

  @override
  String get active => 'Attivo';

  @override
  String get yes => 'Sì';

  @override
  String get no => 'No';

  @override
  String get execution => 'Esecuzione';

  @override
  String get restart => 'Riavvio';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Tipo di installazione';

  @override
  String get enforcement => 'Applicazione';

  @override
  String get runsOnMac => 'Funziona su Mac';

  @override
  String get runsOnIphone => 'Funziona su iPhone';

  @override
  String get runsOnIpad => 'Funziona su iPad';

  @override
  String get appName => 'Nome app';

  @override
  String get appVersion => 'Versione app';

  @override
  String get minOsVersion => 'Versione OS minima';

  @override
  String get created => 'Creato';

  @override
  String get updated => 'Aggiornato';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementi',
      one: '1 elemento',
      zero: 'Nessun elemento',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Risolto';

  @override
  String get severityInformational => 'Informativo';

  @override
  String get managementState => 'Stato di gestione';

  @override
  String get managementStateOpen => 'Aperto';

  @override
  String get managementStateClosed => 'Chiuso';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Sospetto';

  @override
  String get classificationMal => 'Malevolo';

  @override
  String get blueprintRouting => 'Routing Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Codice di registrazione e routing per la registrazione manuale / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'Il routing Blueprint non è configurato per questo tenant.';

  @override
  String get enrollmentCodeActive => 'Attivo';

  @override
  String get enrollmentCodeInactive => 'Inattivo';

  @override
  String get routingActivity => 'Attività di routing';

  @override
  String get noRoutingActivity => 'Nessuna attività di routing trovata.';

  @override
  String get selfServiceCategories => 'Categorie Self-Service';

  @override
  String get selfServiceDesc =>
      'Gestisci le categorie Self-Service per i tuoi utenti';

  @override
  String get addCategory => 'Aggiungi categoria';

  @override
  String get categoryName => 'Nome categoria';

  @override
  String get deleteCategory => 'Elimina categoria';

  @override
  String get deleteCategoryConfirm => 'Eliminare questa categoria?';

  @override
  String get noCategoriesFound => 'Nessuna categoria trovata.';

  @override
  String get categoryCreated => 'Categoria creata';

  @override
  String get categoryDeleted => 'Categoria eliminata';

  @override
  String get profileBody => 'XML del profilo';

  @override
  String get customProfile => 'Profilo personalizzato';

  @override
  String get classification => 'Classificazione';

  @override
  String get mdmEnabled => 'MDM attivato';

  @override
  String get enrolledViaDep => 'Registrato tramite DEP';

  @override
  String get userApprovedMdm => 'MDM approvato dall\'utente';

  @override
  String get network => 'Rete';

  @override
  String get ipAddress => 'Indirizzo IP';

  @override
  String get wifiNetwork => 'Rete Wi-Fi';

  @override
  String get bluetoothMac => 'MAC Bluetooth';

  @override
  String get activationLock => 'Blocco attivazione';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Modalità sviluppatore';

  @override
  String get adbEnabled => 'ADB abilitato';

  @override
  String get unknownSources => 'Origini sconosciute';

  @override
  String get securityPatch => 'Patch di sicurezza';

  @override
  String get provisioningUdid => 'UDID di provisioning';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Info MDM';

  @override
  String get lastEnrollment => 'Ultima registrazione';

  @override
  String get enterpriseId => 'ID enterprise';

  @override
  String get manufacturer => 'Produttore';

  @override
  String get generalStatus => 'Stato generale';

  @override
  String get apiLevel => 'Livello API';

  @override
  String get userApprovedEnrollment => 'Registrazione approvata dall\'utente';

  @override
  String get hostname => 'Nome host';

  @override
  String get macAddress => 'Indirizzo MAC';

  @override
  String get publicIp => 'IP pubblico';

  @override
  String get volumes => 'Volumi';

  @override
  String volumeUsed(String percent) {
    return '$percent% utilizzato';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available liberi su $total';
  }

  @override
  String get encrypted => 'Crittografato';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores core';
  }

  @override
  String processors(String count) {
    return '$count processori';
  }

  @override
  String get batteryLevel => 'Livello batteria';

  @override
  String get lastUser => 'Ultimo utente';

  @override
  String get bootVolume => 'Volume di avvio';

  @override
  String get localUsers => 'Utenti locali';

  @override
  String get regularUsers => 'Utenti standard';

  @override
  String get systemUsers => 'Utenti di sistema';

  @override
  String get admin => 'Amministratore';

  @override
  String get assignToBlueprint => 'Assegna a Blueprint';

  @override
  String get installOnDevice => 'Installa su dispositivo';

  @override
  String get selectBlueprint => 'Seleziona Blueprint';

  @override
  String get selectDevice => 'Seleziona dispositivo';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Licenze VPP';

  @override
  String get fileName => 'Nome file';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Blocco attivazione';

  @override
  String get prismCategoryApps => 'Applicazioni';

  @override
  String get prismCategoryApplicationFirewall => 'Firewall applicazione';

  @override
  String get prismCategoryCellular => 'Cellulare';

  @override
  String get prismCategoryCertificates => 'Certificati';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Desktop e salvaschermo';

  @override
  String get prismCategoryDeviceInformation => 'Informazioni dispositivo';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper e XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Profili installati';

  @override
  String get prismCategoryKernelExtensions => 'Estensioni kernel';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agent e Daemon';

  @override
  String get prismCategoryLocalUsers => 'Utenti locali';

  @override
  String get prismCategoryStartupSettings => 'Impostazioni di avvio';

  @override
  String get prismCategorySystemExtensions => 'Estensioni di sistema';

  @override
  String get prismCategoryTransparencyDatabase => 'Database di trasparenza';

  @override
  String prismRecords(int count) {
    return '$count record';
  }

  @override
  String get prismNoData => 'Nessun dato disponibile per questa categoria.';

  @override
  String get prismExport => 'Esporta CSV';

  @override
  String get prismExportRequested =>
      'Esportazione richiesta. Il link per il download sarà disponibile a breve.';

  @override
  String get prismFilterByFamily => 'Famiglia dispositivo';

  @override
  String get prismAllFamilies => 'Tutte le famiglie';

  @override
  String get appearance => 'Aspetto';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'Sistema';

  @override
  String get themeModeLight => 'Chiaro';

  @override
  String get themeModeDark => 'Scuro';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Personalizzato';

  @override
  String get shortTypeProfile => 'Profilo';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Gestito';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Sicurezza';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Aggiornamenti OS';

  @override
  String get categoryAutoApps => 'App automatiche';

  @override
  String get autoApp => 'App automatica';

  @override
  String get fileSize => 'Dimensione file';

  @override
  String get unzipLocation => 'Posizione di estrazione';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'File aggiornato';

  @override
  String get mdmIdentifier => 'Identificativo MDM';

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
  String get typeLabel => 'Tipo';

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
