import "package:flutter/material.dart";
import "package:english_words/english_words.dart";

void main(){
  runApp(const App());
}

class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final randWord = generateWordPairs();
    // TODO: implement build
    return MaterialApp(
      title: "Lifelinesms",
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.deepPurple,
          )
        ),
      home: Home()

    );
  }

}

class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _Home();
  }

}

class _Home extends State<Home>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("LifelineSms"),
        actions: [
          Icon(Icons.message_outlined),
          Icon(Icons.contact_mail_sharp)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Center(
            child:  Text("Salut flutter app revision"),
          ),
        ),
      ),
    );
  }

}