import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:konquerclub/src/models/fighter_model.dart';
import 'package:konquerclub/src/services/api_services.dart';

final fightersNotifierProvider =
    StateNotifierProvider<FightersNotifier, AsyncValue<FighterModel>>((ref) {
  final apiService = ApiService();
  return FightersNotifier(apiService);
});

class FightersNotifier extends StateNotifier<AsyncValue<FighterModel>> {
  final ApiService _apiService;
  FightersNotifier(this._apiService) : super(const AsyncValue.loading()) {
    fetchFighters(page: 1);
  }
  int _currentPage = 1;
  int get currentPage => _currentPage;
  List<Fighter> fighters = [];
  Future<void> fetchFighters({
    int? ageGte,
    int? ageLte,
    String? name,
    required int page,
  }) async {
    try {
      if (page == 1) {
        fighters = [];
        state = const AsyncValue.loading();
      }
      final response = await _apiService.fetchFighters(
        ageGte: ageGte ?? 0,
        ageLte: ageLte ?? 35,
        name: name,
        page: page,
      );

      fighters.addAll(response.results ?? []);
      state = AsyncValue.data(FighterModel(
        next: response.next,
        previous: response.previous,
        count: response.count,
        results: fighters,
      ));
      _currentPage = page + 1; // Increment the page for the next fetch
    } catch (e) {
      state = AsyncValue.error(e, StackTrace.current);
    }
  }
}
