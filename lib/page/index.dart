import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:listview_7/page/detail.dart';

import '../model/candi.dart';

bool isLargeScreen(BuildContext context) {
  if (MediaQuery.of(context).size.width >= 992) {
    return true;
  }
  return false;
}

class TitleController extends GetxController {
  RxList<String> titles = <String>[].obs;
  List<String> baseData = [];
  initData(List<String>? data) {
    if (data != null) baseData = data;
    titles = baseData.obs;
    update();
  }

  append(String s) => titles.add(s);
  getTitles() => titles;

  find(String s) {
    titles.clear();
    initData(baseData);
    titles.value = titles
        .where((e) => e.toLowerCase().contains(s.toLowerCase()))
        .toList()
        .obs;
    update();
  }
}

class IndexPage extends StatefulWidget {
  IndexPage({Key? key, required this.candi}) : super(key: key);
  final List<Candi> candi;

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  final TitleController _titles = Get.put(TitleController());
  bool isOpeningDetail = false;
  int indexCandi = -1;

  @override
  void initState() {
    _titles.initData(widget.candi.map((e) => e.getTitle().toString()).toList());
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          child: Container(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              onChanged: ((value) => _titles.find(value)),
              decoration: InputDecoration(
                icon: Icon(Icons.search_rounded),
                hintText: 'Cari',
              ),
            ),
          ),
        ),
        Expanded(
          child: Container(
            margin: EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (!isOpeningDetail && !isLargeScreen(context))
                  Expanded(
                    child: Obx(
                      () => ListView.builder(
                        itemCount: _titles.getTitles().length,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: EdgeInsets.fromLTRB(0.0, 4.0, 0.0, 4.0),
                            child: ListTile(
                              title: Text(_titles.getTitles()[index]),
                              tileColor: indexCandi != -1 &&
                                      widget.candi[indexCandi].getTitle() ==
                                          _titles.getTitles()[index]
                                  ? Colors.red
                                  : Colors.grey[900],
                              leading: Icon(Icons.build_circle_rounded),
                              trailing: Icon(Icons.favorite_border_rounded),
                              onTap: () => {
                                setState(() => {
                                      // indexCandi = index,
                                      indexCandi = widget.candi
                                          .map((e) => e.getTitle())
                                          .toList()
                                          .indexOf(_titles.getTitles()[index]),
                                      isOpeningDetail = true,
                                    }),
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                if (isOpeningDetail)
                  Container(
                      margin: EdgeInsets.fromLTRB(8.0, 4.0, 4.0, 0.0),
                      width: isLargeScreen(context)
                          ? 450
                          : MediaQuery.of(context).size.width - 28,
                      child: InfoDetail(
                        isLarge: true,
                        title: widget.candi[indexCandi].getTitle(),
                        deskripsi: widget.candi[indexCandi].getDeskripsi(),
                        image: widget.candi[indexCandi].getImage(),
                        callback: (() => setState(() => {
                              isOpeningDetail = false,
                              indexCandi = -1,
                            })),
                      )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
