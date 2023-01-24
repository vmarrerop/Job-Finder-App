import 'package:finder_job_app/componentes/item_job.dart';
import 'package:finder_job_app/models/job.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class JobCarousel extends StatelessWidget {
  List<Job> jobs;
  JobCarousel(this.jobs, {super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        options: CarouselOptions(
            height: 230,
            enableInfiniteScroll: false,
            reverse: false,
            viewportFraction: 0.86),
        items: jobs
            .map((e) => ItemJob(
                  e,
                  themeDark: jobs.indexOf(e) == 1,
                ))
            .toList());
  }
}
