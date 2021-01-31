

import 'package:flutter/material.dart';

class FilterView extends StatefulWidget{
  @override
  _FilterViewState createState() => _FilterViewState();
}
class _FilterViewState extends State<FilterView>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      height: 268,
      child:Column(
        children: [
          Container(
            height: 204,
            child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  childAspectRatio: 4
                ),
                children: List.generate(10, (index){
                  return Container(
                    child: Row(
                      children: [
                        Offstage(
                          offstage: false,
                          child: Image.asset(
                            '',
                          ),
                        ),
                        Expanded(
                            child: Text(
                              '马牌 （Continenta..',
                              style: TextStyle(
                                color: Color(0xff606060),
                                fontSize: 14
                              ),
                            )
                        )
                      ],
                    ),
                  );
                }),
            ),
          ),
          Container(

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    width: 160,
                    padding: EdgeInsets.only(top: 8,bottom: 8),
                    child: Text(
                      '重置',
                      style: TextStyle(
                          color: Color(0xff373737),
                          fontSize: 14
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(19)),
                        border: Border.all(
                            color: Color(0xffB6B6B6),
                            width: 0.5
                        )
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    width: 160,
                    padding: EdgeInsets.only(top: 8,bottom: 8),
                    child: Text(
                      '确认',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14
                      ),
                      textAlign: TextAlign.center,
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffDD1A21),
                      borderRadius: BorderRadius.all(Radius.circular(19)),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      decoration: BoxDecoration(
        color: Color(0xffF2F2F2),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(5),
          bottomRight: Radius.circular(5),
        )
      ),
    );
  }
}