import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int lastSelectedValue;

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: const Text('CupertinoAlertDialog'),
      ),
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup<String>(
              context: context,
              builder: (BuildContext context) {
                return _buildBottomPicker(CupertinoPicker(
                  onSelectedItemChanged: (value) {
                    setState(() {
                      lastSelectedValue = value;
                    });
                  },
                  itemExtent: 32.0,
                  children: const [
                    Text("選択肢1"),
                    Text("選択肢2"),
                    Text("選択肢3"),
                    Text("選択肢4"),
                    Text("選択肢5"),
                  ],
                ));
              },
            );
          },
          child: const Text('開く'),
        ),
      ),
    );
  }

  Widget _buildBottomPicker(Widget picker) {
    return Container(
      height: 216,
      padding: const EdgeInsets.only(top: 6.0),
      color: CupertinoColors.white,
      child: DefaultTextStyle(
        style: const TextStyle(
          color: CupertinoColors.black,
          fontSize: 22.0,
        ),
        child: GestureDetector(
          onTap: () {},
          child: SafeArea(
            top: false,
            child: picker,
          ),
        ),
      ),
    );
  }
}

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String lastSelectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: const Text('CupertinoAlertDialog'),
//       ),
//       child: Center(
//         child: CupertinoButton(
//           onPressed: () {
//             showCupertinoModalPopup<String>(
//               context: context,
//               builder: (BuildContext context) {
//                 return CupertinoActionSheet(
//                   // constをつけるとCupertinoActionSheetActionでエラー
//                   title: const Text('タイトル'),
//                   message: const Text('メッセージ'),
//                   actions: <Widget>[
//                     CupertinoActionSheetAction(
//                       child: const Text('選択肢1'),
//                       onPressed: () {
//                         Navigator.pop(context, 'selected1');
//                       },
//                     ),
//                     CupertinoActionSheetAction(
//                       child: const Text('選択肢2'),
//                       onPressed: () {
//                         Navigator.pop(context, 'selected2');
//                       },
//                     ),
//                     CupertinoActionSheetAction(
//                       isDestructiveAction: true,
//                       child: const Text('キャンセル'),
//                       onPressed: () {
//                         Navigator.pop(context, 'cancel');
//                       },
//                     ),
//                   ],
//                 );
//               },
//             ).then((String value) {
//               if (value != null) {
//                 setState(() {
//                   lastSelectedValue = value;
//                 });
//               }
//             });
//           },
//           child: const Text('開く'),
//         ),
//       ),
//     );
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   String lastSelectedValue;

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: const Text('CupertinoAlertDialog'),
//       ),
//       child: Center(
//         child: CupertinoButton(
//           onPressed: () {
//             showCupertinoDialog<String>(
//               context: context,
//               builder: (BuildContext context) {
//                 return CupertinoAlertDialog(
//                   title: const Text('タイトル'),
//                   content: const Text('内容'),
//                   actions: <Widget>[
//                     CupertinoDialogAction(
//                       isDestructiveAction: true,
//                       child: const Text('削除'),
//                       onPressed: () {
//                         Navigator.pop(context, 'delete');
//                       },
//                     ),
//                     CupertinoDialogAction(
//                       child: const Text('キャンセル'),
//                       onPressed: () {
//                         Navigator.pop(context, 'cancel');
//                       },
//                     ),
//                   ],
//                 );
//               },
//             ).then((String value) {
//               if (value != null) {
//                 setState(() {
//                   lastSelectedValue = value;
//                 });
//               }
//             });
//           },
//           child: const Text('開く'),
//         ),
//       ),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _MyHomePageState();
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   Duration initialtimer = new Duration();

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: const Text('CupertinoDatePicker'),
//       ),
//       child: Center(
//         child: CupertinoButton(
//           onPressed: () {
//             showCupertinoModalPopup<void>(
//               context: context,
//               builder: (BuildContext context) {
//                 return _buildBottomPicker(
//                   CupertinoTimerPicker(
//                     mode: CupertinoTimerPickerMode.hms,
//                     minuteInterval: 1,
//                     secondInterval: 1,
//                     initialTimerDuration: initialtimer,
//                     onTimerDurationChanged: (Duration changedtimer) {
//                       setState(() {
//                         initialtimer = changedtimer;
//                       });
//                     },
//                   ),
//                   // CupertinoDatePicker(
//                   //   mode: CupertinoDatePickerMode.dateAndTime,
//                   //   initialDateTime: _date,
//                   //   onDateTimeChanged: (DateTime newDateTime) {
//                   //     setState(() => _date = newDateTime);
//                   //   },
//                   // ),
//                 );
//               },
//             );
//           },
//           child: const Text('開く'),
//         ),
//       ),
//     );
//   }

