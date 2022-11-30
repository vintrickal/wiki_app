import 'package:flutter_riverpod/flutter_riverpod.dart';

class BottomNavbarNotifier extends StateNotifier<int> {
  BottomNavbarNotifier() : super(0);

  void save(var value) {
    state = value;
  }
}

final bottomNavBarProvider =
    StateNotifierProvider<BottomNavbarNotifier, int>((ref) {
  return BottomNavbarNotifier();
});

saveToBottomNavbarProvider(WidgetRef ref, int vm) {
  ref.read(bottomNavBarProvider.notifier).save(vm);
}
