import 'package:flutter/material.dart';

class ListViewClass extends StatefulWidget {
  const ListViewClass({Key? key}) : super(key: key);

  @override
  State<ListViewClass> createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass>  with AutomaticKeepAliveClientMixin<ListViewClass>{
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 20,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.22,
            decoration: BoxDecoration(
              color: Colors.orange,
            ),
            child: Center(
              child: Text("Post ${index + 1}"),
            ),
          ),
        );
      },
    );
  }

  bool get wantKeepAlive => true;
}
