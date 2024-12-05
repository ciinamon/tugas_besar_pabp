part of '_index.dart';

class VocabsView extends StatelessWidget {
  const VocabsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(56),
        child: VocabsAppbar(),
      ),
      body: OnBuilder.all(
        listenTo: _dt.rxVocabList,
        onWaiting: () => const Center(child: CircularProgressIndicator()),
        onError: (error, refreshError) => Center(child: Text(error.toString())),
        onData: (data) {
          if (_ct.needPremiumAccount()) {
            return const VocabsGolf();
          }
          return const Column(
            children: [
              Spacer(),
              VocabsDelta(),
              Spacer(),
              VocabsCharlie(),
              Spacer(),
              VocabsEcho(),
              Spacer(),
            ],
          );
        },
      ),
    );
  }
}
