import "package:flutter/material.dart";
import "package:pjtinspection/screens/form_option_page.dart";

class HomePage extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.pink,
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                  Image.asset('assets/images/Jackjpg'),
                    fit: BoxFit.fill
                    )//decoration
                   ),//BoxDecoration
                   child: Stack(
                     children: <Widget>[
                        Positioned(
                         left: 140,
                          width: 80,
                          height: 200,
                          child: Container(
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               Image.asset('assets/images/spanner.jpg'),
                                ) //Decorationimage
                              ), //BoxDecoration
                            ), //Conatiner
                        ), // Positioned
                        Positioned(
                         left: 30,
                          width: 40,
                          height: 1400,
                          child: Container(
                           decoration: BoxDecoration(
                             image: DecorationImage(
                               Image.asset('assets/images/tyre.jpg'),
                                ) //Decoration
                              ), //BoxDecoration
                            ), //Container
                          ), //Positioned
                          Positioned(
                          child: Container(
                            margin: EdgeInsets.only(top: 40),
                            child: Center(
                              child: Text("Pink Jeep Inspection", style: TextStyle(color: Colors.pink[300], fontSize: 40, fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                            )
                        ],
                      ),
                   ),
          
                Padding( 
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Colors.pink[300],
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Color.fromRGBO(143, 148, 251, .2),
                              blurRadius: 20.0,
                              offset: Offset(0, 10),
                            )
                          ]
                        ), //boxShadow
                  
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  border: Border(bottom: BorderSide(color: Colors.black))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: "Email or Phone Number",
                                    hintStyle: TextStyle(color: Colors.black)
                                    ),
                                    ),
                                ),
                                Container(
                                padding: EdgeInsets.all(8.0),
                                child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                    hintText: "Password",
                                    hintStyle: TextStyle(color: Colors.black)             
                                  ),  //inputdecoration

                                ),  //TextField

                              )   //Container

                            ],   //<Widget>

                          ),  //Column

                        ),  //Conatiner
                        SizedBox(height: 30,),
                        Container(
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            gradient: LinearGradient(
                              colors: [
                                Color.fromRGBO(143, 148, 258, 1),
                                Color.fromRGBO(143, 148, 258, .6),
                              ] //color

                           )  //LinearGradient

                         ),

                         child: RaisedButton(
                           child: Text("Login" , style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                           
                            ),
                          onPressed:(){
                             Navigator.push(
                               context,
                               MaterialPageRoute(builder: (context) => FormOptionPage()),
                              
                             );
                           }
                         )

                        ), //Container

                        
                  

                    ],//<widget>

                  ), //column

                ) //padding

             ], //<Widget>

           ), //Column

          ),//Container


     );//scaffold
     
   }
}