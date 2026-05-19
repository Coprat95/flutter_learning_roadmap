import 'package:flutter/material.dart';
import 'package:nonna_app/screens/homeScreen.dart';
import 'package:nonna_app/screens/recoveryScreen.dart';
import 'package:nonna_app/styles/appColors/colorsApp.dart';
import 'package:nonna_app/widgets/appTextFields.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color bg = AppColors.backgroundTheme;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // para evitar bottom Overflow
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundTheme,
      body: Center(
        child: Padding(
          padding: const EdgeInsetsGeometry.all(30.0),
          child: Column(
            children: [
              SizedBox(height: 80),
              // Logo marca
              Image.asset('assets/logo.png'),
              Column(
                children: [
                  SizedBox(height: 10),
                  // header
                  Text('Start decorating now!', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 60),
                  // Textfield de email
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'mail_example@mail.com',
                      prefixIcon: Icon(Icons.mail),
                      
                    ),
                  ),

                  // TextField de Contraseña
                  TextField(
                    onChanged: (val) {
                      val = val;
                    },
                    obscureText: true,

                    decoration: InputDecoration(
                      hintText: 'Password',
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.remove_red_eye),
                    ),
                  ),
                  
                  Padding(
                    padding: const EdgeInsets.only(top: 10, left: 100, bottom: 270),
                    child: Row(
                      children: [
                        // Texto he perdido mi contraseña
                        Text('I forgot my password', ),
                        // TextButton con Navigator hacia RecoveryScreen
                        TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black
                          )
                          ,onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => RecoveryScreen()));
                          });
                          
                        }, 
                        
                        child: Text('Recover', style: TextStyle(fontWeight: .bold)))

                      ],
                    ),
                  ),
                  Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        setState(() {
                          Navigator.push(context, MaterialPageRoute(builder: (_) => LogginScreen()));
                        });
                      }, child: Text('Log in'), 
                      style: TextButton.styleFrom(backgroundColor: Colors.black,
                      foregroundColor: Colors.white,
                      fixedSize: Size.fromWidth(480)
                      )
                      ),
                     
                      Padding(
                        
                        padding: const EdgeInsets.only(left: 70,top: 30),
                        child: Row(
                          
                          children: [
                            Text('Dont have an account ?'),
                            TextButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.black
                          )
                          ,onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                          });
                          
                        }, 
                        
                        child: Text('Sign up', style: TextStyle(fontWeight: .bold)))
                          ],
                        )
                        
                      ),
                      
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
