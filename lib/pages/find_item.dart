import 'package:flutter/material.dart';

class FindItem extends StatefulWidget {
  const FindItem({Key? key}) : super(key: key);

  @override
  State<FindItem> createState() => _FindItemState();
}

class _FindItemState extends State<FindItem> {
  final List<String> items = List<String>.generate(10, (i) => '$i');

  void updateMyTiles(int oldIndex, int newIndex) {
    setState(() {
      // nedd when make tile moving the last of list
      if (oldIndex < newIndex) {
        newIndex--;
      }
      //het the tile we are moving it
      final tile = items.removeAt(oldIndex);
      // place the tile in new position
      items.insert(newIndex, tile);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ReorderableListView(
        children: List.generate(
          items.length,
          (index) {
            return ListTile(
              key: Key('$index'), // Assigning key here
              leading: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text(
                  items[index],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
              title: Text('Item ${items[index]}'),
              subtitle: const Text('Item description'),
              trailing: const Icon(Icons.more_vert),
            );
          },
        ),
        onReorder: (int oldIndex, int newIndex) =>
            updateMyTiles(oldIndex, newIndex),
      ),
    );
  }
}
