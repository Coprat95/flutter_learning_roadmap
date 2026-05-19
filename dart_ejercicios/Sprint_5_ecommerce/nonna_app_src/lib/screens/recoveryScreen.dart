import 'package:flutter/material.dart';
import 'package:nonna_app/screens/logginScreen.dart';
import 'package:nonna_app/styles/appColors/colorsApp.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.backgroundTheme,
      appBar: AppBar(
      backgroundColor: AppColors.backgroundTheme,
      title: Text('Password recovery', style:  TextStyle(fontWeight: .bold))),
      body:
      
       Center(
         child: SizedBox(
          child: Column(
            children: [
              Image.asset('assets/logo.png' ,scale: 4.5),
              SizedBox(height: 25,),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text('Introduce your mail and we will send you the instructions to recover it:', style: TextStyle(fontSize: 18),),
                
              ),
              // Textfield de email
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'mail_example@mail.com',
                      prefixIcon: Icon(Icons.mail),
                      
                    ),
                  ),
                  SizedBox(height: 400,),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(onPressed: (){
                          setState(() {
                            Navigator.push(context, MaterialPageRoute(builder: (_) => HomeScreen()));
                          });
                        }, child: Text('Send'), 
                        style: TextButton.styleFrom(backgroundColor: Colors.black,
                        foregroundColor: Colors.white,
                        fixedSize: Size.fromWidth(480))
                       
                        ),
                  )
            ],
          ),
               ),
       )
    );
    
  }
}