import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final List<String> items = List.generate(10, (index) => 'Item $index');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Score Board',
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          
          backgroundColor: Colors.black,
          title: Text('Score Board',style: TextStyle(
            color: Colors.white,
          ),),
        ),
        body: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.black,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Builder(
                                builder: (context) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CircleAvatar(
                                        radius: 45,
                                        backgroundColor: Colors.white,
                                        child: Text(
                                          '2',
                                          style: TextStyle(
                                            fontSize: 30,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black
                                          ),
                                        ),
                                      ),
                                      Text('name',style: TextStyle(color: Colors.white),)
                                    ],
                                  );
                                }
                              ),
                              Column(
                                children: [
                                  CircleAvatar(
                                    radius: 50,
                                    backgroundColor: Colors.white,
                                    child: Text(
                                      '1',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,color: Colors.black
                                      ),
                                    ),
                                  ),
                                  Text('name',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 45,
                                    backgroundColor: Colors.white,
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black
                                      ),
                                    ),
                                  ),
                                  Text('name',style: TextStyle(color: Colors.white),)
                                ],
                              ),
                            ],
                          ),
                          
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 240,
              bottom: 0,
              left: 0,
              right: 0,
              child: ListView.separated(
                itemCount: items.length,
                separatorBuilder: (BuildContext context, int index) => Divider(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 8,right: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Color.fromARGB(255, 20, 19, 19)),
                        color: Color.fromARGB(255, 55, 54, 54),
                      ),
                      child: ListTile(
                        title: Text('${items[index]}',
                        style: TextStyle(
                          color: Colors.teal
                        ),),
                        trailing: Text('score',
                        style: TextStyle(color: Colors.teal),),
                        leading: CircleAvatar(radius: 20,
                                backgroundColor: Colors.white,
                                child: Text(
                                  'A',
                                  
                                ),),
                        subtitle: Text('Item $index'),
                        tileColor: Colors.blue[50],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
