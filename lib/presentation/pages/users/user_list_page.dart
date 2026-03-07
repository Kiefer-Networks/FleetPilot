import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fleetpilot/l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import '../../../domain/entities/mdm_user.dart';
import '../../providers/user_providers.dart';
import '../../widgets/common/empty_state_widget.dart';
import '../../widgets/common/error_state_widget.dart';
import '../../widgets/common/loading_widget.dart';

/// User list screen with M3 SearchBar, Badge filter icon, and Card-based tiles.
class UserListPage extends ConsumerStatefulWidget {
  const UserListPage({super.key});

  @override
  ConsumerState<UserListPage> createState() => _UserListPageState();
}

class _UserListPageState extends ConsumerState<UserListPage> {
  final _searchController = SearchController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  int _countActiveFilters() {
    var count = 0;
    if (ref.read(showArchivedUsersProvider)) count++;
    return count;
  }

  void _clearAllFilters() {
    _searchController.clear();
    ref.read(userSearchQueryProvider.notifier).state = '';
    ref.read(showArchivedUsersProvider.notifier).state = false;
    ref.read(userSortAscProvider.notifier).state = true;
    setState(() {});
  }

  Future<void> _showFilterSheet() async {
    final result = await showModalBottomSheet<bool>(
      context: context,
      isScrollControlled: true,
      useSafeArea: true,
      builder: (_) => _UserFilterBottomSheet(ref: ref),
    );
    if (result == true) setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);
    final filteredUsers = ref.watch(filteredUsersProvider);
    final showArchived = ref.watch(showArchivedUsersProvider);
    final sortAsc = ref.watch(userSortAscProvider);
    final loadingCount = ref.watch(usersLoadingCountProvider);
    final activeFilterCount = _countActiveFilters();

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () => ref.read(usersProvider.notifier).refresh(),
        child: const Icon(Icons.refresh),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) => [
          SliverAppBar(title: Text(l10n.navUsers), floating: true, snap: true),
        ],
        body: Column(
          children: [
            // Search bar + filter button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: SearchBar(
                      controller: _searchController,
                      hintText: l10n.searchUsers,
                      leading: const Icon(Icons.search, size: 20),
                      trailing: [
                        if (_searchController.text.isNotEmpty)
                          IconButton(
                            icon: const Icon(Icons.clear, size: 20),
                            onPressed: () {
                              _searchController.clear();
                              ref.read(userSearchQueryProvider.notifier).state =
                                  '';
                              setState(() {});
                            },
                          ),
                      ],
                      onChanged: (query) {
                        ref.read(userSearchQueryProvider.notifier).state =
                            query;
                        setState(() {});
                      },
                      padding: const WidgetStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 8),
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Badge(
                    isLabelVisible: activeFilterCount > 0,
                    label: Text('$activeFilterCount'),
                    child: IconButton(
                      icon: Icon(
                        Icons.tune,
                        color: activeFilterCount > 0
                            ? theme.colorScheme.primary
                            : null,
                      ),
                      onPressed: _showFilterSheet,
                    ),
                  ),
                ],
              ),
            ),

            // Active filter chips
            if (activeFilterCount > 0) ...[
              const SizedBox(height: 8),
              SizedBox(
                height: 36,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  children: [
                    if (showArchived)
                      Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: InputChip(
                          label: Text(l10n.showArchived),
                          onDeleted: () =>
                              ref
                                      .read(showArchivedUsersProvider.notifier)
                                      .state =
                                  false,
                        ),
                      ),
                    ActionChip(
                      label: Text(l10n.filterClearAll),
                      avatar: const Icon(Icons.clear_all, size: 16),
                      onPressed: _clearAllFilters,
                    ),
                  ],
                ),
              ),
            ],

            // Sort chip row
            const SizedBox(height: 8),
            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                children: [
                  FilterChip(
                    avatar: Icon(
                      sortAsc ? Icons.arrow_downward : Icons.arrow_upward,
                      size: 16,
                    ),
                    label: Text(sortAsc ? l10n.sortAZ : l10n.sortZA),
                    selected: false,
                    onSelected: (_) =>
                        ref.read(userSortAscProvider.notifier).state = !sortAsc,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 8),

            // Loading progress
            if (filteredUsers.isLoading && loadingCount > 0)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const LinearProgressIndicator(),
                    const SizedBox(height: 4),
                    Text(
                      l10n.userCount(loadingCount),
                      style: theme.textTheme.labelSmall,
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),

            // User list
            Expanded(
              child: filteredUsers.when(
                data: (users) {
                  if (users.isEmpty) {
                    return EmptyStateWidget(
                      icon: Icons.people_outline,
                      title: l10n.noUsersFound,
                      message: l10n.noUsersFoundMessage,
                      actionLabel: l10n.retry,
                      onAction: () =>
                          ref.read(usersProvider.notifier).refresh(),
                    );
                  }

                  return RefreshIndicator(
                    onRefresh: () => ref.read(usersProvider.notifier).refresh(),
                    child: ListView.builder(
                      padding: const EdgeInsets.only(bottom: 16),
                      itemCount: users.length + 1,
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return Padding(
                            padding: const EdgeInsets.fromLTRB(16, 4, 16, 4),
                            child: Text(
                              l10n.userCount(users.length),
                              style: theme.textTheme.labelMedium?.copyWith(
                                color: theme.colorScheme.onSurfaceVariant,
                              ),
                            ),
                          );
                        }
                        final user = users[index - 1];
                        return _UserListTile(user: user);
                      },
                    ),
                  );
                },
                loading: () => const LoadingWidget(),
                error: (error, _) => ErrorStateWidget(
                  failure: error,
                  onRetry: () => ref.read(usersProvider.notifier).refresh(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _UserListTile extends StatelessWidget {
  const _UserListTile({required this.user});

  final MdmUser user;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final l10n = AppLocalizations.of(context);

    final name = user.name ?? user.email ?? user.id;
    final initials = _getInitials(name);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          onTap: () => context.push('/users/${user.id}'),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 24,
                  backgroundColor: colorScheme.secondaryContainer,
                  child: Text(
                    initials,
                    style: theme.textTheme.titleSmall?.copyWith(
                      color: colorScheme.onSecondaryContainer,
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name ?? user.id,
                        style: theme.textTheme.titleSmall,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      if (user.email != null) ...[
                        const SizedBox(height: 2),
                        Text(
                          user.email!,
                          style: theme.textTheme.bodySmall?.copyWith(
                            color: colorScheme.onSurfaceVariant,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ],
                  ),
                ),
                if (user.archived)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: colorScheme.errorContainer,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      l10n.archived,
                      style: theme.textTheme.labelSmall?.copyWith(
                        color: colorScheme.onErrorContainer,
                      ),
                    ),
                  ),
                const SizedBox(width: 4),
                Icon(
                  Icons.chevron_right,
                  color: colorScheme.onSurfaceVariant,
                  size: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getInitials(String name) {
    final parts = name.trim().split(RegExp(r'\s+'));
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return name.isNotEmpty ? name[0].toUpperCase() : '?';
  }
}

/// Bottom sheet for user filters.
class _UserFilterBottomSheet extends StatelessWidget {
  const _UserFilterBottomSheet({required this.ref});

  final WidgetRef ref;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);
    final theme = Theme.of(context);

    return DraggableScrollableSheet(
      expand: false,
      initialChildSize: 0.35,
      minChildSize: 0.25,
      maxChildSize: 0.6,
      builder: (context, scrollController) {
        return StatefulBuilder(
          builder: (context, setSheetState) {
            final showArchived = ref.read(showArchivedUsersProvider);

            return Column(
              children: [
                // Handle
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Container(
                    width: 32,
                    height: 4,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onSurfaceVariant.withValues(
                        alpha: 0.4,
                      ),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),

                // Title
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      Text(l10n.filterTitle, style: theme.textTheme.titleLarge),
                      const Spacer(),
                      TextButton(
                        onPressed: () {
                          ref.read(showArchivedUsersProvider.notifier).state =
                              false;
                          setSheetState(() {});
                        },
                        child: Text(l10n.filterClearAll),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 8),

                // Content
                Expanded(
                  child: ListView(
                    controller: scrollController,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      Text(
                        l10n.filterStatus,
                        style: theme.textTheme.titleSmall,
                      ),
                      const SizedBox(height: 8),
                      FilterChip(
                        label: Text(l10n.showArchived),
                        selected: showArchived,
                        onSelected: (_) {
                          ref.read(showArchivedUsersProvider.notifier).state =
                              !showArchived;
                          setSheetState(() {});
                        },
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),

                // Apply button
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: SizedBox(
                    width: double.infinity,
                    child: FilledButton(
                      onPressed: () => Navigator.pop(context, true),
                      child: Text(l10n.filterApply),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
    );
  }
}
