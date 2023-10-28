import 'package:flutter/material.dart';

class Listing extends StatefulWidget {
  const Listing({super.key});

  @override
  State<Listing> createState() => _ListingState();
}

class _ListingState extends State<Listing> {
  List items =["user1","user2","user3","user4","user5","user6","user7","user8","user9","user10"


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.grey[900],
        title: Text('Listing'
        ),
      ),
      body:  ListView.separated(
          itemBuilder: (BuildContext context, int index) => ListTile(
            title: Text(items[index]),
            trailing: TextButton(

             child: Text('DETAILS'),
              onPressed: () {

              },
            ),
          ),
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: items.length),

    );
  }
}
