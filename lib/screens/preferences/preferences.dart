// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, unused_import, avoid_print

import 'package:flutter/material.dart';
import '../../mock/TasteList.dart';

class PreferenceScreen extends StatefulWidget {
  const PreferenceScreen({Key? key}) : super(key: key);

  @override
  State<PreferenceScreen> createState() => _PreferenceScreenState();
}

class _PreferenceScreenState extends State<PreferenceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFF8F3),
      padding: EdgeInsets.symmetric(vertical: 15),
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Choose your taste',
                  style: TextStyle(
                      color: Colors.black,
                      decoration: TextDecoration.none,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  'Select 3 or more product genres you like',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w100,
                      decoration: TextDecoration.none,
                      fontSize: 13),
                ),
              ),
            ),
            SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height -
                    (MediaQuery.of(context).size.height * 0.2),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: _TasteCategory(context),
                )),
            Positioned(
                child: Container(
              width: double.infinity,
              height: 20,
              child: InkWell(
                onTap: () => {},
                child: Text("hey"),
              ),
            ))
          ],
        ),
      ),
    );
  }
}

_TasteCategory(BuildContext context) {
  return MediaQuery.removePadding(
    context: context,
    removeTop: true,
    child: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: tasteList.length,
        itemBuilder: (BuildContext context, int index) {
          final item = tasteList[index];
          return _CardComponent(item.url, item.title, item.color);
        }),
  );
}

_CardComponent(url, title, color) {
  return Column(
    children: [
      Expanded(
        flex: 5,
        child: Container(
            width: 120,
            height: 150,
            margin: EdgeInsets.symmetric(vertical: 3.0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: color, borderRadius: BorderRadius.circular(10)),
            child: Image.network(
              url,
              fit: BoxFit.cover,
            )),
      ),
      Expanded(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.black,
              decoration: TextDecoration.none,
              fontWeight: FontWeight.w600,
              fontSize: 15),
        ),
      )
    ],
  );
}
