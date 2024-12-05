part of '_index.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: OnBuilder.all(
        listenTo: Prov.auth.st.rxSignedInUserx,
        onError: (error, refreshError) => Center(child: Text(error.toString())),
        onWaiting: () => const Center(
          child: Text(
            'loading your credentials...',
            textScaler: TextScaler.linear(1.3),
          ),
        ),
        onData: (data) {
          if (data != null) {
            switch (data.role) {
              case 'admin':
                return const UsersView();
              case 'client':
                return const VocabsView();
            }
          }
          return const AuthView();
        },
      ),
    );
  }
}
