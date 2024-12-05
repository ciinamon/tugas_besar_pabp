part of '_index.dart';

class RouteMap {
  RouteMap._();

  static final data = {
    // Routes.sampleSatu: (RouteData data) => const SampleSatuView(),
    // Routes.sampleDua: (RouteData data) => const SampleDuaView(),
    // Routes.sampleTiga: (RouteData data) => const SampleTigaView(),
    Routes.home: (RouteData data) => const HomeView(),
    Routes.auth: (RouteData data) => const AuthView(),
    Routes.users: (RouteData data) => const UsersView(),
    Routes.vocabs: (RouteData data) => const VocabsView(),
  };
}
