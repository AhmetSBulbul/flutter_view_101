import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 6,
                  color: Colors.blue,
                ),
                Expanded(
                  child: SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("08.01.2022"),
                                  Text(
                                    "Saturday",
                                    style:
                                        Theme.of(context).textTheme.titleLarge,
                                  )
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.chevron_left)),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.chevron_right)),
                                ],
                              )
                            ],
                          ),
                          Expanded(
                            child: ListView.builder(
                              itemBuilder: (context, index) => ListTile(
                                leading: Container(
                                  color: Colors.blue,
                                  width: 24,
                                  height: 24,
                                ),
                                title: Text(index.toString()),
                              ),
                              itemCount: 8,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 2.2,
                  color: Colors.blue,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24.0),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border:
                              Border.all(color: Colors.blueGrey, width: 0.5)),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
