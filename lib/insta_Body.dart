import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InstaBody extends StatelessWidget {

  Widget mystory() {
    return Container(
      padding: EdgeInsets.only(left: .5),

      child:
          Column(
            children: <Widget>[
              Stack(
                  overflow: Overflow.visible,
                  children: <Widget>[
                    Container(
                      width: 61,
                      height: 58,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage('images/me.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                        bottom: 0,
                        right: -9,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.white, width: .2
                            ),
                          ),
                          child: Icon(
                            Icons.add, color: Colors.white, size: 18,),
                        )),
                  ]

              ),
              SizedBox(
                height: 5,
              ),
              Text('My Story',
                style: TextStyle(color: Colors.black.withOpacity(.8),),)
            ],
          ),

      );
  }

  Widget story(String name, String pic) {
    return Padding(
      padding: EdgeInsets.only(right: .5),
      child: Column(
        children: <Widget>[
          Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(.5),
                  width: 61,
                  height: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFc05ba6,), width: 2,style: BorderStyle.solid),
                    image: DecorationImage(
                      image: AssetImage(pic),
fit: BoxFit.cover
                    ),
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: -9,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: .2
                        ),
                      ),
                    )),
              ]

          ),
          SizedBox(
            height: 5,
          ),
          Text(
            name, style: TextStyle(color: Colors.black.withOpacity(.8),),)
        ],
      ),
    );
  }/////////////[
  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(16 ),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,

             children: <Widget>[
               mystory(),
               SizedBox(width: 5),
               story('mosalah','images/salah.jpg'), SizedBox(width: 5.15),
               story('realmad..','images/Madrid.jpg'), SizedBox(width: 5.15),
               story('jonsno..','images/johnsnow.jpg'), SizedBox(width: 5.15),
               story('sergio..','images/Ramos.jpg')

             ],
           ),SizedBox(height: 20,),
      Row(
        children: <Widget>[
          Stack(
              overflow: Overflow.visible,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(.5),
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Color(0xFFc05ba6,), width: 2,style: BorderStyle.solid),
                    image: DecorationImage(
                        image: AssetImage('images/pinterest.jpg'),
                        fit: BoxFit.cover
                    ),
                  ),
                ),
              ]

          ),
          SizedBox(
            width: 5,
          ),
          Text(
           'pinterest', style: TextStyle(color: Colors.black.withOpacity(.8),),),
          SizedBox(width: 200,),
          Icon(Icons.more_horiz)
        ],
      ),SizedBox(height: 8,),
          Container(
            child: Image(
              image: AssetImage('images/background.jpg'),
              fit: BoxFit.fill ,
              height: 329,

            ),
          ),

        ],
      ),
    );
  }
}