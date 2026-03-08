import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/library_item_status.dart';
import '../../providers/blueprint_providers.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// Detail page showing info, deployment status, and activity for a library item.
class LibraryItemDetailPage extends ConsumerWidget {
  const LibraryItemDetailPage({
    super.key,
    required this.itemId,
    required this.itemName,
  });

  final String itemId;
  final String itemName;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final details = ref.watch(allLibraryItemDetailsProvider).value ?? {};
    final itemDetails = details[itemId];
    final category = itemDetails?['_category'] as String?;
    final subtitle = _displayCategory(category, l10n);

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(itemName),
              if (subtitle != null)
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
            ],
          ),
          bottom: TabBar(
            tabs: [
              Tab(text: l10n.details),
              Tab(text: l10n.libraryItemDeploymentStatus),
              Tab(text: l10n.libraryItemActivity),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _InfoTab(itemId: itemId, itemDetails: itemDetails),
            _StatusTab(itemId: itemId),
            _ActivityTab(itemId: itemId),
          ],
        ),
      ),
    );
  }

  static String? _displayCategory(String? category, AppLocalizations l10n) {
    return switch (category) {
      'custom-script' => l10n.categoryCustomScript,
      'custom-app' => l10n.categoryCustomApp,
      'custom-profile' => l10n.categoryCustomProfile,
      'in-house-app' => l10n.categoryInHouseApp,
      _ => null,
    };
  }
}

/// Info tab showing library item details based on its category.
class _InfoTab extends StatelessWidget {
  const _InfoTab({required this.itemId, this.itemDetails});

  final String itemId;
  final Map<String, dynamic>? itemDetails;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    if (itemDetails == null) {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.info_outline,
              size: 48,
              color: colorScheme.onSurfaceVariant,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.builtInLibraryItem,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: colorScheme.onSurfaceVariant,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              l10n.builtInDetailsHint,
              style: theme.textTheme.bodySmall?.copyWith(
                color: colorScheme.outline,
              ),
            ),
          ],
        ),
      );
    }

    final category = itemDetails!['_category'] as String?;
    final active = itemDetails!['active'];

    // Common fields
    final rows = <_InfoRow>[];
    if (active != null) {
      rows.add(_InfoRow(
        label: l10n.active,
        value: active == true ? l10n.yes : l10n.no,
      ));
    }

    // Category-specific fields
    switch (category) {
      case 'custom-script':
        _addFrequency(rows, l10n, itemDetails!['execution_frequency']);
        _addBoolIfPresent(rows, l10n.restart, itemDetails!['restart'], l10n);
        _addBoolIfPresent(
            rows, l10n.selfService, itemDetails!['show_in_self_service'], l10n);
      case 'custom-app':
        _addIfPresent(rows, l10n.installType, itemDetails!['install_type']);
        _addIfPresent(rows, l10n.enforcement, itemDetails!['install_enforcement']);
        _addBoolIfPresent(
            rows, l10n.selfService, itemDetails!['show_in_self_service'], l10n);
      case 'custom-profile':
        _addBoolIfPresent(
            rows, l10n.runsOnMac, itemDetails!['runs_on_mac'], l10n);
        _addBoolIfPresent(
            rows, l10n.runsOnIphone, itemDetails!['runs_on_iphone'], l10n);
        _addBoolIfPresent(
            rows, l10n.runsOnIpad, itemDetails!['runs_on_ipad'], l10n);
      case 'in-house-app':
        _addIfPresent(rows, l10n.appName, itemDetails!['app_name']);
        _addIfPresent(rows, l10n.appVersion, itemDetails!['app_version']);
        _addIfPresent(rows, 'Identifier', itemDetails!['app_identifier']);
        _addIfPresent(rows, l10n.minOsVersion, itemDetails!['minimum_os_version']);
        _addBoolIfPresent(
            rows, l10n.runsOnIphone, itemDetails!['runs_on_iphone'], l10n);
        _addBoolIfPresent(
            rows, l10n.runsOnIpad, itemDetails!['runs_on_ipad'], l10n);
        _addBoolIfPresent(
            rows, l10n.runsOnMac, itemDetails!['runs_on_mac'], l10n);
    }

    _addDateTimeIfPresent(rows, l10n.created, itemDetails!['created_at']);
    _addDateTimeIfPresent(rows, l10n.updated, itemDetails!['updated_at']);

    // Script body for custom-script
    final scriptBody = category == 'custom-script'
        ? itemDetails!['body'] as String?
        : null;

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        // Properties card
        if (rows.isNotEmpty) ...[
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(children: rows),
            ),
          ),
          const SizedBox(height: 16),
        ],

        // Script viewer for custom scripts
        if (scriptBody != null && scriptBody.isNotEmpty) ...[
          _ScriptViewerCard(script: scriptBody, l10n: l10n),
          const SizedBox(height: 16),
        ],

        // Show all raw fields as a reference
        _RawFieldsCard(data: itemDetails!, category: category, l10n: l10n),
      ],
    );
  }

  void _addIfPresent(List<_InfoRow> rows, String label, dynamic value) {
    if (value == null) return;
    rows.add(_InfoRow(label: label, value: value.toString()));
  }

  void _addBoolIfPresent(
      List<_InfoRow> rows, String label, dynamic value, AppLocalizations l10n) {
    if (value == null) return;
    rows.add(_InfoRow(
      label: label,
      value: value == true ? l10n.yes : l10n.no,
    ));
  }

  void _addDateTimeIfPresent(
      List<_InfoRow> rows, String label, dynamic value) {
    if (value == null) return;
    if (value is String) {
      rows.add(_InfoRow(label: label, value: _formatDateTime(value)));
    }
  }

  void _addFrequency(
      List<_InfoRow> rows, AppLocalizations l10n, dynamic value) {
    if (value == null) return;
    final display = _translateFrequency(value.toString(), l10n);
    rows.add(_InfoRow(label: l10n.execution, value: display));
  }
}

