import 'package:flutter/material.dart';

class TagList extends StatefulWidget {
  const TagList({Key? key}) : super(key: key);

  @override
  State<TagList> createState() => _TagListState();
}

class _TagListState extends State<TagList> {
  final tagsList = <String>['All', 'Popular', 'Featured'];
  final iconsList = <Widget>[
    const SizedBox(width: 0),
    const Icon(
      Icons.star,
      color: Colors.yellow,
    ),
    const Icon(
      Icons.bolt,
      color: Colors.yellow,
    )
  ];
  var selected = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selected = index;
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: selected == index
                ? Theme.of(context).primaryColor.withOpacity(0.2)
                : Colors.white,
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: selected == index
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).primaryColor.withOpacity(0.2)
              )
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                if (index > 0)
                  const SizedBox(width: 8),
                iconsList[index],
                if (index == 0)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16
                  ),
                  child: Text(tagsList[index]),
                ),
                if (index > 0)
                Padding(
                  padding: const EdgeInsets.only(
                    right: 16,
                    left: 8
                  ),
                  child: Text(tagsList[index]),
                )
              ],
            )
          )
        ),
        separatorBuilder: (_, index) => const SizedBox(width: 15),
        itemCount: tagsList.length
      )
    );
  }
}
