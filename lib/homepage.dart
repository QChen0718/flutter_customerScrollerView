import 'package:flutter/material.dart';
import 'package:flutter_app_scrollview_test/searchpage.dart';

class HomePage extends StatefulWidget{
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Stack(
        children: [
          new Container(
            margin: EdgeInsets.only(top: 44),
            padding: EdgeInsets.only(left: 10,right: 10,bottom: 10),
            child: new Column(
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Row(
                    children: [
                      Text(
                        '浦东新区服务商',
                        style: TextStyle(
                            color: Color(0xff202020),
                            fontSize: 16,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      new Container(
                        child: Image.asset(
                          '',
                          width: 12,
                          height: 12,
                        ),
                      )
                    ],
                  ),
                ),
                new GestureDetector(
                  onTap: (){
                    print("输出");
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SearchPage()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 10),
                    height: 32,
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 20),
                          child: Image.asset(
                            '',
                            width: 17,
                            height: 16,
                          ),
                        ),
                        new Expanded(
                            child: new Text(
                              '搜索商品',
                              style: TextStyle(
                                  color: Color(0xff888888),
                                  fontSize: 14
                              ),
                            )
                        )
                      ],
                    ),
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: Color(0xffF3CA84),
                            width: 2
                        ),
                        borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                )
              ],
            ),
          ),
           new Container(
             margin: EdgeInsets.only(top: 118),
             padding: EdgeInsets.only(bottom: 30),
             child: new CustomScrollView(
               slivers: [
                 SliverToBoxAdapter(
                   child: new Container(
                     height: 116,
                     margin: EdgeInsets.only(left: 8,right: 8,bottom: 8),
                     decoration: BoxDecoration(
                         color: Colors.red,
                         borderRadius: BorderRadius.circular(5)
                     ),
                   ),
                 ),
                 SliverToBoxAdapter(
                   child: Container(
                     height: 180,
                      padding: EdgeInsets.only(left: 8,right: 8,bottom: 8),
                      child: GridView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: false,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 11,
                          crossAxisSpacing: 5,
                          childAspectRatio: 40/35
                        ),
                        children: List.generate(17, (index){
                          return Container(
                            color: Colors.yellow,
                            child: Text(
                              index.toString()
                            ),
                          );
                        }
                        ),
                      ),
                   ),
                 ),
                 SliverPadding(
                     padding: EdgeInsets.only(left: 8,right: 8),
                   sliver:
                   SliverGrid.count(
                     crossAxisCount: 2,
                     mainAxisSpacing: 6,
                     crossAxisSpacing: 7,
                     childAspectRatio: 176/240,
                     children: List.generate(18, (index){
                       return Container(
                         color: Colors.red,
                       );
                     }),
                   ),
                 )
               ],
             ),
           ),
        ],
      ),
    );
  }
}