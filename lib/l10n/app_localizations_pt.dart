// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Dispositivos';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Usuários';

  @override
  String get navSettings => 'Configurações';

  @override
  String get welcomeTitle => 'Bem-vindo ao FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Gerencie sua frota de dispositivos Apple de qualquer lugar.';

  @override
  String get addProfile => 'Adicionar Perfil';

  @override
  String get editProfile => 'Editar Perfil';

  @override
  String get displayName => 'Nome de Exibição';

  @override
  String get displayNameHint => 'ex.: Acme Corp — Prod';

  @override
  String get region => 'Região';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomínio';

  @override
  String get subdomainHint => 'seu-tenant';

  @override
  String get apiToken => 'Token da API';

  @override
  String get apiTokenHint => 'Cole o token da API aqui';

  @override
  String urlPreview(String url) {
    return 'URL da API: $url';
  }

  @override
  String get verifyAndSave => 'Verificar e Salvar';

  @override
  String get verifying => 'Verificando conexão...';

  @override
  String get connectionSuccess => 'Conexão verificada com sucesso!';

  @override
  String get errorInvalidToken =>
      'Token da API inválido. Verifique seu token no console web.';

  @override
  String get errorInsufficientPermissions =>
      'Permissões insuficientes. Certifique-se de que o token possui acesso de leitura aos dispositivos.';

  @override
  String get errorNetworkUnreachable =>
      'API inacessível. Verifique sua conexão com a internet e o subdomínio.';

  @override
  String get errorNotFound => 'O recurso solicitado não foi encontrado.';

  @override
  String get errorValidation =>
      'A requisição contém dados inválidos. Verifique sua entrada.';

  @override
  String get errorRateLimit =>
      'Muitas requisições. Aguarde um momento e tente novamente.';

  @override
  String get errorServer =>
      'O servidor encontrou um erro. Tente novamente mais tarde.';

  @override
  String get errorUnexpected => 'Ocorreu um erro inesperado. Tente novamente.';

  @override
  String get retry => 'Tentar Novamente';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Excluir';

  @override
  String get save => 'Salvar';

  @override
  String get search => 'Buscar';

  @override
  String get searchDevices => 'Buscar dispositivos...';

  @override
  String get filterAll => 'Todos';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Todos os Blueprints';

  @override
  String loadingDevices(int count) {
    return 'Carregando $count dispositivos...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dispositivos',
      one: '1 dispositivo',
      zero: 'Nenhum dispositivo',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Nenhum dispositivo encontrado';

  @override
  String get noDevicesFoundMessage => 'Ajuste sua busca ou filtros.';

  @override
  String lastCheckIn(String time) {
    return 'Último check-in: $time';
  }

  @override
  String get compliancePass => 'Aprovado';

  @override
  String get complianceFail => 'Reprovado';

  @override
  String get compliancePending => 'Pendente';

  @override
  String get deviceDetails => 'Detalhes do Dispositivo';

  @override
  String get serialNumber => 'Número de Série';

  @override
  String get model => 'Modelo';

  @override
  String get osVersion => 'Versão do SO';

  @override
  String get assetTag => 'Tag de Ativo';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Registrado';

  @override
  String get assignedUser => 'Usuário Atribuído';

  @override
  String get actions => 'Ações';

  @override
  String get actionLock => 'Bloquear';

  @override
  String get actionRestart => 'Reiniciar';

  @override
  String get actionShutdown => 'Desligar';

  @override
  String get actionErase => 'Apagar';

  @override
  String get actionBlankPush => 'Enviar Blank Push';

  @override
  String get actionReinstallAgent => 'Reinstalar Agente';

  @override
  String get actionUpdateInventory => 'Atualizar Inventário';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Ativar Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Desativar Remote Desktop';

  @override
  String get actionLostMode => 'Ativar Modo Perdido';

  @override
  String get destructiveActionTitle => 'Confirmar Ação Destrutiva';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Esta ação não pode ser desfeita. Digite \"$deviceName\" para confirmar.';
  }

  @override
  String get destructiveActionHint =>
      'Digite o nome do dispositivo para confirmar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get actionSuccess => 'Ação executada com sucesso.';

  @override
  String get actionFailed => 'Ação falhou. Tente novamente.';

  @override
  String get biometricReason => 'Autentique-se para acessar o FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Autentique-se para visualizar dados sensíveis';

  @override
  String get biometricReasonDestructive =>
      'Autentique-se para executar esta ação';

  @override
  String get biometricFailed => 'Autenticação falhou. Tente novamente.';

  @override
  String get profiles => 'Perfis';

  @override
  String activeProfile(String name) {
    return 'Ativo: $name';
  }

  @override
  String get switchProfile => 'Trocar Perfil';

  @override
  String get deleteProfile => 'Excluir Perfil';

  @override
  String get deleteProfileConfirm =>
      'Deseja realmente excluir este perfil? Esta ação não pode ser desfeita.';

  @override
  String get noProfiles => 'Nenhum perfil configurado';

  @override
  String get settings => 'Configurações';

  @override
  String get about => 'Sobre';

  @override
  String version(String version) {
    return 'Versão $version';
  }

  @override
  String get validationRequired => 'Este campo é obrigatório.';

  @override
  String get validationSubdomain =>
      'Apenas letras, números e hífens são permitidos. Sem hífens no início ou no final.';

  @override
  String get validationToken =>
      'Formato de token inválido. 20–500 caracteres, apenas alfanuméricos e separadores comuns.';

  @override
  String pinLockedOut(int seconds) {
    return 'Muitas tentativas incorretas. Tente novamente em $seconds segundos.';
  }

  @override
  String get complianceStatus => 'Status de Conformidade';

  @override
  String get platform => 'Plataforma';

  @override
  String get deviceName => 'Nome do Dispositivo';

  @override
  String get searchUsers => 'Buscar usuários...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count usuários',
      one: '1 usuário',
      zero: 'Nenhum usuário',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Nenhum usuário encontrado';

  @override
  String get noUsersFoundMessage => 'Ajuste sua busca ou filtros.';

  @override
  String get showArchived => 'Mostrar arquivados';

  @override
  String get archived => 'Arquivado';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      one: '1 Blueprint',
      zero: 'Nenhum Blueprint',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Nenhum Blueprint encontrado';

  @override
  String get noBlueprintsFoundMessage =>
      'Nenhum Blueprint foi configurado ainda.';

  @override
  String get enrollmentActive => 'Registro ativo';

  @override
  String get enrollmentInactive => 'Registro inativo';

  @override
  String get tabOverview => 'Visão Geral';

  @override
  String get tabApps => 'Apps';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Atividade';

  @override
  String get tabCommands => 'Comandos';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Segurança';

  @override
  String get totalStorage => 'Armazenamento Total';

  @override
  String get availableStorage => 'Armazenamento Disponível';

  @override
  String get totalRam => 'RAM Total';

  @override
  String get wifiMac => 'Endereço MAC Wi-Fi';

  @override
  String get encryption => 'Criptografia';

  @override
  String get passcode => 'Código de Acesso';

  @override
  String get noAppsFound => 'Nenhum app encontrado';

  @override
  String get noActivityFound => 'Nenhuma atividade encontrada';

  @override
  String get noCommandsFound => 'Nenhum comando encontrado';

  @override
  String get libraryItems => 'Itens da Biblioteca';

  @override
  String get parameters => 'Parâmetros';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Build do SO';

  @override
  String get cellular => 'Celular';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Nenhum app',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Detalhes do Usuário';

  @override
  String get jobTitle => 'Cargo';

  @override
  String get department => 'Departamento';

  @override
  String get createdAt => 'Criado';

  @override
  String get updatedAt => 'Atualizado';

  @override
  String get assignedDevices => 'Dispositivos Atribuídos';

  @override
  String get noAssignedDevices =>
      'Nenhum dispositivo atribuído a este usuário.';

  @override
  String get userInfo => 'Informações do Usuário';

  @override
  String get navMore => 'Mais';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'Chave de Recuperação FileVault';

  @override
  String get unlockPin => 'PIN de Desbloqueio';

  @override
  String get recoveryPassword => 'Senha do Recovery Lock';

  @override
  String get bypassCode => 'Código de Bypass da Trava de Ativação';

  @override
  String get noSecretsFound =>
      'Nenhum secret disponível para este dispositivo.';

  @override
  String get secretCopied => 'Secret copiado para a área de transferência';

  @override
  String get threats => 'Ameaças';

  @override
  String get noThreatsFound => 'Nenhuma ameaça detectada.';

  @override
  String get vulnerabilities => 'Vulnerabilidades';

  @override
  String get noVulnerabilitiesFound => 'Nenhuma vulnerabilidade detectada.';

  @override
  String get aboutApp => 'Sobre o FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot é um aplicativo open-source de gerenciamento MDM para frotas de dispositivos Apple.';

  @override
  String get tapToCopy => 'Toque para copiar';

  @override
  String get devices => 'Dispositivos';

  @override
  String get severity => 'Severidade';

  @override
  String get tabLocation => 'Localização';

  @override
  String get locationNotAvailable =>
      'Dados de localização não disponíveis para este dispositivo.';

  @override
  String get enableLostModeHint =>
      'Ative o Modo Perdido para localizar este dispositivo.';

  @override
  String get lostModeEnabled => 'Modo Perdido ativado';

  @override
  String get noLibraryItemsFound => 'Nenhum item da biblioteca encontrado.';

  @override
  String get licenses => 'Licenças';

  @override
  String get lostModeMessage => 'Mensagem do Modo Perdido';

  @override
  String get lostModePhone => 'Número de Telefone';

  @override
  String get lostModeFootnote =>
      'Mensagem e número de telefone opcionais exibidos no dispositivo';

  @override
  String get supervised => 'Supervisionado';

  @override
  String get unsupervised => 'Não supervisionado';

  @override
  String get filterSupervised => 'Supervisionado';

  @override
  String get filterUnsupervised => 'Não supervisionado';

  @override
  String get language => 'Idioma';

  @override
  String get languageSystem => 'Padrão do Sistema';

  @override
  String get actionDisableLostMode => 'Desativar Modo Perdido';

  @override
  String get actionClearPasscode => 'Limpar Código de Acesso';

  @override
  String get filterLostMode => 'Modo Perdido';

  @override
  String get lostMode => 'Modo Perdido';

  @override
  String get sectionManagement => 'Gerenciamento';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Ausente';

  @override
  String get statusRemoved => 'Removido';

  @override
  String get agent => 'Agente';

  @override
  String get identifier => 'Identificador';

  @override
  String get processor => 'Processador';

  @override
  String get hardwareUuid => 'UUID do Hardware';

  @override
  String get devicePosture => 'Postura do Dispositivo';

  @override
  String get unknownDevice => 'Dispositivo Desconhecido';

  @override
  String get securityAppLock => 'Bloqueio do App';

  @override
  String get securityAppLockDescription =>
      'Defina um PIN de 6 dígitos para proteger o app. A autenticação biométrica pode ser ativada após definir um PIN.';

  @override
  String get securityAppLockActive => 'Bloqueio do app ativado';

  @override
  String get securityAppLockInactive => 'Nenhum bloqueio de app configurado';

  @override
  String get securitySetPin => 'Definir PIN';

  @override
  String get securityChangePin => 'Alterar PIN';

  @override
  String get securityRemovePin => 'Remover PIN';

  @override
  String get securityCurrentPin => 'PIN Atual';

  @override
  String get securityNewPin => 'Novo PIN';

  @override
  String get securityConfirmPin => 'Digite o PIN novamente para confirmar.';

  @override
  String get securityPinLength => 'O PIN deve ter 6 dígitos.';

  @override
  String get securityPinMismatch => 'Os PINs não correspondem.';

  @override
  String get securityPinWrong => 'PIN incorreto.';

  @override
  String get securityPinSet => 'PIN definido.';

  @override
  String get securityPinChanged => 'PIN alterado.';

  @override
  String get securityPinRemoved => 'PIN e bloqueio do app foram removidos.';

  @override
  String get securityBiometric => 'Biometria';

  @override
  String get securityBiometricDescription =>
      'Use impressão digital ou reconhecimento facial para desbloquear o app em vez do PIN.';

  @override
  String get securityBiometricEnable => 'Desbloqueio biométrico';

  @override
  String get securityBiometricActive => 'Ativo';

  @override
  String get securityBiometricInactive => 'Inativo';

  @override
  String get securityBiometricUnavailable =>
      'Autenticação biométrica não disponível neste dispositivo.';

  @override
  String get securityNext => 'Avançar';

  @override
  String get actionRenewMdm => 'Renovar Perfil MDM';

  @override
  String get actionSetName => 'Definir Nome do Dispositivo';

  @override
  String get actionSetNameHint => 'Digite o novo nome do dispositivo';

  @override
  String get actionDeleteUser => 'Excluir Usuário';

  @override
  String get actionDeleteUserName => 'Nome de Usuário';

  @override
  String get actionDeleteAllUsers => 'Excluir Todos os Usuários';

  @override
  String get actionForceDeletion => 'Forçar exclusão';

  @override
  String get actionUnlockAccount => 'Desbloquear Conta';

  @override
  String get actionPlayLostModeSound => 'Reproduzir Som do Modo Perdido';

  @override
  String get actionUpdateLocation => 'Atualizar Localização';

  @override
  String get erasePin => 'PIN de 6 dígitos';

  @override
  String get erasePinHint => 'Obrigatório para dispositivos móveis';

  @override
  String get erasePreserveDataPlan => 'Preservar plano de dados';

  @override
  String get eraseDisallowProximitySetup =>
      'Proibir configuração por proximidade';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Mensagem de Bloqueio (opcional)';

  @override
  String get lockPhone => 'Número de telefone';

  @override
  String get restartRebuildKernelCache => 'Reconstruir cache do kernel';

  @override
  String get restartNotifyUser => 'Notificar usuário';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Notas';

  @override
  String get noNotesFound => 'Nenhuma nota ainda';

  @override
  String get addNote => 'Adicionar Nota';

  @override
  String get editNote => 'Editar Nota';

  @override
  String get deleteNote => 'Excluir Nota';

  @override
  String get deleteNoteConfirm => 'Deseja realmente excluir esta nota?';

  @override
  String get noteContent => 'Conteúdo da nota';

  @override
  String get noteSaved => 'Nota salva.';

  @override
  String get noteDeleted => 'Nota excluída.';

  @override
  String get editDevice => 'Editar Dispositivo';

  @override
  String get deviceUpdated => 'Dispositivo atualizado.';

  @override
  String get deleteDevice => 'Excluir Dispositivo';

  @override
  String get deleteDeviceConfirm =>
      'O dispositivo será removido permanentemente do MDM. Esta ação não pode ser desfeita.';

  @override
  String get deviceDeleted => 'Dispositivo excluído.';

  @override
  String get cancelLostMode => 'Cancelar Modo Perdido';

  @override
  String get cancelLostModeConfirm =>
      'Cancelar a solicitação pendente do Modo Perdido?';

  @override
  String get lostModeCancelled => 'Modo Perdido cancelado.';

  @override
  String get tags => 'Tags';

  @override
  String get noTags => 'Sem tags';

  @override
  String get addTag => 'Adicionar Tag';

  @override
  String get tagName => 'Nome da Tag';

  @override
  String get manageTags => 'Gerenciar Tags';

  @override
  String get auditLog => 'Log de Auditoria';

  @override
  String get noAuditEvents => 'Nenhum evento de auditoria encontrado';

  @override
  String get actionDailyCheckIn => 'Check-in Diário';

  @override
  String get licensing => 'Licenciamento';

  @override
  String get deviceLimit => 'Limite de Dispositivos';

  @override
  String get devicesUsed => 'Dispositivos utilizados';

  @override
  String get licenseType => 'Tipo de Licença';

  @override
  String get appleDevices => 'Dispositivos Apple';

  @override
  String get deleteUser => 'Excluir Usuário';

  @override
  String get deleteUserConfirm =>
      'Deseja realmente excluir este usuário? Esta ação não pode ser desfeita.';

  @override
  String get userDeleted => 'Usuário excluído.';

  @override
  String get createBlueprint => 'Criar Blueprint';

  @override
  String get editBlueprint => 'Editar Blueprint';

  @override
  String get deleteBlueprint => 'Excluir Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Excluir este Blueprint irá cancelar o registro de todos os dispositivos atribuídos. Esta ação não pode ser desfeita.';

  @override
  String get blueprintCreated => 'Blueprint criado.';

  @override
  String get blueprintUpdated => 'Blueprint atualizado.';

  @override
  String get blueprintDeleted => 'Blueprint excluído.';

  @override
  String get blueprintName => 'Nome do Blueprint';

  @override
  String get blueprintDescription => 'Descrição';

  @override
  String get enrollmentCode => 'Código de Registro';

  @override
  String get assignLibraryItem => 'Atribuir Item da Biblioteca';

  @override
  String get removeLibraryItem => 'Remover Item da Biblioteca';

  @override
  String get libraryItemAssigned => 'Item da biblioteca atribuído.';

  @override
  String get libraryItemRemoved => 'Item da biblioteca removido.';

  @override
  String get lostModeDetails => 'Detalhes do Modo Perdido';

  @override
  String get lostModeEnabledBy => 'Ativado por';

  @override
  String get lostModeEnabledAt => 'Ativado em';

  @override
  String get searchBlueprints => 'Buscar Blueprints...';

  @override
  String get searchVulnerabilities => 'Buscar vulnerabilidades...';

  @override
  String get searchThreats => 'Buscar ameaças...';

  @override
  String get searchAuditLog => 'Buscar log de auditoria...';

  @override
  String get filterCritical => 'Crítico';

  @override
  String get filterHigh => 'Alto';

  @override
  String get filterMedium => 'Médio';

  @override
  String get filterLow => 'Baixo';

  @override
  String get filterClearAll => 'Limpar tudo';

  @override
  String get filterTitle => 'Filtros';

  @override
  String get filterApply => 'Aplicar';

  @override
  String get filterPlatform => 'Plataforma';

  @override
  String get filterSupervision => 'Supervisão';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'Integrações ADE';

  @override
  String get noAdeIntegrations => 'Nenhuma integração ADE encontrada.';

  @override
  String get adeDevices => 'Dispositivos ADE';

  @override
  String get noAdeDevices => 'Nenhum dispositivo ADE encontrado.';

  @override
  String get tokenExpiry => 'Expiração do Token';

  @override
  String get tokenValid => 'Token válido';

  @override
  String get tokenExpired => 'Token expirado';

  @override
  String get orgName => 'Organização';

  @override
  String get defaultBlueprint => 'Blueprint Padrão';

  @override
  String get renewToken => 'Renovar Token';

  @override
  String get publicKey => 'Chave Pública';

  @override
  String get vulnerabilityDetections => 'Detecções de Vulnerabilidades';

  @override
  String get noDetectionsFound => 'Nenhuma detecção encontrada.';

  @override
  String get behavioralDetections => 'Detecções Comportamentais';

  @override
  String get noBehavioralDetections =>
      'Nenhuma detecção comportamental encontrada.';

  @override
  String get searchBehavioralDetections => 'Buscar detecções...';

  @override
  String get affectedDevices => 'Dispositivos Afetados';

  @override
  String get noAffectedDevices =>
      'Nenhum dispositivo afetado encontrado. Dispositivos anteriormente afetados podem ter sido removidos.';

  @override
  String get affectedSoftware => 'Software Afetado';

  @override
  String get blueprintTemplates => 'Modelos de Blueprint';

  @override
  String get noTemplatesFound => 'Nenhum modelo encontrado.';

  @override
  String get otaEnrollmentProfile => 'Perfil de Registro OTA';

  @override
  String get libraryItemActivity => 'Atividade';

  @override
  String get libraryItemDeploymentStatus => 'Status de Implantação';

  @override
  String get noActivityFound2 => 'Nenhuma atividade encontrada.';

  @override
  String get noStatusFound => 'Nenhum status de implantação encontrado.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detecções',
      one: '1 detecção',
      zero: 'Nenhuma detecção',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integrações',
      one: '1 integração',
      zero: 'Nenhuma integração',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Detalhes da Vulnerabilidade';

  @override
  String get description => 'Descrição';

  @override
  String get firstDetected => 'Primeira Detecção';

  @override
  String get lastDetected => 'Última Detecção';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count softwares',
      one: '1 software',
      zero: 'Nenhum software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Editar Integração';

  @override
  String get deleteIntegration => 'Excluir Integração';

  @override
  String get deleteIntegrationConfirm =>
      'Tem certeza de que deseja excluir esta integração ADE? Esta ação não pode ser desfeita.';

  @override
  String get integrationDeleted => 'Integração excluída.';

  @override
  String get integrationUpdated => 'Integração atualizada.';

  @override
  String get defaultBlueprintId => 'ID do Blueprint Padrão';

  @override
  String get phone => 'Telefone';

  @override
  String get downloadOtaProfile => 'Baixar perfil de registro';

  @override
  String get otaProfileCopied =>
      'Perfil de registro copiado para a área de transferência.';

  @override
  String get noOtaProfile => 'Nenhum perfil de registro disponível.';

  @override
  String get createTag => 'Criar Tag';

  @override
  String get editTag => 'Editar Tag';

  @override
  String get deleteTag => 'Excluir Tag';

  @override
  String get deleteTagConfirm => 'Tem certeza de que deseja excluir esta tag?';

  @override
  String get tagColor => 'Cor';

  @override
  String get tagCreated => 'Tag criada.';

  @override
  String get tagUpdated => 'Tag atualizada.';

  @override
  String get tagDeleted => 'Tag excluída.';

  @override
  String get noTagsFound => 'Nenhuma tag encontrada.';

  @override
  String get libraryItemDetail => 'Item da Biblioteca';

  @override
  String get viewActivity => 'Ver Atividade';

  @override
  String get viewStatus => 'Ver Status';

  @override
  String get installations => 'Instalações';

  @override
  String get createAdeIntegration => 'Criar Integração ADE';

  @override
  String get adeCreateDescription =>
      'Faça upload de um arquivo de Server Token (.p7m) do Apple Business Manager para criar uma nova integração ADE.';

  @override
  String get selectTokenFile => 'Selecionar arquivo de token';

  @override
  String tokenFileSelected(String name) {
    return 'Arquivo de token: $name';
  }

  @override
  String get noTokenFileSelected => 'Nenhum arquivo de token selecionado';

  @override
  String get integrationCreated => 'Integração criada.';

  @override
  String get create => 'Criar';

  @override
  String get step1GetPublicKey => 'Passo 1: Baixar chave pública';

  @override
  String get step1Description =>
      'Copie a chave pública e faça upload no Apple Business Manager.';

  @override
  String get step2UploadToken => 'Passo 2: Enviar Server Token';

  @override
  String get step2Description =>
      'Selecione o arquivo de token .p7m que você baixou da Apple.';

  @override
  String get step3Configure => 'Passo 3: Configurar';

  @override
  String get publicKeyCopied =>
      'Chave pública copiada para a área de transferência.';

  @override
  String get renewTokenDescription =>
      'Faça upload de um novo arquivo de token .p7m para renovar o token desta integração.';

  @override
  String get tokenRenewed => 'Token renovado.';

  @override
  String get aboutLinks => 'Links';

  @override
  String get aboutWebsite => 'Website';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Código-fonte';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Tecnologia';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Gerenciamento de Estado';

  @override
  String get aboutArchitecture => 'Arquitetura';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Classes de Dados';

  @override
  String get aboutNavigationLabel => 'Navegação';

  @override
  String get aboutOpenSourceLicenses => 'Licenças Open Source';

  @override
  String get aboutShowHide => 'Alternar visibilidade';

  @override
  String get editProfileTitle => 'Editar Conexão';

  @override
  String get editProfileSubtitle =>
      'Atualize as configurações de conexão do seu tenant.';

  @override
  String get apiTokenHintEdit =>
      'Deixe em branco para manter o token existente';

  @override
  String get profileUpdated => 'Perfil atualizado.';

  @override
  String profileSwitched(String name) {
    return 'Alternado para $name.';
  }

  @override
  String get securityAutoLock => 'Bloqueio Automático';

  @override
  String get securityAutoLockDescription =>
      'Exigir autenticação automaticamente após o app ficar em segundo plano.';

  @override
  String get timeoutImmediately => 'Imediatamente';

  @override
  String get timeoutSeconds30 => 'Após 30 segundos';

  @override
  String get timeoutSeconds60 => 'Após 1 minuto';

  @override
  String get timeoutSeconds120 => 'Após 2 minutos';

  @override
  String get timeoutMinutes5 => 'Após 5 minutos';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Sem Blueprint';

  @override
  String get presetSaveFilter => 'Salvar predefinição de filtro';

  @override
  String get presetLoad => 'Carregar predefinição';

  @override
  String get presetName => 'Nome da predefinição';

  @override
  String get presetNameHint => 'ex.: Macs não supervisionados';

  @override
  String get presetSaved => 'Predefinição de filtro salva.';

  @override
  String get presetDeleted => 'Predefinição de filtro excluída.';

  @override
  String presetApplied(String name) {
    return 'Predefinição \"$name\" aplicada.';
  }

  @override
  String get presetNoPresets => 'Nenhuma predefinição salva';

  @override
  String get presetNoPresetsMessage =>
      'Salve seus filtros atuais como predefinição para acesso rápido.';

  @override
  String get presetDeleteConfirm => 'Excluir esta predefinição?';

  @override
  String get presetNameRequired =>
      'Por favor, insira um nome para a predefinição.';

  @override
  String selectedCount(int count) {
    return '$count selecionado(s)';
  }

  @override
  String get selectAll => 'Selecionar Tudo';

  @override
  String get deselectAll => 'Desmarcar Tudo';

  @override
  String get bulkActions => 'Ações';

  @override
  String bulkActionsTitle(int count) {
    return 'Ações para $count dispositivos';
  }

  @override
  String get bulkActionAssignTag => 'Atribuir Tag';

  @override
  String get bulkActionAssignTagDescription =>
      'Adicionar uma tag a todos os dispositivos selecionados';

  @override
  String get bulkActionAssignBlueprint => 'Atribuir Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Mover dispositivos selecionados para um Blueprint';

  @override
  String get bulkActionLock => 'Bloquear Dispositivos';

  @override
  String get bulkActionLockDescription =>
      'Bloquear remotamente todos os dispositivos selecionados';

  @override
  String get bulkActionRestart => 'Reiniciar Dispositivos';

  @override
  String get bulkActionRestartDescription =>
      'Reiniciar todos os dispositivos selecionados';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Deseja realmente reiniciar $count dispositivos?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Ação concluída com sucesso em $count dispositivos.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Concluído em $success dispositivos, $failed falharam.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed de $total concluídos';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autentique-se para executar a ação em massa';

  @override
  String get lockPin => 'PIN de Bloqueio (opcional)';

  @override
  String get noTagsAvailable =>
      'Nenhuma tag disponível. Crie tags no console web do MDM.';

  @override
  String get noBlueprintsAvailable => 'Nenhum Blueprint disponível.';

  @override
  String get selectADevice => 'Selecionar Dispositivo';

  @override
  String get selectABlueprint => 'Selecionar Blueprint';

  @override
  String get clearSearch => 'Limpar busca';

  @override
  String get refresh => 'Atualizar';

  @override
  String get moreActions => 'Mais Ações';

  @override
  String get close => 'Fechar';

  @override
  String get onboardingSkip => 'Pular';

  @override
  String get onboardingNext => 'Avançar';

  @override
  String get onboardingGetStarted => 'Começar';

  @override
  String get onboardingWelcomeTitle => 'Bem-vindo ao FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Seu centro de comando móvel para gerenciamento de frotas de dispositivos Apple. Monitore, gerencie e proteja toda sua frota de qualquer lugar.';

  @override
  String get onboardingDevicesTitle => 'Gerenciamento de Dispositivos';

  @override
  String get onboardingDevicesSubtitle =>
      'Visibilidade e controle total sobre cada dispositivo da sua frota.';

  @override
  String get onboardingDevicesFeature1 =>
      'Visualize todos os iPhones, iPads, Macs e Apple TVs registrados';

  @override
  String get onboardingDevicesFeature2 =>
      'Envie comandos remotos: Bloquear, Reiniciar, Apagar e mais';

  @override
  String get onboardingDevicesFeature3 =>
      'Acompanhe Blueprints, apps e status de conformidade';

  @override
  String get onboardingSecurityTitle => 'Feito para Segurança';

  @override
  String get onboardingSecuritySubtitle =>
      'Seus dados de frota ficam protegidos com múltiplas camadas de segurança.';

  @override
  String get onboardingSecurityFeature1 =>
      'Autenticação biométrica com Face ID ou impressão digital';

  @override
  String get onboardingSecurityFeature2 =>
      'Bloqueio por PIN de 6 dígitos para acesso ao app';

  @override
  String get onboardingSecurityFeature3 =>
      'Bloqueio automático da sessão por tempo limite';

  @override
  String get onboardingReadyTitle => 'Pronto para Começar';

  @override
  String get onboardingReadySubtitle =>
      'Conecte seu tenant MDM para começar a gerenciar sua frota de dispositivos Apple. Em seguida, configure sua conexão de API e PIN de segurança.';

  @override
  String get searchTags => 'Buscar tags';

  @override
  String tagDeviceCount(int count) {
    return '$count dispositivos';
  }

  @override
  String get sortTitle => 'Ordenação';

  @override
  String get sortDirection => 'Direção da ordenação';

  @override
  String get ascending => 'Crescente';

  @override
  String get descending => 'Decrescente';

  @override
  String get filterSeverity => 'Severidade';

  @override
  String get filterSort => 'Filtrar e Ordenar';

  @override
  String get statusQuarantined => 'Quarentena';

  @override
  String get statusNotQuarantined => 'Não isolado';

  @override
  String get statusDetected => 'Detectado';

  @override
  String get statusReleased => 'Liberado';

  @override
  String get severityCritical => 'Crítico';

  @override
  String get severityHigh => 'Alto';

  @override
  String get severityMedium => 'Médio';

  @override
  String get severityLow => 'Baixo';

  @override
  String threatCount(int count) {
    return '$count ameaças';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detecções';
  }

  @override
  String get downloadPublicKey => 'Baixar';

  @override
  String get publicKeySaved => 'Chave pública salva';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortByCvss => 'Pontuação CVSS';

  @override
  String get sortByDeviceCount => 'Dispositivos afetados';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count vulnerabilidades';
  }

  @override
  String get assignTags => 'Tags';

  @override
  String get noTagsAvailableMessage =>
      'Nenhuma tag disponível. Crie tags primeiro.';

  @override
  String get failedToLoadTags => 'Falha ao carregar tags';

  @override
  String get details => 'Detalhes';

  @override
  String get searchLibraryItems => 'Buscar itens da biblioteca...';

  @override
  String get categoryCustomScript => 'Script Personalizado';

  @override
  String get categoryCustomApp => 'App Personalizado';

  @override
  String get categoryCustomProfile => 'Perfil Personalizado';

  @override
  String get categoryInHouseApp => 'App In-House';

  @override
  String get categoryBuiltIn => 'Integrado';

  @override
  String get categoryVppApps => 'VPP / Apps da App Store';

  @override
  String get categoryManagedProfiles => 'Perfis Gerenciados';

  @override
  String get categoryKandjiSetup => 'Configuração MDM';

  @override
  String get categoryMacosRelease => 'Atualizações macOS';

  @override
  String get categoryThreatPolicy => 'Políticas de Segurança';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      one: '1 Blueprint',
    );
    return 'Em $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Uma vez';

  @override
  String get executionFrequencyEvery15Min => 'A cada 15 minutos';

  @override
  String get executionFrequencyEveryDay => 'Diariamente';

  @override
  String get executionFrequencyNoEnforcement => 'Sem aplicação';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Script de Correção';

  @override
  String get allProperties => 'Todas as Propriedades';

  @override
  String get builtInLibraryItem => 'Item integrado da biblioteca';

  @override
  String get builtInDetailsHint => 'Detalhes disponíveis na aba Status';

  @override
  String get active => 'Ativo';

  @override
  String get yes => 'Sim';

  @override
  String get no => 'Não';

  @override
  String get execution => 'Execução';

  @override
  String get restart => 'Reiniciar';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Tipo de Instalação';

  @override
  String get enforcement => 'Aplicação';

  @override
  String get runsOnMac => 'Executa no Mac';

  @override
  String get runsOnIphone => 'Executa no iPhone';

  @override
  String get runsOnIpad => 'Executa no iPad';

  @override
  String get appName => 'Nome do App';

  @override
  String get appVersion => 'Versão do App';

  @override
  String get minOsVersion => 'Versão Mín. do SO';

  @override
  String get created => 'Criado';

  @override
  String get updated => 'Atualizado';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count itens',
      one: '1 item',
      zero: 'Nenhum item',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Resolvido';

  @override
  String get severityInformational => 'Informativo';

  @override
  String get managementState => 'Estado de Gerenciamento';

  @override
  String get managementStateOpen => 'Aberto';

  @override
  String get managementStateClosed => 'Fechado';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Suspeito';

  @override
  String get classificationMal => 'Malicioso';

  @override
  String get blueprintRouting => 'Roteamento de Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Código de registro e roteamento para registro manual / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'O roteamento de Blueprint não está configurado para este tenant.';

  @override
  String get enrollmentCodeActive => 'Ativo';

  @override
  String get enrollmentCodeInactive => 'Inativo';

  @override
  String get routingActivity => 'Atividade de Roteamento';

  @override
  String get noRoutingActivity => 'Nenhuma atividade de roteamento encontrada.';

  @override
  String get selfServiceCategories => 'Categorias de Self-Service';

  @override
  String get selfServiceDesc =>
      'Gerenciar categorias de Self-Service para seus usuários';

  @override
  String get addCategory => 'Adicionar Categoria';

  @override
  String get categoryName => 'Nome da Categoria';

  @override
  String get deleteCategory => 'Excluir Categoria';

  @override
  String get deleteCategoryConfirm =>
      'Deseja realmente excluir esta categoria?';

  @override
  String get noCategoriesFound => 'Nenhuma categoria encontrada.';

  @override
  String get categoryCreated => 'Categoria criada';

  @override
  String get categoryDeleted => 'Categoria excluída';

  @override
  String get profileBody => 'XML do Perfil';

  @override
  String get customProfile => 'Perfil Personalizado';

  @override
  String get classification => 'Classificação';

  @override
  String get mdmEnabled => 'MDM ativado';

  @override
  String get enrolledViaDep => 'Registrado via DEP';

  @override
  String get userApprovedMdm => 'MDM aprovado pelo usuário';

  @override
  String get network => 'Rede';

  @override
  String get ipAddress => 'Endereço IP';

  @override
  String get wifiNetwork => 'Rede Wi-Fi';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Trava de Ativação';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Modo Desenvolvedor';

  @override
  String get adbEnabled => 'ADB ativado';

  @override
  String get unknownSources => 'Fontes desconhecidas';

  @override
  String get securityPatch => 'Patch de Segurança';

  @override
  String get provisioningUdid => 'UDID de Provisionamento';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Informações do MDM';

  @override
  String get lastEnrollment => 'Último Registro';

  @override
  String get enterpriseId => 'ID da Empresa';

  @override
  String get manufacturer => 'Fabricante';

  @override
  String get generalStatus => 'Status Geral';

  @override
  String get apiLevel => 'Nível da API';

  @override
  String get userApprovedEnrollment => 'Registro aprovado pelo usuário';

  @override
  String get hostname => 'Hostname';

  @override
  String get macAddress => 'Endereço MAC';

  @override
  String get publicIp => 'IP Público';

  @override
  String get volumes => 'Volumes';

  @override
  String volumeUsed(String percent) {
    return '$percent% utilizado';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available livre de $total';
  }

  @override
  String get encrypted => 'Criptografado';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores núcleos';
  }

  @override
  String processors(String count) {
    return '$count processadores';
  }

  @override
  String get batteryLevel => 'Nível da Bateria';

  @override
  String get lastUser => 'Último Usuário';

  @override
  String get bootVolume => 'Volume de Inicialização';

  @override
  String get localUsers => 'Usuários Locais';

  @override
  String get regularUsers => 'Usuários Padrão';

  @override
  String get systemUsers => 'Usuários do Sistema';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Atribuir ao Blueprint';

  @override
  String get installOnDevice => 'Instalar no Dispositivo';

  @override
  String get selectBlueprint => 'Selecionar Blueprint';

  @override
  String get selectDevice => 'Selecionar Dispositivo';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Licenças VPP';

  @override
  String get fileName => 'Nome do Arquivo';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Trava de Ativação';

  @override
  String get prismCategoryApps => 'Aplicativos';

  @override
  String get prismCategoryApplicationFirewall => 'Firewall de Aplicativos';

  @override
  String get prismCategoryCellular => 'Celular';

  @override
  String get prismCategoryCertificates => 'Certificados';

  @override
  String get prismCategoryDesktopAndScreensaver =>
      'Área de Trabalho e Proteção de Tela';

  @override
  String get prismCategoryDeviceInformation => 'Informações do Dispositivo';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper e XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Perfis Instalados';

  @override
  String get prismCategoryKernelExtensions => 'Extensões de Kernel';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents e Daemons';

  @override
  String get prismCategoryLocalUsers => 'Usuários Locais';

  @override
  String get prismCategoryStartupSettings => 'Configurações de Inicialização';

  @override
  String get prismCategorySystemExtensions => 'Extensões do Sistema';

  @override
  String get prismCategoryTransparencyDatabase =>
      'Banco de Dados de Transparência';

  @override
  String prismRecords(int count) {
    return '$count registros';
  }

  @override
  String get prismNoData => 'Nenhum dado disponível para esta categoria.';

  @override
  String get prismExport => 'Exportar CSV';

  @override
  String get prismExportRequested =>
      'Exportação solicitada. O link para download estará disponível em breve.';

  @override
  String get prismFilterByFamily => 'Família de Dispositivos';

  @override
  String get prismAllFamilies => 'Todas as Famílias';

  @override
  String get appearance => 'Aparência';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'Sistema';

  @override
  String get themeModeLight => 'Claro';

  @override
  String get themeModeDark => 'Escuro';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Personalizado';

  @override
  String get shortTypeProfile => 'Perfil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Gerenciado';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Segurança';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Atualizações do SO';

  @override
  String get categoryAutoApps => 'Apps Automáticos';

  @override
  String get autoApp => 'App Automático';

  @override
  String get fileSize => 'Tamanho do Arquivo';

  @override
  String get unzipLocation => 'Local de Extração';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Arquivo atualizado';

  @override
  String get mdmIdentifier => 'Identificador MDM';

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
