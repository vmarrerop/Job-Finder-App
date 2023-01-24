import 'package:finder_job_app/models/job.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:gap/gap.dart';

class CompactItemJob extends StatelessWidget {
  Job jobs;
  CompactItemJob(this.jobs, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: _boxDecoration(),
        height: 100,
        child: Row(
          children: [_companyLogo(), _infoJobText(context)],
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const <BoxShadow>[
          BoxShadow(color: Colors.black, offset: Offset(2, 2), blurRadius: 8)
        ]);
  }

  Widget _companyLogo() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Image.network(jobs.company.urlLogo),
    );
  }

  Widget _infoJobText(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          jobs.company.name,
          style: Theme.of(context).textTheme.subtitle1,
        ),
        Gap(5),
        Text(
          jobs.role,
          style: Theme.of(context).textTheme.headline4,
        ),
        Gap(5),
        Row(
          children: [Icon(Icons.location_on), Text(jobs.location)],
        )
      ],
    );
  }
}
