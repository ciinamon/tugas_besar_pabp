part of '../_index.dart';

class VocabsGolf extends StatelessWidget {
  const VocabsGolf({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('you need premium account', textScaler: TextScaler.linear(1.4)),
          Text('to access next words', textScaler: TextScaler.linear(1.4)),
          SizedBoxH(50),
          Text('please contact admin', textScaler: TextScaler.linear(1.2)),
        ],
      ),
    );
  }
}
