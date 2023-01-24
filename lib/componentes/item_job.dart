import 'package:finder_job_app/models/job.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ItemJob extends StatefulWidget {
  final bool themeDark;
  Job job;
  ItemJob(this.job, {super.key, this.themeDark = false});

  @override
  State<ItemJob> createState() => _ItemJobState();
}

class _ItemJobState extends State<ItemJob> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 20, top: 20),
      child: Container(
        decoration: _boxDecoration(context),
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [_companyLogo(), _favIcon()],
              ),
              _infoJobTexts(context)
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration(context) {
    return BoxDecoration(
        color: widget.themeDark
            ? Theme.of(context).primaryColor
            : Colors.green.shade400,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(color: Colors.black, offset: Offset(4, 4), blurRadius: 10)
        ]);
  }

  Widget _companyLogo() {
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.white),
      child: ClipRRect(
        child: Image.network(
          widget.job.company.urlLogo,
          width: 60,
        ),
      ),
    );
  }

  Widget _favIcon() {
    return GestureDetector(
      child: Icon(
        widget.job.isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.white,
      ),
      onTap: () {
        setState(() {
          widget.job.isFavorite = !widget.job.isFavorite;
        });
      },
    );
  }

  Widget _infoJobTexts(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.job.company.name,
          style: TextStyle(fontSize: 15, color: Colors.grey.shade700),
        ),
        const Gap(8),
        Text(widget.job.role,
            style: widget.themeDark
                ? Theme.of(context).textTheme.headline3
                : Theme.of(context).textTheme.headline3),
        const Gap(1),
        Row(
          children: [
            Icon(
              Icons.location_on,
              color: Theme.of(context).highlightColor,
              size: 10,
            ),
            const Gap(1),
            Text(
              widget.job.location,
              style: widget.themeDark
                  ? const TextStyle(fontSize: 15, color: Colors.white)
                  : TextStyle(color: Colors.grey.shade600),
            )
          ],
        )
      ],
    );
  }
}
