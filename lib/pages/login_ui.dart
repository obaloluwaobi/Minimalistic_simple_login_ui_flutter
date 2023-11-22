import 'package:flutter/material.dart';
import 'package:untitled9/pages/signup_ui.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formkey = GlobalKey<FormState>();
  bool enable = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:SafeArea(
        top: enable,
        bottom: enable,
        child: Form(
        key: _formkey,
          child:  SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text('Login',style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),),
                  ),
                ),

                //email
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Email',style: TextStyle(fontSize: 20,color: Colors.white),),
                ),

                const SizedBox(height: 10,),
                //email input

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Hello@company.com',
                      hintStyle: TextStyle(color: Colors.white70)
                    ),
                  ),
                ),
                
                
                const SizedBox(height: 25,),

                //password text

                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Password',style: TextStyle(color: Colors.white,fontSize:20, ),),
                ),

                const SizedBox(height: 10,),

                //password input
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                      hintStyle: TextStyle(color: Colors.white70),
                      hintText: 'Your Password',
                      border: OutlineInputBorder(),
                      suffixIcon: Icon(Icons.remove_red_eye_rounded,color: Colors.white70,),

                    ),
                    keyboardType: TextInputType.visiblePassword,
                  ),
                ),

                const SizedBox(height: 25,),
                //text
                const Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text('Forgot Password?',style: TextStyle(color: Colors.green,fontSize: 17),),
                ),

                const SizedBox(height: 25,),

                //login button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Signup()));
                  },
                      child:  Text('Login',style: TextStyle(color: Colors.black,fontSize: 18),),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(50),
                        shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)
                    ) ),

                  ),
                ),

                const SizedBox(height: 20,),
                
               const Center(
                   child: Text('or',
                     style: TextStyle(
                         color: Colors.white70,
                         fontSize: 15),)
               ),

                //continue button apple
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
                 child: OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                      shape: const RoundedRectangleBorder()
                    ),
                     child: Row(

                       children:  [
                        Image.asset('assets/appleicon.png',width: 30,color: Colors.white,),
                         const SizedBox(width: 50,),
                         const Text('Continue with Apple',style: TextStyle(color: Colors.white),),
                     ],),
                 ),
               ),
                const SizedBox(height: 20,),
                //continue button google
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: OutlinedButton(onPressed: (){},
                    style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder()),

                    child: Row(
                      children: [
                        Image.asset('assets/google.png',width: 30,),
                        SizedBox(width: 50,),
                        const Text('Continue with Google',style: TextStyle(color: Colors.white),),
                      ],),
                  ),
                ),



                


            ],),
          )),)
    );
  }
}
