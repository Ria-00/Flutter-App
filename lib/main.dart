// import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp( 
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      routes: {'/signup':(context) => SignUp(),},
    ));
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: Center(child: Text('Heyyy Peeppss'))
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: Scaffold(
        appBar: AppBar(title: Center(child:Text('LOGIN') ,) ,backgroundColor: const Color.fromARGB(255, 67, 192, 255),),
        // body: const Center(child: Text('Content',style: TextStyle(fontSize: 34),),),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(children: [
            // Text('SUSTAINIFY',style: TextStyle(fontSize: 34),),
            SizedBox(height: 34,),
            Image.network('https://seeklogo.com/images/F/flutter-logo-5086DD11C5-seeklogo.com.png',height: 200,),
            SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(labelText:'Username:'),
            ),
            // SizedBox(height: 30,),
            TextField(
              decoration: InputDecoration(labelText:'Password:'),obscureText: true,
            ),
            SizedBox(height: 40,),
            ElevatedButton(onPressed: ()=>(), 
              child: Text('Login'),
              style: ElevatedButton.styleFrom(
                elevation: 8.0,
                minimumSize:const Size(350, 50),
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(10)),
                backgroundColor:const Color.fromARGB(255, 67, 192, 255),
                foregroundColor: Color.fromRGBO(255, 255, 255, 1)
                ),),
            SizedBox(height: 20,),
            Text("Forgot Password? Click here",),
            SizedBox(height: 20,),
            TextButton(onPressed: ()=>Navigator.pushNamed(context, '/signup'), child: Text('No Account? Sign Up'),
            style: ElevatedButton.styleFrom(
                minimumSize:const Size(350, 50),
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
                backgroundColor:Color.fromRGBO(147, 149, 150, 1),
                foregroundColor: Color.fromRGBO(18, 18, 18, 1)
                ),)

          ],),),
        ),
      ),
    );
  }  
}

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(primarySwatch: Colors.deepOrange),
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(title: Center(child: Text("SIGN UP",style: TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),),),
        backgroundColor:const Color.fromARGB(255, 67, 192, 255),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(12),
            child: Column(children: [
              SizedBox(height: 20,),
              Text('Create your Account',style: TextStyle(fontWeight: FontWeight.w400),),
              SizedBox(height: 20,),
              Row(children: [
                Flexible(
                  child: TextField(decoration: InputDecoration(labelText: 'Enter First Name')),
                ),
                SizedBox(width: 25,),
                Flexible(
                  child: TextField(decoration: InputDecoration(labelText: 'Enter Last Name')),flex:1,
                ),
              ],),
              TextField(decoration: InputDecoration(labelText: 'Email',hintText: 'abc@domain.com',hintStyle: TextStyle(color: Color.fromARGB(156, 125, 124, 124))),),
              TextField(decoration: InputDecoration(labelText: 'Password'),obscureText: true,),
              TextField(decoration: InputDecoration(labelText: 'Confirm Password'),obscureText: true,),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: ()=>Navigator.pushNamed(context, '/'), child:Text('Register'),
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(400, 40),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    backgroundColor:const Color.fromARGB(255, 67, 192, 255),
                    foregroundColor:  Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
              
              SizedBox(height: 25,),
              Text('OR'),
              SizedBox(height: 20,),
              Row(children: [
                Flexible(child: 
                  ElevatedButton(onPressed: ()=>(), child: Container(
                
                child: Row(children:[Image.network("https://cdn.iconscout.com/icon/free/png-256/free-google-1772223-1507807.png",height: 20,),Text("       Google",style: TextStyle(fontWeight: FontWeight.w400),)],),
              ),
              style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 255, 255, 255),
                    foregroundColor:  Color.fromRGBO(0, 0, 0, 1),
                ),
              )
                ),
                SizedBox(width: 20,),
                Flexible(child: 
                  ElevatedButton(onPressed: ()=>(), child: Container(
                child: Row(children:[Image.network("https://w7.pngwing.com/pngs/914/758/png-transparent-github-social-media-computer-icons-logo-android-github-logo-computer-wallpaper-banner-thumbnail.png",height: 35,),Text("      GitHub",style: TextStyle(fontWeight: FontWeight.w400),)],),
              ),
              style: ElevatedButton.styleFrom(
                    backgroundColor:Color.fromARGB(255, 255, 255, 255),
                    foregroundColor:  Color.fromRGBO(0, 0, 0, 1),
                ),
              )
                )
              ],),
              
              

            ],),
          ),
        ),
        
        ),
    );
  }

}
