import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfoDetail extends StatefulWidget {
  InfoDetail(
      {Key? key,
      this.title,
      this.deskripsi,
      this.image,
      required this.isLarge,
      this.callback})
      : super(key: key);
  String? title;
  List<String>? deskripsi;
  Image? image;
  bool isLarge;
  void Function()? callback;

  @override
  State<InfoDetail> createState() => _InfoDetailState();
}

class _InfoDetailState extends State<InfoDetail> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  widget.title!,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              if (widget.image != null) widget.image!,
              if (widget.deskripsi != null)
                ...List<Widget>.generate(
                    widget.deskripsi!.length,
                    (index) => Text(
                          "\n\t\t\t\t\t\t\t\t\t\t\t\t\t\t\t${widget.deskripsi![index]}",
                          textAlign: TextAlign.justify,
                        )).toList(),
              SizedBox(
                height: 70,
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () => {
              if (!widget.isLarge)
                Get.back()
              else if (widget.callback != null)
                widget.callback!()
            },
            backgroundColor: Colors.red,
            child: Icon(Icons.arrow_back_rounded),
          ),
        ),
      ],
    );
  }
}
