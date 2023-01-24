import 'package:finder_job_app/models/company.dart';

class Job {
  String location;
  String role;
  Company company;
  bool isFavorite;

  Job(
      {required this.company,
      required this.location,
      required this.role,
      this.isFavorite = false});
}
