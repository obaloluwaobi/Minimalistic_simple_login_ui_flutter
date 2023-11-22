import 'package:flutter/material.dart';

import 'login_ui.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool enable = true;
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        top: enable,
          bottom: enable,
          child:Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    const Center(child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text('Signup',style: TextStyle(fontSize: 30,color: Colors.white),),
                    )),

                 const  SizedBox(height: 20,),

                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: OutlinedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(50),
                            shape: const RoundedRectangleBorder()),
                        child: Row(children: [
                          Image.asset('assets/appleicon.png',width: 30,color: Colors.white,),
                          const SizedBox(width: 50,),
                          const Text('Continue with Apple',style: TextStyle(color: Colors.white),)
                        ],)),
                  ),

                  const SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: OutlinedButton(onPressed: (){},
                        style: OutlinedButton.styleFrom(minimumSize: const Size.fromHeight(50),
                            shape: RoundedRectangleBorder()),
                        child: Row(children: [
                          Image.asset('assets/google.png',width: 30,),
                          const SizedBox(width: 50,),
                          const Text('Continue with Google',style: TextStyle(color: Colors.white),)
                        ],)),
                  ),

                  const SizedBox(height: 20,),

                  const Center(
                      child: Text('or',style: TextStyle(color: Colors.white,fontSize: 15),)),

                  const SizedBox(height: 25,),

                  const Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text('Work Email*',style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),

                  const SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextFormField(
                      style: const TextStyle(color: Colors.white),
                      decoration:const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'hello@gcompany.com',
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                    ),
                  ),

                  const SizedBox(height: 15,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: ElevatedButton(onPressed: (){},
                      style: ElevatedButton.styleFrom(minimumSize: const Size.fromHeight(50),
                      shape: const RoundedRectangleBorder()),
                      child: const  Text('Continue with Email', style: TextStyle(color: Colors.black,fontSize: 20),),),
                  ),

                  SizedBox(height: 20,),
                  
                   Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text('Already have an account ',style: TextStyle(color: Colors.white),),
                        InkWell(
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => const Login()));
                          },
                          child: const Text('Login',style: TextStyle(color: Colors.green),),)

                      ],
                    ),
                  ),
                  



                ],),
            ),
          ) ),
    );
  }
}
