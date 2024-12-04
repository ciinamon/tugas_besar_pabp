part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.home: (RouteData data) => const HomeView(),
    Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.auth: (RouteData data) => const AuthView(),
    Routes.users: (RouteData data) => const UsersView(),
    Routes.words: (RouteData data) => const WordsView(),
  };
}
