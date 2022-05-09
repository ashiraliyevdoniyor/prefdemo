import 'package:flutter/material.dart';
import 'package:prefdemo/model/user_model.dart';
import 'package:prefdemo/services/pref_service.dart';

class HomePage extends StatefulWidget {
  static final String id="home_page";
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final nameController=TextEditingController();
  final passwordController=TextEditingController();

  void _doLogin(){
    String name = nameController.text.toString().trim();
    String password = passwordController.text.toString().trim();
    User user = new User.from(name: name,password: password);
    Prefs.storeUser(user);

    Prefs.loadUser().then((user) => {
      print(user?.name),
    });

  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              gradient: LinearGradient(
                  begin: Alignment.centerLeft,
                  colors: [
                    Colors.black.withOpacity(0.1),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.0),
                    Colors.black.withOpacity(0.0),
                  ]
              )
          ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              SizedBox(height: 100),
              Container(
                height: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/image_1.png"),
                      //fit: BoxFit.cover
                    )
                ),
              ),
              Text("Welcome back!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),),
              Text("Login to your existant account of Q Allure",style: TextStyle(color: Colors.grey[500],fontSize: 16),),

              SizedBox(height: 20),

              Container(
                margin: EdgeInsets.only(left: 25,right: 25),

                width: double.infinity,
                height: 60,
                padding: EdgeInsets.only(left: 20,right: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white24
                ),
                child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.person_outline,color: Colors.grey,)
                  ),

                ),
              ),

              SizedBox(height: 20),

              Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 25,right: 25),
                height: 60,
                padding: EdgeInsets.only(left: 20,right: 40),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.white24
                ),
                child: TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.lock_open,color: Colors.grey,)
                  ),

                ),
              ),

              SizedBox(height: 15,),

              Container(
                margin: EdgeInsets.only(right: 30),
                  alignment: Alignment.bottomRight,
                  child: Text("Forgot Password?",style: TextStyle(color: Colors.black))
              ),

              SizedBox(height: 20),

              Container(
                height: 60,
                width: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue
                ),
                child: FlatButton(
                  onPressed: (){
                    _doLogin;
                  },
                  child: Text("Log in",style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold),),
                ),
              ),

              SizedBox(height: 40,),

              Text("Or connect using",style: TextStyle(color: Colors.grey),),

              SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.blue,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.facebook_sharp,color: Colors.white,) ,
                          Text("   Facebook",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      )
                  ),
                  SizedBox(width: 30),

                  Container(
                      width: 120,
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.red,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.g_mobiledata,color: Colors.white,size: 25,),
                          Text("   Google",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
                        ],
                      )
                  ),
                ],
              ),


              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? "),
                  Text("Sign Up",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold))

                ],
              ),
              SizedBox(height: 20)


            ],
          ),
        )
      )
    );
  }
}
