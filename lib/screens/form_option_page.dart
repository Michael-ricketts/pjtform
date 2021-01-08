import 'package:flutter/material.dart';

class FormOptionPage extends StatefulWidget {

  final _formKey = GlobalKey<FormState>();
  final _usernameController  = TextEditingController();
  final _passwordController = TextEditingController();

  @override 
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text("Form Option"),
          ),
          body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
              Image.asset("assets/image/jeep_smoky_mt.jpg",
              fit: BoxFit.cover,

              ),
            
          SingleChildScrollView(
    
           child: Form( 
              key: _formKey,
              child: Center(
             child: Padding(
               padding: const EdgeInsets.all(16.0) 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                  TextFormField(
                    controller: _usernameController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: "Username",
                      labelText: "Enter Email"
                         ),
                     ),
                    //input a form here
                 ],
               ),
             )
            ),
          ),
        ),
       ],
      ),
    );
      
  }
}