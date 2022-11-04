import 'package:flutter/material.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class Staggeredgrid extends StatelessWidget {
  final List<StaggeredTile> _cardTile = const <StaggeredTile>[
    StaggeredTile.count(2, 2),
    StaggeredTile.count(2, 1),
    StaggeredTile.count(3, 3),
    StaggeredTile.count(3, 2),
    StaggeredTile.count(1, 4),
  ];

  final List<Widget> _listTile = <Widget>[
    BackgroundTile(
      iconData: Icons.icecream_sharp,
      backgroundcolor: Colors.yellow,
    ),
    BackgroundTile(
      iconData: Icons.ice_skating,
      backgroundcolor: Colors.indigo,
    ),
    BackgroundTile(
      iconData: Icons.imagesearch_roller,
      backgroundcolor: Colors.red,
    ),
    BackgroundTile(
      backgroundcolor: Colors.yellowAccent,
      iconData: Icons.wallet_giftcard,
    ),
    BackgroundTile(
      backgroundcolor: Colors.greenAccent,
      iconData: Icons.ice_skating_rounded,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.count(
        crossAxisCount: 4,
        staggeredTiles: _cardTile,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        children: _listTile,
      ),
    );
  }
}

class BackgroundTile extends StatelessWidget {
  final IconData iconData;
  final Color backgroundcolor;

  BackgroundTile({required this.backgroundcolor, required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundcolor,
      child: Icon(iconData,color: Colors.white,),
    );
  }
}
