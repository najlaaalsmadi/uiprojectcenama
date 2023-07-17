import 'package:cenimabooking/constants.dart';
import 'package:cenimabooking/screens/login/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:go_router/go_router.dart';


class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  // final auth = FirebaseAuth.instance;
  var showPass = true;
  // late String email;
//  late String password;
  //final emailcont =


  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confpasswordController = TextEditingController();
  var _showPassword = true;

  Future<void> signup() async {
    //try {
    // await FirebaseAuth.instance.createUserWithEmailAndPassword(
    //  email: _emailController.text.trim(),
    //  password: _passwordController.text.trim(),
    //  );
    // } catch (e) {
    //  print(e);
    //  }

    if(passwordConf ()){
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
    }
    context.go(AuthenticationPath);
  }

  bool passwordConf () {
    if(_passwordController.text.trim() ==
        _confpasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confpasswordController.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
        ),
      ),
      backgroundColor:  Colors.indigo[50],
      body: SingleChildScrollView(
        child: Column(
            children: [
              SizedBox(
                height: 70,
              ),

              Container(
                  padding: EdgeInsets.symmetric(vertical: 30.0,horizontal: 30.0),
                  margin: const EdgeInsets.all(20),
                  width: 650,
                  height: 550,
                  decoration: BoxDecoration(color: Colors.blue[900],borderRadius: BorderRadius.circular(18)),
                  child: Column(
                    children: [

                      TextField(
                        // keyboardType:  TextInputType.number,
                        // controller: mobileNumber,
                        decoration: InputDecoration(
                          hintText: "user name  ",

                          hintStyle: TextStyle(color: Colors.white60),
                          // hintText: "Search product",
                          // prefixIcon: Icon(Icons.search),
                          // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                        ),
                      ),


                      SizedBox(
                        height: 20,
                      ),


                      TextField(
                        // keyboardType:  TextInputType.,
                        // controller: mobileNumber,
                        //   onChanged: (value) {
                        //  email = value;
                        //   },
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: "Email  ",

                          hintStyle: TextStyle(color: Colors.white60),
                          // hintText: "Search product",
                          // prefixIcon: Icon(Icons.search),
                          // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                        ),
                      ),


                      SizedBox(
                        height: 20,
                      ),

                      TextField(
                        // keyboardType:  TextInputType.number,
                        // controller: mobileNumber,
                        //   onChanged: (value) {
                        //     password = value;
                        //  },
                        obscureText: showPass,
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: "password ",
                          //  icon: Icon(Icons.password),
                          hintStyle: TextStyle(color: Colors.white60),
                          // hintText: "Search product",
                          // prefixIcon: Icon(Icons.search),
                          // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                        ),
                      ),
                      /*
              SizedBox(
                height: 40,
              ),

              TextField(
                // keyboardType:  TextInputType.number,
                // controller: mobileNumber,
                decoration: InputDecoration(
                  hintText: " confirm password ",

                  hintStyle: TextStyle(color: Colors.white60),
                  // hintText: "Search product",
                  // prefixIcon: Icon(Icons.search),
                  // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                ),
              ),

              SizedBox(
                height: 30,
              ),
   */
/*
              TextField(
                 keyboardType:  TextInputType.number,
                // controller: mobileNumber,
                decoration: InputDecoration(
                  hintText: "phone number  ",

                  hintStyle: TextStyle(color: Colors.white60),
                  // hintText: "Search product",
                  // prefixIcon: Icon(Icons.search),
                  // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                  border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                ),
              ),
*/

                      SizedBox(
                        height: 20,
                      ),

                      TextField(
                        //  keyboardType:  TextInputType.number,
                        // controller: mobileNumber,
                        controller: _confpasswordController,
                        obscureText: showPass,
                        decoration: InputDecoration(
                          hintText: "confirm password  ",

                          hintStyle: TextStyle(color: Colors.white60),
                          // hintText: "Search product",
                          // prefixIcon: Icon(Icons.search),
                          // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),

                      TextField(
                        keyboardType:  TextInputType.number,
                        // controller: mobileNumber,
                        decoration: InputDecoration(
                          hintText: "mobile number   ",

                          hintStyle: TextStyle(color: Colors.white60),
                          // hintText: "Search product",
                          // prefixIcon: Icon(Icons.search),
                          // prefixIcon: SvgPicture.asset("assets/icons/Search Icon.svg"),
                          border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(20))),

                        ),
                      ),

                      SizedBox(
                        height: 20,
                      ),

                      GestureDetector(

                        onTap: signup,
                        child: Container(
                          padding: EdgeInsets.all(16),
                          decoration: BoxDecoration(
                            color: Colors.orange[300],
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                          ),
                          child: Center(
                            child: Text(
                              'Create Accounts',
                              style: TextStyle(
                                fontSize: 18,

                              ),

                            ),
                            // textColor: Colors.white,
                          ),
                        ),
                      ),



                      /*
              MaterialButton(
                onPressed: () async{
             // var user =  await auth.createUserWithEmailAndPassword(email: email, password: password);
                  //try{
                 //   var user =  await auth.createUserWithEmailAndPassword(email: email, password: password);
                    //Navigator.push(
                     //   context,
                     // MaterialPageRoute(builder: (context) =>  home()),
                     //  );

                //  } catch(e) {
                 //   print(e);
                 // }
                  // print(email);
                  // print(password);
                  // Navigator.push(
                  //  context,
                  //  MaterialPageRoute(builder: (context) =>  create()),
                  // );
                },


                height: 50,
                minWidth: 400,
                child: Text('create Account',style: TextStyle(
                    fontSize: 18
                ),),
                textColor: Colors.white,
                color: Colors.orange[300],
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),

              */

                    ],
                  )





              ),
            ]
        ),
      ),
    );
  }
}
