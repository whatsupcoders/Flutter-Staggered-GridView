import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class GridPage extends StatefulWidget {

  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        leading: IconButton(icon: Icon(Icons.menu,), onPressed: () {
          //
        }),
        title: Text("Lisa Mathew"),
        actions: <Widget>[
          IconButton(icon: Icon(
              FontAwesomeIcons.pinterest), onPressed: () {
            //
          }),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.0),
            color: Colors.white,
          ),
          child: StaggeredGridView.count(
            crossAxisCount: 4,
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            staggeredTiles: [
              StaggeredTile.count(4, 2),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(4, 1),
              StaggeredTile.count(4, 2),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(1, 1),
              StaggeredTile.count(4, 1),
            ],
            children: <Widget>[
              myPhotoList(
                  "https://images.unsplash.com/photo-1542998967-692be9110b46?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1550496913-b1a19c3779e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1525344387229-da3782d11618?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1531496074234-6db4f0226092?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1522865080725-2a9ea1fcb94e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              captionText("Norway", "Just now"),

              myPhotoList(
                "https://images.unsplash.com/photo-1534546584494-57363237b97f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1521320226546-87b106956014?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1486808044402-a7c67ef5ea7b?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1482076791374-bbc7876d9213?ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60"),
              myPhotoList(
                  "https://images.unsplash.com/photo-1483412919093-03a22057d0d7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              captionText("Mountains", "2 day ago"),

            ],
            padding: const EdgeInsets.all(4.0),
          ),
        ),
      ),

    );
  }

  Widget captionText(String titleText, String subText) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: <Widget>[
            SizedBox(height:20.0),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(titleText,
                  style: TextStyle(color: Colors.black, fontSize: 24.0),),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text(subText,
                  style: TextStyle(color: Colors.blueGrey, fontSize: 16.0),),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget myPhotoList(String MyImages) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: NetworkImage(
              MyImages),
        ),
      ),

    );
  }
}