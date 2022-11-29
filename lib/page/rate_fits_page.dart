import 'package:flutter/material.dart';

class RateFitsPage extends StatefulWidget {
  const RateFitsPage({Key? key}) : super(key: key);

  // final String title;

  @override
  State<RateFitsPage> createState() => _RateFitsPageState();
}

class _RateFitsPageState extends State<RateFitsPage> {
  void submitRatingDialog(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text("Rating and Review Submitted!"),
      content: Text(
          "The rating and review you have entered for this fit have been submitted. "),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

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
          title: Text("Rate Fits"),
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
                        "https://images.squarespace-cdn.com/content/v1/61dcd32b3fb8bb4b5af9b560/1641943074783-6DZQV2OKAEY0G31SDH4O/image-asset.jpeg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Wearing this to the first day of the semester!",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText:
                                "Enter a review and/or comments about this fit."),
                        maxLines: 1),
                    Text("Enter a Rating",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                      value: _value1,
                      label: _value1.toString(),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      },
                    ),
                    MaterialButton(
                        color: Color.fromARGB(255, 42, 146, 7),
                        child: const Text("Submit Rating/Review",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          submitRatingDialog(context);
                        }),
                    SizedBox(
                      height: 80,
                    ),
                    Image.network(
                        "https://cdn.cliqueinc.com/posts/188378/easy-outfit-ideas-188378-1584742149000-image.700x0c.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Denim on denim for my trip to NYC!",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText:
                                "Enter a review and/or comments about this fit."),
                        maxLines: 1),
                    Text("Enter a Rating",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                      value: _value1,
                      label: _value1.toString(),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      },
                    ),
                    MaterialButton(
                        color: Color.fromARGB(255, 42, 146, 7),
                        child: const Text("Submit Rating/Review",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          submitRatingDialog(context);
                        }),
                    SizedBox(
                      height: 80,
                    ),
                    Image.network(
                        "https://outfittrends.b-cdn.net/wp-content/uploads/2022/01/fashion-trends-for-men-19.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Baggy pants.",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText:
                                "Enter a review and/or comments about this fit."),
                        maxLines: 1),
                    Text("Enter a Rating",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                      value: _value1,
                      label: _value1.toString(),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      },
                    ),
                    MaterialButton(
                        color: Color.fromARGB(255, 42, 146, 7),
                        child: const Text("Submit Rating/Review",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          submitRatingDialog(context);
                        }),
                    SizedBox(
                      height: 80,
                    ),
                    Image.network(
                        "https://images.complex.com/complex/image/upload/c_fill,dpr_auto,f_auto,fl_lossy,g_face,q_auto,w_1280/laagtb2oazbe65nftxeh.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("How does my red carpet outfit look?",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText:
                                "Enter a review and/or comments about this fit."),
                        maxLines: 1),
                    Text("Enter a Rating",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                      value: _value1,
                      label: _value1.toString(),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      },
                    ),
                    MaterialButton(
                        color: Color.fromARGB(255, 42, 146, 7),
                        child: const Text("Submit Rating/Review",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          submitRatingDialog(context);
                        }),
                    SizedBox(
                      height: 80,
                    ),
                    Image.network(
                        "https://flyingcdn-e81424e1.b-cdn.net/wp-content/uploads/2019/11/cooloutfits11.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Does this shirt/pants combo go together?",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText:
                                "Enter a review and/or comments about this fit."),
                        maxLines: 1),
                    Text("Enter a Rating",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                      value: _value1,
                      label: _value1.toString(),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      },
                    ),
                    MaterialButton(
                        color: Color.fromARGB(255, 42, 146, 7),
                        child: const Text("Submit Rating/Review",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          submitRatingDialog(context);
                        }),
                    SizedBox(
                      height: 80,
                    ),
                    Image.network(
                        "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/outfit-ideas-jeans-crop-top-cardigan-1614267459.png"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Does this purse go with this outfit?",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText:
                                "Enter a review and/or comments about this fit."),
                        maxLines: 1),
                    Text("Enter a Rating",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                      value: _value1,
                      label: _value1.toString(),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      },
                    ),
                    MaterialButton(
                        color: Color.fromARGB(255, 42, 146, 7),
                        child: const Text("Submit Rating/Review",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          submitRatingDialog(context);
                        }),
                    SizedBox(
                      height: 80,
                    ),
                    Image.network(
                        "https://outfittrends.b-cdn.net/wp-content/uploads/2014/08/Black-men-Fashion-Ideas.jpg"),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Wearing this suit to my friend's wedding.",
                        style: TextStyle(fontSize: 15, color: Colors.black)),
                    SizedBox(
                      height: 30,
                    ),
                    TextField(
                        decoration: InputDecoration(
                            hintStyle: TextStyle(color: Colors.grey),
                            hintText:
                                "Enter a review and/or comments about this fit."),
                        maxLines: 1),
                    Text("Enter a Rating",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    Slider(
                      min: 0,
                      max: 10,
                      divisions: 10,
                      value: _value1,
                      label: _value1.toString(),
                      onChanged: (value) {
                        setState(() {
                          _value1 = value;
                        });
                      },
                    ),
                    MaterialButton(
                        color: Color.fromARGB(255, 42, 146, 7),
                        child: const Text("Submit Rating/Review",
                            style: TextStyle(
                                color: Colors.white70,
                                fontWeight: FontWeight.bold)),
                        onPressed: () {
                          submitRatingDialog(context);
                        }),
                    SizedBox(
                      height: 80,
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
