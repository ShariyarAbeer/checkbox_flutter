import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // List<CheckBoxListTileModel> checkBoxListTileModel =
  //     CheckBoxListTileModel.getUsers();

  bool _checkbox = false;
  bool _checkboxListTile = false;

  bool isOn = false;
  bool isOn2 = false;
  bool isOn3 = false;
  List<bool> isVlue = [false, false, false];

  List data = ['list1', 'list2', 'list3'];
  List todo = [
    {'name': 'Shafin vai', 'adress': '1/25', 'status': false},
    {'name': 'Abeer', 'adress': '2/25', 'status': false},
    {'name': 'Istiaq vai', 'adress': '3/25', 'status': false},
    {'name': 'samia apu', 'adress': '4/25', 'status': false},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox"),
      ),
      body: Column(
        children: [
          new CheckboxListTile(
              activeColor: Colors.pink[300],
              dense: true,
              //font change
              title: new Text(
                "Check all",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              value: _checkbox,
              // secondary: Container(
              //   height: 50,
              //   width: 50,
              //   child: Image.asset(
              //     checkBoxListTileModel[index].img,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              onChanged: _check),
          new CheckboxListTile(
              activeColor: Colors.pink[300],
              dense: true,
              //font change
              title: new Text(
                "Check 1",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              value: isOn,
              // secondary: Container(
              //   height: 50,
              //   width: 50,
              //   child: Image.asset(
              //     checkBoxListTileModel[index].img,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              onChanged: toggle),
          new CheckboxListTile(
              activeColor: Colors.pink[300],
              dense: true,
              //font change
              title: new Text(
                "Check 2",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              value: isOn2,
              // secondary: Container(
              //   height: 50,
              //   width: 50,
              //   child: Image.asset(
              //     checkBoxListTileModel[index].img,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              onChanged: toggle2),
          new CheckboxListTile(
              activeColor: Colors.pink[300],
              dense: true,
              //font change
              title: new Text(
                "Check 3",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 0.5),
              ),
              value: isOn3,
              // secondary: Container(
              //   height: 50,
              //   width: 50,
              //   child: Image.asset(
              //     checkBoxListTileModel[index].img,
              //     fit: BoxFit.cover,
              //   ),
              // ),
              onChanged: toggle3),

          // new ListView.builder(
          //     itemCount: checkBoxListTileModel.length,
          //     itemBuilder: (BuildContext context, int index) {
          //       return new Card(
          //         child: new Container(
          //           padding: new EdgeInsets.all(10.0),
          //           child: Column(
          //             children: <Widget>[
          //               new CheckboxListTile(
          //                   activeColor: Colors.pink[300],
          //                   dense: true,
          //                   //font change
          //                   title: new Text(
          //                     checkBoxListTileModel[index].title,
          //                     style: TextStyle(
          //                         fontSize: 14,
          //                         fontWeight: FontWeight.w600,
          //                         letterSpacing: 0.5),
          //                   ),
          //                   value: checkBoxListTileModel[index].isCheck,
          //                   // secondary: Container(
          //                   //   height: 50,
          //                   //   width: 50,
          //                   //   child: Image.asset(
          //                   //     checkBoxListTileModel[index].img,
          //                   //     fit: BoxFit.cover,
          //                   //   ),
          //                   // ),
          //                   onChanged: (val) {
          //                     itemChange(val, index);
          //                   })
          //             ],
          //           ),
          //         ),
          //       );
          //     }),
        ],
      ),
    );
  }

  void _check(bool value) {
    if (_checkbox == false) {
      setState(() {
        _checkbox = true;
        isOn = true;
        isOn2 = true;
        isOn3 = true;

        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        _checkbox = false;
        isOn = false;
        isOn2 = false;
        isOn3 = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  void toggle(bool value) {
    if (isOn == false) {
      setState(() {
        isOn = true;
        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isOn = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  void toggle2(bool value) {
    if (isOn2 == false) {
      setState(() {
        isOn2 = true;
        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isOn2 = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

  void toggle3(bool value) {
    if (isOn3 == false) {
      setState(() {
        isOn3 = true;
        // textValue = 'Switch Button is ON';
      });
      print('Switch Button is ON');
    } else {
      setState(() {
        isOn3 = false;
        // textValue = 'Switch Button is OFF';
      });
      print('Switch Button is OFF');
    }
  }

//   void itemChange(bool val, int index) {
//     setState(() {
//       checkBoxListTileModel[index].isCheck = val;
//       // checkBoxListTileModel[index].isAll = val;
//     });
//   }
// }

// class CheckBoxListTileModel {
//   int userId;
//   String img;
//   String title;
//   bool isCheck;
//   bool isAll;

//   CheckBoxListTileModel({this.userId, this.img, this.title, this.isCheck});

//   static List<CheckBoxListTileModel> getUsers() {
//     return <CheckBoxListTileModel>[
//       CheckBoxListTileModel(
//           userId: 1,
//           img: 'assets/images/android_img.png',
//           title: "all",
//           isCheck: false),
//       CheckBoxListTileModel(
//           userId: 2,
//           img: 'assets/images/android_img.png',
//           title: "Shafin vai",
//           isCheck: false),
//       CheckBoxListTileModel(
//           userId: 3,
//           img: 'assets/images/flutter.jpeg',
//           title: "Istiaq vai",
//           isCheck: false),
//       CheckBoxListTileModel(
//           userId: 4,
//           img: 'assets/images/ios_img.webp',
//           title: "Shajjath",
//           isCheck: false),
//       CheckBoxListTileModel(
//           userId: 5,
//           img: 'assets/images/php_img.png',
//           title: "Samia apu",
//           isCheck: false),
//       CheckBoxListTileModel(
//           userId: 6,
//           img: 'assets/images/node_img.png',
//           title: "Abeer",
//           isCheck: false),
//     ];
//   }
}
