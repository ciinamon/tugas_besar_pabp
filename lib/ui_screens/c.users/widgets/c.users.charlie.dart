part of '../_index.dart';

class UsersCharlie extends StatelessWidget {
  const UsersCharlie({super.key});

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => _dt.rxUserxList.refresh(),
      child: OnBuilder.all(
        listenTo: _dt.rxUserxList,
        onWaiting: () => const CircularProgressIndicator(),
        onError: (error, refreshError) => Text(error.toString()),
        onData: (data) => ListView(
          children: [
            ...List.generate(
              data.length,
              (index) {
                final item = data[index];
                var date = DateTime.fromMillisecondsSinceEpoch(int.parse(item.createdAt));
                return Card(
                  child: ListTile(
                    title: Text(item.email),
                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(DateFormat('dd/MM/yyyy  -  HH:mm').format(date)),
                        Text(item.uid),
                      ],
                    ),
                    // trailing: Switch(
                    //   value: item.isPremium,
                    //   onChanged: (value) => _ct.toggleIsPremium(value, index),
                    // ),
                    trailing: SizedBox(
                      width: 45,
                      height: 30,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: Switch(
                          value: item.isPremium,
                          onChanged: (value) => _ct.toggleIsPremium(value, index),
                        ),
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
