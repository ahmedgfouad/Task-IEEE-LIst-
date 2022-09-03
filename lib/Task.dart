import 'package:flutter/material.dart';

class Task extends StatelessWidget {

  List image=['images/img1.jpg','images/img2.jpg','images/img3.jpg'];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text('Gallery',
        style: TextStyle(
          fontSize: 25,
          color: Colors.grey,
          fontWeight: FontWeight.w500
        ),
        ),
        centerTitle: true,
      ),
        body:GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          children: List.generate(20, (index){
            return Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25)
              ),
              child: Image.asset(image[index % image.length],
                fit: BoxFit.cover,
              ),
            );
          }),
        )

    );
  }
}

