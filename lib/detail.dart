import 'package:flutter/material.dart';

class Detail extends StatelessWidget{


  final url;
  final title;
  final content;
  final publishedAt;
  final author;
  final urlToImage;

  Detail({
    this.url,
    this.title,
    this.content,
    this.publishedAt,
    this.author,
    this.urlToImage
  });




  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: <Widget>[
          urlToImage != null ? Image.network(urlToImage) :
          Container(
            height: 250,
            color: Colors.grey[200],
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  '$title',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$publishedAt',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
                SizedBox(height: 5,),
                Text('$content'),
                Divider(),
                Text('Author : $author'),
                Text('Sumber : $url'),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

}