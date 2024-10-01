import 'package:aini_124220141/home.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget{
  const Login ({super.key});
  @override
  State<Login> createState() => LoginState();
}

class LoginState extends State<Login>{
  String username = '';
  String password = '';
  bool isClicked= false;

  _navigateToHome()async{
    await Future.delayed(Duration(seconds: 3),(){});
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context)=> Home(username: username,)
        )
        );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
        ),
        body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            Image.asset('assets/logo.png', 
            width: 100,
            height: 50,
            ),
            SizedBox(height: 10),
            Text('Selamat Datang',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            ),
            SizedBox(height: 10),
            Image.asset('assets/illustration.png',
            width: 150,
            height: 150,),

            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Aini',
                  border: OutlineInputBorder(),
                ),
                onChanged: (value){
                  setState((){
                    username = value;
                  });
                },
                
              ),
              ),
              SizedBox(height: 5),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                child: TextField(
                  decoration: const InputDecoration(
                    labelText: '124220141',
                    border: OutlineInputBorder()
                  ),
                  onChanged: (value){
                    setState((){
                      password = value;
                    });
                  },
                ),
                ),
                SizedBox(height: 5),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                  child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor:
                      WidgetStateProperty.all(Colors.purple),
                    ),
                   onPressed: (){
                    if (username=="Aini"&& password=="124220141"){
                       _navigateToHome();

                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Login Berhasil")
                          ),
                      );
                      setState(() {
                        isClicked =! isClicked;
                        print(isClicked);
                      });
                    }
                    else{
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Login Gagal")
                          ),
                      );
                      setState(() {
                        isClicked =! isClicked;
                        print(isClicked);
                      });
                    }
                   }, 
                   child: Text("Login"),
                  ),
                  )
          ]
        ),
      )
      ), 
    );
  }
}