import 'package:finder_job_app/componentes/compact_item_job.dart';
import 'package:flutter/cupertino.dart';
import '../models/job.dart';

class JobList extends StatelessWidget {
  List<Job> jobs;

  JobList(this.jobs, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: jobs.length,
      itemBuilder: (context, index) => CompactItemJob(this.jobs[index]),
    );
  }
}
