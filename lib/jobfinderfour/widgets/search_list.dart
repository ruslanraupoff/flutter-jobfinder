import 'package:flutter/material.dart';
import '../models/job.dart';
import 'job_item.dart';

class SearchList extends StatelessWidget {
  final jobList = Job.generateJobs();

  SearchList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
          bottom: 25,
        ),
        itemBuilder: (context, index) => JobItem(
          jobList[index],
          showTime: true,
        ),
        separatorBuilder: (_, index) => const SizedBox(height: 20),
        itemCount: jobList.length
      )
    );
  }
}
