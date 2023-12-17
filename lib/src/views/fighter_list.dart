import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:konquerclub/src/models/fighter_model.dart';
import 'package:konquerclub/src/providers/fighters_provider.dart';

class FightersList extends StatefulWidget {
  const FightersList({super.key});

  @override
  State<FightersList> createState() => _FightersListState();
}

class _FightersListState extends State<FightersList>
    with TickerProviderStateMixin {
  late TabController tabControllerr;

  @override
  void initState() {
    super.initState();
    tabControllerr = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          body: Column(
            children: [
              // TabBar for switching between tabs
              TabBar(
                controller: tabControllerr,
                tabs: const [
                  Tab(text: 'Age 0-35'),
                  Tab(text: 'Age 35-99'),
                ],
              ),
              // Expanded to fill the remaining space
              Expanded(
                child: TabBarView(
                  controller: tabControllerr,
                  children: [
                    // First tab content
                    FightListPage(
                        ageGte: 0, ageLte: 35, tabControllerr: tabControllerr),
                    // Second tab content
                    FightListPage(
                        ageGte: 35, ageLte: 99, tabControllerr: tabControllerr),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FightListPage extends StatelessWidget {
  const FightListPage(
      {super.key,
      required this.ageGte,
      required this.ageLte,
      required this.tabControllerr});

  final int ageGte;
  final int ageLte;
  final TabController tabControllerr;

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        final fightersState = ref.watch(fightersNotifierProvider);
        try {
          // Listen for tab changes
          tabControllerr.addListener(() {
            if (tabControllerr.indexIsChanging) {
              // Fetch data based on the selected tab index
              ref.read(fightersNotifierProvider.notifier).fetchFighters(
                    ageGte: tabControllerr.index == 0 ? 0 : 35,
                    ageLte: tabControllerr.index == 0 ? 35 : 99,
                    page: 1, // Reset page to 1 when switching tabs
                  );
            }
          });
        } catch (e) {
          debugPrint("something here");
        }

        return fightersState.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          error: (error, stackTrace) => Center(
            child: Text('Error: $error'),
          ),
          data: (fighterModel) {
            final fighters = fighterModel.results ?? [];

            return ListView.builder(
              itemCount: fighters.length + 1,
              itemBuilder: (BuildContext context, int index) {
                if (index < fighters.length) {
                  final fighter = fighters[index];
                  return FighterCard(fighter: fighter);
                } else if (fighterModel.next != null) {
                  // Load more data when reaching the end of the list
                  Future.delayed(Duration.zero, () {
                    ref.read(fightersNotifierProvider.notifier).fetchFighters(
                          ageGte: ageGte,
                          ageLte: ageLte,
                          page: ref
                              .watch(fightersNotifierProvider.notifier)
                              .currentPage,
                        );
                  });
                  return const Center(child: CircularProgressIndicator());
                } else {
                  // Reached the end of the paginated data
                  return const SizedBox.shrink();
                }
              },
            );
          },
        );
      },
    );
  }
}

class FighterCard extends StatelessWidget {
  final Fighter fighter;

  const FighterCard({Key? key, required this.fighter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = "${fighter.first_name} ${fighter.last_name}}";
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: fighter.pictureThumb != null &&
                        !fighter.pictureThumb!.contains("svg")
                    ? NetworkImage(fighter.pictureThumb!)
                    : null,
                child: fighter.pictureThumb == null ? Text(name) : null,
              ),
              title: Text(name,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.person, size: 16),
                      const SizedBox(width: 8),
                      Text(fighter.gender ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.cake, size: 16),
                      const SizedBox(width: 8),
                      Text("${fighter.age}"),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.monitor_weight, size: 16),
                      const SizedBox(width: 8),
                      Text(fighter.weight ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.sports_martial_arts, size: 16),
                      const SizedBox(width: 8),
                      Text('${fighter.numberOfFights} Bouts'),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.home_work, size: 16),
                      const SizedBox(width: 8),
                      Text(fighter.gymName ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 16),
                      const SizedBox(width: 8),
                      Text(fighter.gymLocationFull?.address ?? ""),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.badge, size: 16),
                      const SizedBox(width: 8),
                      Text("${fighter.id}"),
                    ],
                  ),
                ],
              ),
              trailing: (fighter.isMatchmaker ?? false)
                  ? const Chip(
                      label: Text('Match Maker'),
                      backgroundColor: Colors.green,
                    )
                  : const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}
