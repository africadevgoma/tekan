import 'package:flutter/material.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: NestedScrollView(
        scrollDirection: Axis.vertical,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: MediaQuery.of(context).size.height / 3 - 60,
              floating: false,
              pinned: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  "Pub",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                background: Image.network(
                    'https://i.gaw.to/vehicles/photos/40/22/402217-2020-tesla-model-s.jpg?1024x640'),
              ),
            ),
          ];
        },
        body: GridView.builder(
            padding: EdgeInsets.only(left: 8, right: 8, top: 6),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 8 / 11,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                elevation: 0,
                child: Center(
                  child: Text("N-$index"),
                ),
              );
            }),
      ),
    );
  }
}
