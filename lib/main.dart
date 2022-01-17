import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: _without_scaffold(),//const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
class _without_scaffold extends StatelessWidget{

  TextEditingController _txt1 = new TextEditingController();
  TextEditingController _txt2 = new TextEditingController();
  FocusNode fnode1 = FocusNode();
  FocusNode fnode2 = FocusNode();
  FocusNode fnode3 = FocusNode();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello world"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 15.0,
                    spreadRadius: 2.0,
                  ),
                ]
              ),
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: const [
                      Expanded(child: Text("Sr.no")),
                      Expanded(flex: 3,child: Text("Some Text")),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text("1"),
                        ],
                      )),
                      Expanded(flex: 3,child: Text("This is considered an error condition because it indicates that there is content that cannot be seen.or using a scrollable container rather than a Flex, like a ListView.",)),
                    ],
                  ),
                  SizedBox(height: 20,),
                    Row(
                      children: [
                        Flexible(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text("2"),
                          ],
                        ),
                        ),
                        Flexible(
                          flex: 3,
                          fit: FlexFit.loose,child: Container(width:100,child: Text("This is considered an error condition because it indicates that there is content that cannot be seen. If the content is legitimately bigger than the available space, consider clipping it with a ClipRect widget before putting it in the flex, or using a scrollable container rather than a Flex, like a ListView.sssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss",))),
                      ],
                    ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              children: [
                                TextField(
                                  controller: _txt1,
                                  focusNode: fnode1,
                                  onSubmitted: (value){
                                    FocusScope.of(context).requestFocus(fnode2);
                                  },
                                  decoration: const InputDecoration(
                                    hintText: "Enter some text",
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                TextFormField(
                                    controller:_txt2,
                                    focusNode: fnode2,
                                    autovalidateMode: AutovalidateMode.onUserInteraction,
                                    onFieldSubmitted: (value){
                                      FocusScope.of(context).requestFocus(fnode3);
                                    },
                                    validator: (value){
                                      if(value == null || value.isEmpty){
                                        return "Please enter some text";
                                      }
                                      return null;
                                    },
                                  decoration: const InputDecoration(
                                    hintText: "Enter some text",
                                  ),
                                ),
                                const SizedBox(height: 10,),
                                SizedBox(
                                  width: double.infinity,
                                  height: 40,
                                  child: ElevatedButton(
                                    focusNode: fnode3,
                                    onPressed: (){
                                    if(_formKey.currentState!.validate()){
                                            print("Everything is ok");
                                    }
                                  },
                                    child: const Text("Submit"),
                                    style: const ButtonStyle(
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  //_without_scaffold_state createState() => _without_scaffold_state();
}

// class _without_scaffold_state extends State<_without_scaffold>{
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: const[
//         Text("Hello"),
//       ],
//     );
//   }
//
// }