//   Widget _buildBottomPicker(Widget picker) {
//     return Container(
//       height: 216,
//       padding: const EdgeInsets.only(top: 6.0),
//       color: CupertinoColors.white,
//       child: DefaultTextStyle(
//         style: const TextStyle(
//           color: CupertinoColors.black,
//           fontSize: 22.0,
//         ),
//         child: GestureDetector(
//           onTap: () {},
//           child: SafeArea(
//             top: false,
//             child: picker,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   @override
//   _State createState() => _State();
// }

// class _State extends State<MyApp> {
//   double _discreteValue = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Flutter Tutorial - googleflutter.com'),
//       ),
//       body: const Center(//通常のcenter()はむりだが、constなら大丈夫だった　なぜ？できたが？
//         child: CupertinoActivityIndicator(),
//       ),
// body: Column(children: <Widget>[
//   CupertinoSlider(
//     value: _discreteValue,
//     min: 0.0,
//     max: 100.0,
//     divisions: 5,
//     onChanged: (double value) {
//       setState(() {
//         _discreteValue = value;
//       });
//     },
//   ),
//   Text('Cupertino Discrete: $_discreteValue'),
/* ])*/
//     );
//   }
// }

// class _State extends State<MyApp> {
//   bool isSwitched = false;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Flutter Tutorial - googleflutter.com'),
//         ),
//         body: Center(
//           child: CupertinoSwitch(//materialのswitchとサイズが異なる
//             value: isSwitched,
//             onChanged: (bool value) {
//               setState(() {
//                 //setStateはStateの継承クラスでしか使用できない
//                 isSwitched = value;
//                 print(isSwitched);
//               });
//             },
//             activeColor: Colors.orangeAccent,
//           ),
//         ));
//   }
// }

// void main() {
//   runApp(MyApp());
// }

// @override
// Widget build(BuildContext context) {
//   return MyHomePage();
// }
//上記の方法ではStatefulWidgetが大本の子供になってしまいエラーとなる

// class MyApp extends StatelessWidget {
//   Widget build(BuildContext context) {
//     return MaterialApp(home: SegmentedCondtrol());
//   }
// }

// ======================================

// class MyHomePage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() => _MyHomePage();
// }

// class _MyHomePage extends State<MyHomePage> {
//   return SegmentedCondtrol(),
// }

// class SegmentedCondtrol extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoPageScaffold(
//       navigationBar: CupertinoNavigationBar(
//         middle: Text('CupertinoSegmentedControl'),
//       ),
//       child: SizedBox(
//         width: 500,
//         height: 200,
//         child: CupertinoSegmentedControl(
//           children: {
//             0: Text('Action Sheet'),
//             1: Text('Picker'),
//           },
//           onValueChanged: (value) {},
//         ),
//       ),
//     );
//   }
// }

