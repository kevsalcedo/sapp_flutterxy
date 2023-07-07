import 'package:flutter/material.dart';
import '../../utils/app_styles.dart';
import '../widgets/store_item.dart';

class StoreScreen extends StatelessWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 170.0,
            collapsedHeight: 90.0,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Store name"),
              centerTitle: true,
              background: Image(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/hierbabuena_leaves.jpg"),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: 70,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.all(10),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image(
                            image: AssetImage(
                                "assets/images/medical_plants_store.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Card(
                          elevation: 0,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              // color: Styles.bgColor,
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 3),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: 85,
                                    child: Card(
                                      color: Styles.bgColor,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              '4.5 (420)',
                                              style: TextStyle(
                                                color: Colors.grey[800],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    child: Card(
                                      color: Styles.bgColor,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.monetization_on_outlined,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              '\$ 5.000',
                                              style: TextStyle(
                                                color: Colors.grey[800],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 85,
                                    child: Card(
                                      color: Styles.bgColor,
                                      child: Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        child: Column(
                                          children: [
                                            Icon(
                                              Icons.watch_later_outlined,
                                              color: Colors.grey,
                                            ),
                                            Text(
                                              '5 min',
                                              style: TextStyle(
                                                color: Colors.grey[800],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                StoreItem(),
                StoreItem(),
                StoreItem(),
                StoreItem(),
                StoreItem(),
                StoreItem(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
