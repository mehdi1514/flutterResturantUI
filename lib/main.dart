import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Container(
        padding: EdgeInsets.only(top:32.0, left: 16.0, right: 16.0),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  child: Text(
                    "Chef Parade",
                    style: TextStyle(
                      fontSize: 25,
                      fontFamily: "Didot",
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.menu), onPressed: (){}, color: Colors.black,),
                )
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                border: Border.all(
                  color: Colors.grey,
                  width: 0.0
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "search",
                    border: InputBorder.none
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 15.0,
            ),

            Container(
              height: 25.0,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Today's Special",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Didot',
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Top Selling",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Didot',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Top Picks",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Didot',
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ),
                ],
              ),
            ),

            Expanded(child: Scrollers())
          ],
        ),  
      ),
    );
  }
}

class Scrollers extends StatefulWidget {
  @override
  _ScrollersState createState() => _ScrollersState();
}

class _ScrollersState extends State<Scrollers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: <Widget>[

          Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.45,
              child: ListView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                children: <Widget>[

                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Stack(
                      
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/1.jpg'),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(40.0)
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.025,
                          left: MediaQuery.of(context).size.width * 0.4,
                          child: Icon(Icons.star_border, color: Colors.white,),
                        ),

                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.4,
                          left: MediaQuery.of(context).size.width * 0.05,
                          child: Text(
                            "\$14",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Stack(
                      
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/2.jpg'),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(40.0)
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.025,
                          left: MediaQuery.of(context).size.width * 0.4,
                          child: Icon(Icons.star_border, color: Colors.white,),
                        ),

                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.4,
                          left: MediaQuery.of(context).size.width * 0.05,
                          child: Text(
                            "\$14",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Stack(
                      
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/3.jpg'),
                              fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(40.0)
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.025,
                          left: MediaQuery.of(context).size.width * 0.4,
                          child: Icon(Icons.star_border, color: Colors.white,),
                        ),

                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.4,
                          left: MediaQuery.of(context).size.width * 0.05,
                          child: Text(
                            "\$14",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.0
                            ),
                          ),
                        )
                      ],
                    ),
                  ),


                ],
              ),
            ),



            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "Deserts",
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Didot',
                  color: Colors.black,
                  fontWeight: FontWeight.bold
                )
              ),
            ),

            Container(
              height: 200,
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: ListTile(
                      leading: Image.asset('images/4.jpg'),
                      title: Text("Ice Cream"),
                      subtitle: Text("Cost: \$9"),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0,),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)
                    ),
                    child: ListTile(
                      leading: Image.asset('images/5.jpeg'),
                      title: Text("Milk Cocktails"),
                      subtitle: Text("Cost: \$11"),
                      trailing: IconButton(
                        onPressed: (){},
                        icon: Icon(Icons.more_vert),
                      ),
                    ),
                  ),
  
                ],
              ),
            )            

        ],
      ),
    );
  }
}