// class _MyHomePage extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       title: 'Hello',
//       home: CupertinoPageScaffold(
//         child: CupertinoTextField(
//           prefix: Icon(CupertinoIcons.mail_solid,
//               color: CupertinoColors.lightBackgroundGray, size: 28.0),
//           padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
//           clearButtonMode: OverlayVisibilityMode.editing,
//           keyboardType: TextInputType.emailAddress,
//           autocorrect: false,
//           decoration: BoxDecoration(
//             border: Border(
//                 bottom: BorderSide(
//                     width: 0.0, color: CupertinoColors.inactiveGray)),
//           ),
//           placeholder: 'Email',
//         ),
//         // child: CupertinoButton.filled(//filledの有無でボタンの背景のあるなし
//         //   child: const Text('With Background'),
//         //   onPressed: () {},
//         // ),
//       ),
//     );
//   }
// }

// ================================================

// class _MyHomePage extends State<MyHomePage> {
//   int _selectedIndex = 0;

//   static const List<Widget> _widgets = <Widget>[
//     Text('Index 0: Home'),
//     Text('Index 1: Business'),
//     Text('Index 2: School'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return CupertinoTabScaffold(
//       //全体の土台
//       tabBuilder: (BuildContext context, int index) {
//         //indexは0からスタート
//         return CupertinoTabView(
//           //下部タブ以外タブが押されるたびに３タブ分を作成している
//           builder: (BuildContext context) {
//             return CupertinoPageScaffold(
//               navigationBar: CupertinoNavigationBar(
//                 middle: Text('Page 1 of tab $index'),
//               ),
//               child: Center(
//                 //真ん中の中心の文字列　上で定義したやつ
//                 child: _widgets.elementAt(
//                     _selectedIndex), //_widgetsの配列から_selectと一致した箱を取り出す
//               ),
//             );
//           },
//         );
//       },
//       tabBar: CupertinoTabBar(
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             title: Text('Home'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.business),
//             title: Text('Business'),
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.school),
//             title: Text('School'),
//           ),
//         ],
//         onTap: _onItemTapped, //tabに数字が割り振られている?
//       ),
//     );
//   }
// }

// ===========================================

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return CupertinoApp(
//       home: CupertinoPageScaffold(
//         child: CustomScrollView( //sliversをやる場合の土台となる部分
//           slivers: <Widget>[
//             //スクロールに伴ってエフェクトなどが発生
//             CupertinoSliverNavigationBar( //sliverAppbarのiOS風デザインver
//               // 「SliverAppBar」はスクロールに応じてヘッダー要素を隠すことができる
//               leading: CupertinoButton(
//                 child: Icon(
//                   Icons.add_alarm,
//                 ),
//                 onPressed: () {},
//               ),
//               largeTitle: Text(
//                 "Title",
//                 style: CupertinoTheme.of(context)
//                     .textTheme
//                     .navLargeTitleTextStyle
//                     .copyWith(
//                       color: Colors.white,
//                     ),
//               ),
//               trailing: CupertinoButton(
//                   child: Icon(
//                     Icons.title,
//                   ),
//                   onPressed: () {}),
//               backgroundColor: Colors.blue,
//               actionsForegroundColor: Colors.white,
//             ),
//             SliverFillRemaining(child: Container( //sliversにエフェクトが起きるほどスクロールしたときにそのbarのしたに現れる
//             )),
//           ],
//         ),

// navigationBar: CupertinoNavigationBar( //スマホ上部のバー
//   leading: CupertinoButton( //nabigationbar leadingが左端
//     child: Icon(
//       Icons.add_alarm, //時計の中に+が入っている
//     ),
//     onPressed: () {},
//   ),
//   middle: Text( //navigationbar middleが真ん中
//     'Title',
//     style: CupertinoTheme.of(context).textTheme.textStyle.copyWith(
//           color: Colors.white,
//         ),
//   ),
//   trailing: CupertinoButton( //navigationbar trailingが右端
//       child: Icon(
//         Icons.title, //Tのアイコン
//       ),
//       onPressed: () {}),
//   backgroundColor: Colors.blue, //navigationvarの色
//   actionsForegroundColor: Colors.white, //アイコンの色
// ),

// child: const Center(child: Text('text')),
//       ),
//     );
//   }
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
