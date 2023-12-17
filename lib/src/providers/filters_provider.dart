import 'package:flutter_riverpod/flutter_riverpod.dart';

final weightFilterProvider = StateProvider<String>((ref) {
  return 'All Weights';
});

final ageFilterProvider = StateProvider<String>((ref) {
  return 'All Ages';
});

final genderFilterProvider = StateProvider<String>((ref) {
  return 'All';
});
