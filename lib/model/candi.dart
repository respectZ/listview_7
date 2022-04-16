import 'package:flutter/material.dart';

class Candi {
  String title;
  List<String> deskripsi;
  Image image;
  Candi({required this.title, required this.deskripsi, required this.image});
  getTitle() => "Candi ${title}";
  getDeskripsi() => deskripsi;
  getImage() => image;
}