String _translateFrequency(String freq, AppLocalizations l10n) {
  return switch (freq) {
    'once' => l10n.executionFrequencyOnce,
    'every_15_min' => l10n.executionFrequencyEvery15Min,
    'every_day' => l10n.executionFrequencyEveryDay,
    'no_enforcement' => l10n.executionFrequencyNoEnforcement,
    _ => freq.replaceAll('_', ' '),
  };
}

/// Dark code viewer for script bodies.
class _ScriptViewerCard extends StatelessWidget {
  const _ScriptViewerCard({required this.script, required this.l10n});

  final String script;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lines = script.split('\n');

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 4, bottom: 8),
          child: Row(
            children: [
              Icon(Icons.code, size: 16, color: theme.colorScheme.primary),
              const SizedBox(width: 8),
              Text(
                l10n.scriptBody,
                style: theme.textTheme.titleSmall?.copyWith(
                  color: theme.colorScheme.primary,
                ),
              ),
              const Spacer(),
              IconButton(
                icon: const Icon(Icons.copy, size: 18),
                tooltip: l10n.tapToCopy,
                onPressed: () {
                  Clipboard.setData(ClipboardData(text: script));
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(l10n.secretCopied),
                      duration: const Duration(seconds: 2),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Container(
            width: double.infinity,
            color: const Color(0xFF1E1E1E),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minWidth: MediaQuery.of(context).size.width - 64,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SelectableText.rich(
                    TextSpan(
                      children: [
                        for (var i = 0; i < lines.length; i++)
                          TextSpan(
                            children: [
                              // Line number
                              TextSpan(
                                text: '${(i + 1).toString().padLeft(3)} ',
                                style: const TextStyle(
                                  color: Color(0xFF858585),
                                  fontFamily: 'monospace',
                                  fontSize: 13,
                                  height: 1.5,
                                ),
                              ),
                              // Line content with basic highlighting
                              ..._highlightLine(lines[i]),
                              if (i < lines.length - 1)
                                const TextSpan(text: '\n'),
                            ],
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  /// Basic syntax highlighting for shell/bash scripts.
  List<TextSpan> _highlightLine(String line) {
    const baseStyle = TextStyle(
      color: Color(0xFFD4D4D4),
      fontFamily: 'monospace',
      fontSize: 13,
      height: 1.5,
    );
    const commentStyle = TextStyle(
      color: Color(0xFF6A9955),
      fontFamily: 'monospace',
      fontSize: 13,
      height: 1.5,
    );
    const stringStyle = TextStyle(
      color: Color(0xFFCE9178),
      fontFamily: 'monospace',
      fontSize: 13,
      height: 1.5,
    );
    const keywordStyle = TextStyle(
      color: Color(0xFF569CD6),
      fontFamily: 'monospace',
      fontSize: 13,
      height: 1.5,
    );
    const varStyle = TextStyle(
      color: Color(0xFF9CDCFE),
      fontFamily: 'monospace',
      fontSize: 13,
      height: 1.5,
    );
    const shebangStyle = TextStyle(
      color: Color(0xFFC586C0),
      fontFamily: 'monospace',
      fontSize: 13,
      height: 1.5,
    );

    final trimmed = line.trimLeft();

    // Shebang
    if (trimmed.startsWith('#!')) {
      return [TextSpan(text: line, style: shebangStyle)];
    }

    // Full line comment
    if (trimmed.startsWith('#')) {
      return [TextSpan(text: line, style: commentStyle)];
    }

    // Simple tokenization
    final spans = <TextSpan>[];
    final buffer = StringBuffer();
    var i = 0;

    void flushBuffer() {
      if (buffer.isNotEmpty) {
        final text = buffer.toString();
        buffer.clear();
        // Check for keywords
        final words = text.split(RegExp(r'(?<=\s)|(?=\s)'));
        for (final word in words) {
          if (_shellKeywords.contains(word.trim())) {
            spans.add(TextSpan(text: word, style: keywordStyle));
          } else if (word.startsWith('\$')) {
            spans.add(TextSpan(text: word, style: varStyle));
          } else {
            spans.add(TextSpan(text: word, style: baseStyle));
          }
        }
      }
    }

    while (i < line.length) {
      final ch = line[i];

      // Inline comment
      if (ch == '#' && (i == 0 || line[i - 1] != '\\')) {
        flushBuffer();
        spans.add(TextSpan(text: line.substring(i), style: commentStyle));
        return spans;
      }

      // Double-quoted string
      if (ch == '"') {
        flushBuffer();
        final end = line.indexOf('"', i + 1);
        if (end == -1) {
          spans.add(TextSpan(text: line.substring(i), style: stringStyle));
          return spans;
        }
        spans.add(
            TextSpan(text: line.substring(i, end + 1), style: stringStyle));
        i = end + 1;
        continue;
      }

      // Single-quoted string
      if (ch == "'") {
        flushBuffer();
        final end = line.indexOf("'", i + 1);
        if (end == -1) {
          spans.add(TextSpan(text: line.substring(i), style: stringStyle));
          return spans;
        }
        spans.add(
            TextSpan(text: line.substring(i, end + 1), style: stringStyle));
        i = end + 1;
        continue;
      }

      // Variable
      if (ch == '\$') {
        flushBuffer();
        if (i + 1 < line.length && line[i + 1] == '{') {
          final end = line.indexOf('}', i + 2);
          if (end != -1) {
            spans.add(
                TextSpan(text: line.substring(i, end + 1), style: varStyle));
            i = end + 1;
            continue;
          }
        }
        // Simple $VAR
        var j = i + 1;
        while (j < line.length &&
            (RegExp(r'[a-zA-Z0-9_]').hasMatch(line[j]))) {
          j++;
        }
        spans.add(TextSpan(text: line.substring(i, j), style: varStyle));
        i = j;
        continue;
      }

      buffer.write(ch);
      i++;
    }

    flushBuffer();
    return spans.isEmpty ? [TextSpan(text: line, style: baseStyle)] : spans;
  }

  static const _shellKeywords = {
    'if', 'then', 'else', 'elif', 'fi', 'for', 'while', 'do', 'done',
    'case', 'esac', 'in', 'function', 'return', 'exit', 'echo', 'printf',
    'export', 'local', 'readonly', 'declare', 'set', 'unset', 'shift',
    'source', 'eval', 'exec', 'trap', 'wait', 'true', 'false',
    'sudo', 'cd', 'ls', 'rm', 'cp', 'mv', 'mkdir', 'chmod', 'chown',
    'cat', 'grep', 'sed', 'awk', 'curl', 'wget', 'python', 'python3',
    'pip', 'brew', 'defaults', 'launchctl', 'systemctl',
  };
}

/// Shows all fields from the API response grouped logically.
class _RawFieldsCard extends StatelessWidget {
  const _RawFieldsCard({
    required this.data,
    this.category,
    required this.l10n,
  });

  final Map<String, dynamic> data;
  final String? category;
  final AppLocalizations l10n;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;

    // Filter out internal/empty/already-shown fields
    final entries = data.entries.where((e) {
      if (e.key.startsWith('_')) return false;
      if (e.value == null) return false;
      if (e.value is String && (e.value as String).isEmpty) return false;
      if (e.key == 'id' || e.key == 'name' || e.key == 'active') return false;
      if (e.key == 'created_at' || e.key == 'updated_at') return false;
      if (e.key == 'body' && category == 'custom-script') return false;
      return true;
    }).toList();

    if (entries.isEmpty) return const SizedBox.shrink();

    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              l10n.allProperties,
              style: theme.textTheme.titleSmall?.copyWith(
                color: colorScheme.primary,
              ),
            ),
            const SizedBox(height: 12),
            for (final entry in entries)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatKey(entry.key),
                      style: theme.textTheme.labelMedium?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                    ),
                    const SizedBox(height: 2),
                    Text(
                      _formatValue(entry.value, entry.key, l10n),
                      style: theme.textTheme.bodyMedium,
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  String _formatKey(String key) {
    return key
        .replaceAll('_', ' ')
        .replaceAllMapped(
          RegExp(r'(^|\s)\w'),
          (m) => m.group(0)!.toUpperCase(),
        );
  }

  String _formatValue(dynamic value, String key, AppLocalizations l10n) {
    if (value is bool) return value ? l10n.yes : l10n.no;
    if (value is Map || value is List) return value.toString();
    final str = value.toString();
    if (key == 'execution_frequency') {
      return _translateFrequency(str, l10n);
    }
    if (str.contains('T') && str.contains('-') && str.length > 15) {
      return _formatDateTime(str);
    }
    return str;
  }
}

class _StatusTab extends ConsumerWidget {
  const _StatusTab({required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final statusAsync = ref.watch(libraryItemStatusProvider(itemId));

    return statusAsync.when(
      data: (statuses) {
        if (statuses.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.device_hub_outlined,
                  size: 48,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.noStatusFound,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: statuses.length,
          itemBuilder: (context, index) =>
              _StatusTile(status: statuses[index]),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(libraryItemStatusProvider(itemId)),
      ),
    );
  }
}

class _StatusTile extends StatelessWidget {
  const _StatusTile({required this.status});

  final LibraryItemStatus status;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasTapTarget = status.deviceId != null;
    final displayName = status.deviceName ?? status.deviceId ?? 'Unknown';
    final auditSummary = _firstLine(status.lastAuditLog);

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: hasTapTarget
            ? () => context.push('/devices/${status.deviceId}')
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.devices_outlined,
                  color: colorScheme.onSecondaryContainer,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      displayName,
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (status.type != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        _formatAction(status.type!),
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    if (auditSummary != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        auditSummary,
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                    if (status.reportedAt != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        _formatDateTime(status.reportedAt!),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.outline,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (status.status != null) _StatusBadge(status: status.status!),
              if (hasTapTarget) ...[
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _ActivityTab extends ConsumerWidget {
  const _ActivityTab({required this.itemId});

  final String itemId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final l10n = AppLocalizations.of(context);
    final activityAsync = ref.watch(libraryItemActivityProvider(itemId));

    return activityAsync.when(
      data: (activities) {
        if (activities.isEmpty) {
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.history_outlined,
                  size: 48,
                  color: Theme.of(context).colorScheme.onSurfaceVariant,
                ),
                const SizedBox(height: 8),
                Text(
                  l10n.noActivityFound2,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).colorScheme.onSurfaceVariant,
                  ),
                ),
              ],
            ),
          );
        }

        return ListView.builder(
          padding: const EdgeInsets.all(12),
          itemCount: activities.length,
          itemBuilder: (context, index) =>
              _ActivityTile(activity: activities[index]),
        );
      },
      loading: () => const LoadingWidget(),
      error: (error, _) => ErrorStateWidget(
        failure: error,
        onRetry: () => ref.invalidate(libraryItemActivityProvider(itemId)),
      ),
    );
  }
}

class _ActivityTile extends StatelessWidget {
  const _ActivityTile({required this.activity});

  final LibraryItemActivity activity;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final hasTapTarget = activity.deviceId != null;
    final displayName = activity.deviceName ?? activity.userEmail ?? 'Unknown';

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: hasTapTarget
            ? () => context.push('/devices/${activity.deviceId}')
            : null,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          child: Row(
            children: [
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  color: colorScheme.secondaryContainer,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Icon(
                  Icons.play_arrow_outlined,
                  color: colorScheme.onSecondaryContainer,
                  size: 20,
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      _formatAction(activity.action ?? 'Unknown'),
                      style: theme.textTheme.bodyMedium,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2),
                    Text(
                      displayName,
                      style: theme.textTheme.bodySmall?.copyWith(
                        color: colorScheme.onSurfaceVariant,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (activity.createdAt != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        _formatDateTime(activity.createdAt!),
                        style: theme.textTheme.labelSmall?.copyWith(
                          color: colorScheme.outline,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              if (activity.status != null)
                _StatusBadge(status: activity.status!),
              if (hasTapTarget) ...[
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoRow extends StatelessWidget {
  const _InfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: theme.textTheme.bodyMedium?.copyWith(
              color: theme.colorScheme.onSurfaceVariant,
            ),
          ),
          Text(value, style: theme.textTheme.bodyMedium),
        ],
      ),
    );
  }
}

class _StatusBadge extends StatelessWidget {
  const _StatusBadge({required this.status});

  final String status;

  Color _backgroundColor(ColorScheme colorScheme) {
    final lower = status.toLowerCase();
    if (lower == 'success' || lower == 'pass' || lower == 'completed') {
      return colorScheme.primaryContainer;
    }
    if (lower == 'fail' || lower == 'failed' || lower == 'error') {
      return colorScheme.errorContainer;
    }
    if (lower == 'pending' || lower == 'running' || lower == 'in_progress') {
      return colorScheme.tertiaryContainer;
    }
    return colorScheme.surfaceContainerHighest;
  }

  Color _foregroundColor(ColorScheme colorScheme) {
    final lower = status.toLowerCase();
    if (lower == 'success' || lower == 'pass' || lower == 'completed') {
      return colorScheme.onPrimaryContainer;
    }
    if (lower == 'fail' || lower == 'failed' || lower == 'error') {
      return colorScheme.onErrorContainer;
    }
    if (lower == 'pending' || lower == 'running' || lower == 'in_progress') {
      return colorScheme.onTertiaryContainer;
    }
    return colorScheme.onSurfaceVariant;
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: _backgroundColor(colorScheme),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        status,
        style: Theme.of(context)
            .textTheme
            .labelSmall
            ?.copyWith(color: _foregroundColor(colorScheme)),
      ),
    );
  }
}

String? _firstLine(String? text) {
  if (text == null || text.isEmpty) return null;
  for (final line in text.split('\n')) {
    final trimmed = line.trim();
    if (trimmed.isNotEmpty) return trimmed;
  }
  return null;
}

String _formatAction(String action) {
  return action
      .replaceAll(RegExp(r'[_-]'), ' ')
      .replaceAllMapped(
        RegExp(r'(^|\s)\w'),
        (m) => m.group(0)!.toUpperCase(),
      );
}

String _formatDateTime(String dateStr) {
  final parsed = DateTime.tryParse(dateStr);
  if (parsed == null) return dateStr;
  final local = parsed.toLocal();
  return '${local.year}-${local.month.toString().padLeft(2, '0')}-${local.day.toString().padLeft(2, '0')} '
      '${local.hour.toString().padLeft(2, '0')}:${local.minute.toString().padLeft(2, '0')}';
}
