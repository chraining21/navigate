import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
const items = <String>['生日','你在哪裡','放大一下','複製人','打電話','統計一下','wifi還好嗎','傳個簡訊','我很好'];
const items_ = <String>['May10th','秘密基地','不要','哈哈','喂?','好難','不太好','I\'m fine','是喔'];
const sub_ = <String>['誕生的日子','Where are you','Zoom in','copycat','payphone','Statistics','你是我的Wifi','text me','good'];
var icons = <IconData>[Icons.cake,
  Icons.add_location_sharp,
  Icons.zoom_in_outlined,
  Icons.auto_awesome_motion,
  Icons.call_end_sharp,
  Icons.equalizer_rounded,
  Icons.wifi_lock,
  Icons.mail,
  Icons.accessibility_new_outlined];


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);
  static const String _title = 'hello hello hello';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title),backgroundColor: Colors.amber,),
        body: v_(),
      ),
    );
  }
}
class v_ extends StatefulWidget {   // 把MyHomePage設為一個StatefulWidget
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return view_();
  }
}
class  view_ extends State<v_>{
  String a = "hello";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:
      SingleChildScrollView(
        child:Column(
          children: <Widget>[
            Container(
              child:Text(this.a,style: TextStyle(fontSize: 30),),
              color: Colors.amberAccent,
              width: double.infinity,
              alignment: Alignment.center,
            ),
            ListView.separated(
              itemBuilder: (context, index) =>
                  Card(
                    child: ListTile(
                      title: Text(items[index],style: TextStyle(fontSize: 20),),
                      onTap: ()=>Fluttertoast.showToast(
                          msg: items_[index],
                          toastLength: Toast.LENGTH_SHORT,
                          gravity: ToastGravity.BOTTOM,
                          backgroundColor: Colors.red,
                          textColor: Colors.white,
                          fontSize: 16.0
                      ),
                      leading: Container(
                        height: 50,
                        width:50,
                        child:Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          ),
                          child: Icon(icons[index],),
                          alignment: Alignment.center,
                        ),
                        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 5),
                      ),
                      subtitle: Text(sub_[index],style: TextStyle(fontSize: 16),),
                    ),
                  ),
              separatorBuilder: (context,index)=>Divider(),
              itemCount: items.length,
              shrinkWrap: true,
            ),
          ],
        ),
      ),
    );
  }
}