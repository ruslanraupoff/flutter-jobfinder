
import 'package:flutter/material.dart';

import 'widgets/home_app_bar.dart';
import 'widgets/job_list.dart';
import 'widgets/search_card.dart';
import 'widgets/tag_list.dart';

class JobFinderFour extends StatefulWidget {
  const JobFinderFour({Key? key}) : super(key: key);

  @override
  State<JobFinderFour> createState() => _JobFinderFourState();
}

class _JobFinderFourState extends State<JobFinderFour>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey.withOpacity(0.1),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const SearchCard(),
              const TagList(),
              JobList(),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        padding: const EdgeInsets.all(4),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(36))
        ),
        child: FloatingActionButton(
          backgroundColor: const Color(0xFFfed309),
          elevation: 0,
          onPressed: () {},
          child: const Icon(
            Icons.add,
            color: Colors.white,
          )
      )
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 8.0,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.only(
            top: 16
          ),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: const Icon(
                  Icons.home,
                  color: Color(0xFF04b3b6),
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.cases_outlined,
                  color: Colors.grey.shade500
                ),
                onPressed: () {},
              ),
              const SizedBox(width: 44.0),
              IconButton(
                icon: Icon(
                  Icons.chat_outlined,
                  color: Colors.grey.shade500
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(
                  Icons.person_outline,
                  color: Colors.grey.shade500
                ),
                onPressed: () {},
              ),
            ],
          )
        )
      )
    );
  }
}
