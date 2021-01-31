import 'package:flutter/material.dart';
import 'package:flutter_app_scrollview_test/filterview.dart';

class SearchPage extends StatefulWidget{
  @override
  _SearchPageState createState() => _SearchPageState();
}
class _SearchPageState extends State<SearchPage>{
  List<String> carStatus = ['车型','品牌','胎面宽','扁平比','直径','载重'];
  int selectIndex = -1;
  bool isSelect = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          shadowColor: Colors.transparent,
          leadingWidth: 30,
          title:  Container(
            // margin: EdgeInsets.only(top: 10),
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
        ),
      body:Stack(
        children: [
          Column(
            children: [
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  new Text(
                    '按车型查找',
                    style: new TextStyle(
                        color: Color(0xff373737),
                        fontSize: 14
                    ),
                  ),
                  new Text(
                    '按VIN码查找',
                    style: new TextStyle(
                        color: Color(0xff373737),
                        fontSize: 14
                    ),
                  )
                ],
              ),
              new Container(
                  color: Colors.white,
                  height: 44,
                  padding: EdgeInsets.only(left: 10,top: 8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Wrap(
                      spacing: 10,
                      children: List.generate(carStatus.length, (index){
                        return GestureDetector(
                          onTap: (){
                            setState(() {
                              if(selectIndex != index){
                                selectIndex = index;
                                isSelect = true;
                              }else {
                                selectIndex = -1;
                                isSelect = false;
                              }
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.only(left: 10,right: 10),
                            child:new Column(
                              children: [
                                new Row(
                                  children: [
                                    new Container(
                                      child: Text(
                                        carStatus[index],
                                        style: new TextStyle(
                                          color: Color(0xff606060),
                                          fontSize: 13,
                                        ),
                                      ),
                                    ),
                                    new Icon(
                                        Icons.arrow_drop_down
                                    )
                                  ],
                                ),
                                new Offstage(
                                  offstage: selectIndex == index?false:true,
                                  child:new Container(
                                    height: 12,
                                    color: Color(0xffF2F2F2),
                                  ) ,
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                borderRadius:  selectIndex == index? BorderRadius.only(topLeft: Radius.circular(14),topRight: Radius.circular(14)): BorderRadius.circular(14),
                                color: Color(0xffF2F2F2)
                            ),
                          ),
                        );
                      }),
                    ),
                  )
              ),
              new Expanded(
                  child: GridView(
                    padding: EdgeInsets.only(left: 8,right: 8,bottom: 30),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 7,
                        crossAxisSpacing: 6,
                        childAspectRatio: 176/240
                    ),
                    children: List.generate(20, (index){
                      return Container(
                        color: Colors.red,
                      );
                    }),
                  )
              ),
            ],
          ),
          Offstage(
            offstage: !isSelect,
            child: Container(
              margin: EdgeInsets.only(top: 64),
              child: FilterView(),
            ),
          )
        ],
      ),

    );
  }
}