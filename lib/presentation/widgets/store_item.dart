import 'package:flutter/material.dart';

class StoreItem extends StatelessWidget {
  const StoreItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/store'),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        height: 100,
        width: double.infinity,
        child: Card(
          child: Row(
            children: [
              Container(
                margin: const EdgeInsets.all(10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image(
                    image: AssetImage("assets/images/medical_plants_store.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        //crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Store name',
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          Card(
                            color: Colors.yellow[700],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 0, 3, 0),
                                  child: Icon(Icons.star, color: Colors.yellow),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 0, 6, 0),
                                  child: Text('4.5',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Card(
                            color: Colors.green[100],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 6),
                                  child: Icon(Icons.attach_money,
                                      color: Colors.green),
                                ),
                                Icon(Icons.attach_money, color: Colors.green),
                                Padding(
                                  padding: const EdgeInsets.only(right: 6),
                                  child: Icon(Icons.attach_money,
                                      color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                          Card(
                            color: Colors.grey[700],
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 0, 3, 0),
                                  child: Icon(Icons.motorcycle,
                                      color: Colors.white),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(3, 0, 0, 0),
                                  child: Text('15',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(1, 0, 6, 0),
                                  child: Text('min',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
