// import 'dart:async';
// import 'dart:io';
// import 'package:xml/xml.dart';

// Future<List<XmlElement>> loadKmlFile(String path) async {
//   final file = File(path);
//   final xmlString = await file.readAsString();
//   final document = XmlDocument.parse(xmlString);
//   final placemarks = document.findAllElements('Placemark');
//   return placemarks.toList();
// }
