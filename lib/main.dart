import 'package:flutter/material.dart';

void main() {
  runApp( 
    MaterialApp(
      home: MyApp(),
      routes: {'/signup':(context) => },
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
        appBar: AppBar(title: Center(child:Text('LOGIN') ,) ,),
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
                backgroundColor:Color.fromRGBO(20, 177, 255, 0.612),
                foregroundColor: Color.fromRGBO(255, 255, 255, 0.612)
                ),),
            SizedBox(height: 20,),
            Text("Forgot Password? Click here",),
            SizedBox(height: 20,),
            TextButton(onPressed: ()=>(), child: Text('No Account? Sign Up'),
            style: ElevatedButton.styleFrom(
                minimumSize:const Size(350, 50),
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(5)),
                backgroundColor:Color.fromRGBO(147, 149, 150, 0.612),
                foregroundColor: Color.fromRGBO(18, 18, 18, 0.612)
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
    // TODO: implement build
    throw UnimplementedError();
  }

}
