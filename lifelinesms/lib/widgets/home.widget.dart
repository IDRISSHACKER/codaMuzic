import "package:flutter/material.dart";

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

    const logoUrl = "images/favicon.png";
    bool pressed = false;

    return Scaffold(
      appBar: AppBar(
        leading: Image.asset("images/favicon.png", fit: BoxFit.cover),
        title: const Text("Lifelesms.org"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child:  Card(
            elevation: 5.0,
            margin: const EdgeInsets.all(4.0),
            child: Center(
              child: Container(
                margin: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("images/favicon.png", fit: BoxFit.cover),
                      const Text("Welocome to lifeline", textScaleFactor: 10.0, style: TextStyle(
                        fontSize: 2
                      )),
                      ButtonTheme(child: ElevatedButton.icon(onPressed: (){
                        setState((){
                          print("Hello word");
                          pressed = !pressed;
                        });
                      }, icon: Icon(Icons.contact_mail), label: Text( "Veillez confirmer", textScaleFactor: 1.2,
                      )
                      ),
                        minWidth: 200.0,
                        height: 200.0,
                      )
                    ],
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: newSms,
        child: Icon(Icons.message),
      ),
    );
  }

}

void newSms(){
  print("Nouveau message");
}