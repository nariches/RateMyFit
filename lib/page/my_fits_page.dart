import 'package:flutter/material.dart';

class MyFitsPage extends StatefulWidget {
  const MyFitsPage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<MyFitsPage> createState() => _MyFitsPageState();
}

class _MyFitsPageState extends State<MyFitsPage> {
  double _value1 = 5;
  double _value2 = 5;
  double _value3 = 5;
  double _value4 = 5;
  double _value5 = 5;
  double _value6 = 5;
  double _value7 = 5;
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("My Fits"),
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext ctx, int index) {
            return Padding(
              padding: EdgeInsets.all(20),
              child: Card(
                shape: Border.all(
                  width: 0,
                ),
                elevation: 20,
                color: Colors.white,
                child: Column(
                  children: <Widget>[
                    Image.network(
                        "https://media.gq.com/photos/5583cc2909f0bee564425a55/master/w_320%2Cc_limit/copilot-style-celebrities-201311-1384402028274_Matthew-McConaughey-Style-Evolution-02-1996.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Just something casual.",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 50,
                    ),
                    Image.network(
                        "https://media.gq.com/photos/5583cc3e3655c24c6c96e4f0/master/w_409,h_516,c_limit/copilot-style-celebrities-201311-1384402028291_Matthew-McConaughey-Style-Evolution-18-2011-3.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("My fit for USA Today",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 50,
                    ),
                    Image.network(
                        "https://publish.purewow.net/wp-content/uploads/sites/2/2019/12/matthew-mcconaughey-in-green-street-style-look-l.jpg?fit=1360%2C1721"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Out in the city.",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 50,
                    ),
                    Image.network(
                        "https://bamfstyle.com/wp-content/uploads/2015/05/mud-crop1.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("On a beach vacation.",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 50,
                    ),
                    Image.network(
                        "https://www1.pictures.stylebistro.com/bg/Matthew+McConaughey+Tops+T+Shirt+Rip_jlGoUm9l.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("My favorite white t-shirt",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 50,
                    ),
                    Image.network(
                        "http://www.hipstercrite.com/wp-content/uploads/2014/10/matthew-mcconaughey-bongos-02-775x1000.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("In the Bahamas!",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 50,
                    ),
                    Image.network(
                        "https://www1.pictures.zimbio.com/pc/Newlywed+Matthew+McConaughey+looks+bit+sweaty+TFCajZQxfHnx.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Outfit for the gym.",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
            );
          },
          itemCount: 1,
        ),
      );
}
