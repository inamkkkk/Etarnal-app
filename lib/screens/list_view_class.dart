import 'package:flutter/material.dart';

class ListViewClass extends StatefulWidget {
  ListViewClass({Key? key, required this.list, required this.index})
      : super(key: key);

  int index;
  List list;

  @override
  State<ListViewClass> createState() => _ListViewClassState();
}

class _ListViewClassState extends State<ListViewClass> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        separatorBuilder: (context, position) {
          return const SizedBox(
            height: 20.0,
          );
        },
        shrinkWrap: true,
        itemCount: widget.index,
        itemBuilder: (context, int index) {
          return Column(
            children: [
              Row(
                children: [
                  const SizedBox(
                    width: 15.0,
                  ),
                  const Icon(
                    Icons.check_box_outline_blank,
                    size: 30.0,
                  ),
                  // Container(
                  //   height: 35.0,
                  //   width: 35.0,
                  //   color: Colors.transparent,
                  //   child: Container(
                  //     decoration: BoxDecoration(
                  //         borderRadius: BorderRadius.circular(10.0),
                  //         border:
                  //             Border.all(color: Colors.black54, width: 2.0)),
                  //   ),
                  // ),
                  const SizedBox(
                    width: 15.0,
                  ),
                  Text(
                    widget.list[index],
                    style:
                        const TextStyle(color: Colors.black87, fontSize: 20.0),
                  ),
                ],
              ),
              const Divider(
                thickness: 1,
                color: Colors.black54,
              ),
            ],
          );
        });
  }
}
