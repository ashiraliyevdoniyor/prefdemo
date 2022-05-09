import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  static final String id="account_page";
  const AccountPage({Key? key}) : super(key: key);

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            colors: [
              Colors.black.withOpacity(0.05),
              Colors.black.withOpacity(0.0),
              Colors.black.withOpacity(0.0),
              Colors.black.withOpacity(0.0),
            ]
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Container(
                padding: EdgeInsets.only(left: 25),
                alignment: Alignment.centerLeft,
                height: 80,
                child: IconButton(
                  icon: Icon(Icons.arrow_back,size: 30,),
                  onPressed: (){},
                ),
              ),


              Container(
                alignment: Alignment.center,
                child: Text("Let's Get Started!",style: TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.bold),),

              ),

              SizedBox(height: 10),
              Container(
                  alignment: Alignment.center,
                  child: Text("Create an account to Q Allure to get all features",style: TextStyle(color: Colors.grey,fontSize: 16),)
              ),

              SizedBox(height: 30),

              Container(
                padding: EdgeInsets.only(left: 30),

                margin: EdgeInsets.only(left: 20,right: 20),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Name",
                      hintStyle: TextStyle(fontSize: 20,color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.person_outline)
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.only(left: 30),

                margin: EdgeInsets.only(left: 20,right: 20),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(fontSize: 19,color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.email_outlined)
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.only(left: 30),

                margin: EdgeInsets.only(left: 20,right: 20),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Phone",
                      hintStyle: TextStyle(fontSize: 19,color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.phone_iphone)
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.only(left: 30),

                margin: EdgeInsets.only(left: 20,right: 20),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Password",
                      hintStyle: TextStyle(fontSize: 19,color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.lock_open_outlined)
                  ),
                ),
              ),

              SizedBox(height: 20),

              Container(
                padding: EdgeInsets.only(left: 30),

                margin: EdgeInsets.only(left: 20,right: 20),
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white
                ),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(fontSize: 19,color: Colors.grey),
                      border: InputBorder.none,
                      icon: Icon(Icons.lock_open_outlined)
                  ),
                ),
              ),

              SizedBox(height: 40),

              Container(

                  margin: EdgeInsets.only(left: 20,right: 20),
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue
                  ),
                  child: FlatButton(
                    onPressed: (){},
                    child: Text("     CREATE     ",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                  )
              ),
              SizedBox(height: 50),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account? "),
                  Text("Login here",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold)),

                ],
              ),
              SizedBox(height: 20)


            ],
          ),
        )
      ),
    );
  }
}
