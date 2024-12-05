part of '../_index.dart';

class VocabsEcho extends StatelessWidget {
  const VocabsEcho({super.key});

  @override
  Widget build(BuildContext context) {
    final datax = [..._dt.rxVocabList.st];
    datax.shuffle();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          ...List.generate(
            datax.length,
            (index) {
              final item = datax[index];
              return Card(
                clipBehavior: Clip.antiAlias,
                child: InkWell(
                  onTap: () => _ct.chooseOption(item.translate),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: 50,
                        child: Center(
                          child: Text(
                            item.translate,
                            textScaler: const TextScaler.linear(1.2),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
