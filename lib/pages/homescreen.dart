import 'package:flashmart/pages/setting.dart';
import 'package:flutter/material.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Expanded(
              child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 110,
            width: double.infinity,
            decoration:
                BoxDecoration(color: const Color.fromARGB(255, 163, 189, 235)),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Settings(),
                            ));
                      },
                      child: CircleAvatar(
                        child: Icon(Icons.people),
                      ),
                    ),
                    Column(
                      children: [
                        Text('Delivery in 13 Min'),
                        Text('Other - Kharar -Chandigarh')
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      // height: 30,
                      // width: 50,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                      child: Column(
                        children: [Text('Get '), Text('Pass')],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Row(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Icon(
                          size: 20,
                          Icons.search,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'Search', border: InputBorder.none),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Text('Trending Near you'),
          Container(
            width: 120,
            child: Column(
              children: [
                Image.asset(
                  'assets/cola.png',
                  height: 140,
                  //width: 40,
                ),
                Text(
                  'Coca Cola Soft Drink',
                  style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      '500 ml',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹ 40',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 2,
                        right: 2,
                      ),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.red),
                          borderRadius: BorderRadius.all(Radius.circular(5))),
                      child: Text(
                        'Add',
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ))),
    );
  }
}
