import 'dart:html';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'data_buku.dart';
import 'list_buku.dart';

class DetailpageBuku extends StatelessWidget {
  final BooksData detailbuku;
  const DetailpageBuku({Key? key, required this.detailbuku}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.book),
          title: Text(detailbuku.title),
          backgroundColor: Color.fromARGB(255, 96, 96, 96),
        ),
        body: SingleChildScrollView(
          
          child: Column(
            children: [
            SizedBox(
              height: 450,
              width: 3000,
              child: Image.network(detailbuku.imageLinks),
            ),
            Padding(
              padding: EdgeInsets.only(top:2),
              child: Padding(
                padding: EdgeInsets.all(16),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Divider(thickness: 1, color: Colors.black,),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Penulis : " + detailbuku.authors[0],
                          style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              "\Kategori Buku :   " + detailbuku.categories.toString(),
                              style: TextStyle(
                                fontWeight: FontWeight.w400, fontSize: 15
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children : [
                      Icon(Icons.person_pin),
                      Row(
                        children: [
                          Text(" Publisher   :  " + detailbuku.publisher.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 15
                          ),
                        ),
                        ],
                      )
                    ]
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children : [
                      Icon(Icons.calendar_month),
                      Row(
                        children: [
                          Text(" Hari Buka  :  " + detailbuku.publishedDate.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 15
                          ),
                        ),
                        ],
                      )
                    ]
                  ),
                  SizedBox(height: 3,),
                  Row(
                    children : [
                      Icon(Icons.timelapse),
                      Row(
                        children: [
                          Text(" Link  :  ",
                          style: TextStyle(
                            fontWeight: FontWeight.w200, fontSize: 15
                          ),
                        ),
                        ],
                      ),
                      // ElevatedButton(onPressed: (){
                      //   _LunchURL(detailbuku.previewLink);
                      // }, child: Text("Preview Link"))
                    ]
                  ),
                  Text(detailbuku.previewLink.toString(), style : TextStyle(fontWeight: FontWeight.w200, fontSize:10) ),
                  SizedBox(height: 15,),
                  Text(
                    "Deskripsi",
                    style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 17
                      ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    detailbuku.description.toString(),
                    style: TextStyle(
                          fontWeight: FontWeight.w100, fontSize: 14
                      ),
                  ),
            ]  ),
            )
            ) 
          ],
          ),
        ),
      ),
    );
  }
}

// void _LunchURL(Url) async{
//   if (!await )
// }