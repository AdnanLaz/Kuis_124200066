import 'package:flutter/material.dart';
import 'package:kuis_124200066/detail_buku.dart';
import 'data_buku.dart';

class DataBuku extends StatefulWidget {
  const DataBuku({Key? key}) : super(key: key);

  @override
  _DataBuku createState() => _DataBuku();
}

class _DataBuku extends State<DataBuku>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 9,
        itemBuilder: (context, index){
          final BooksData listbuku = booksData[index];
          return Card(
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context){
                return DetailpageBuku(detailbuku: listbuku);
              }));
              },
            child: Column(
              children: [
                Container(
                  height: 140,
                  width: double.infinity,
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  image: DecorationImage(
                    image: NetworkImage(listbuku.imageLinks),
                    fit: BoxFit.cover,
                  ),
                ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 10,
                ),
                height: 80,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      listbuku.title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                    Row(
                      children: [
                        Icon(Icons.date_range_outlined, size: 15,),
                        Text(
                          listbuku.publishedDate.toString(),
                          style: TextStyle(fontSize: 10),
                        )
                      ],
                    ),
                    
              ],
            ),
                ),
              ],
            ),
            ),
          );
        }
      ),
    );
  }
}