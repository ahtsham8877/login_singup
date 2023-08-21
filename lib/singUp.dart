import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  const SignUp({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
      
          image: DecorationImage(
            image: AssetImage("logo.jpg"),
                
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          children: [
            Column(
              children: [
                SizedBox(height: 20),
             
                Center(child: Image.asset("logo3.png",height: 120,width: 120,
                color: Color.fromARGB(115, 0, 0, 0),)),
                Text("SINGUP",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),), 
              
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    height: 470,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Text("SingUp Your Account",
                        style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold, )),

                        
                        SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: TextField(decoration: InputDecoration(
                            labelText: "First Name " ),),
                        ),
                        
                        Container(
                          width: 250,
                          child: TextField(decoration: InputDecoration(
                            labelText: "Last Name ", ),),
                        ),
                         
                        Container(
                          width: 250,
                          child: TextField(decoration: InputDecoration(
                            labelText: "Enter Your Email ",
                            suffix: Icon(Icons.mail,color : Color.fromARGB(115, 43, 31, 31),) ),),
                        ),

                        Container(
                          width: 250,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                            labelText: "Password",
                            suffix: Icon(Icons.remove_red_eye,color : Color.fromARGB(115, 43, 31, 31),) ),),
                        ),
                          Container(
                          width: 250,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                            labelText: "Confirm Password",
                            suffix: Icon(Icons.remove_red_eye,color : Color.fromARGB(115, 43, 31, 31),) ),),
                        ),
                        SizedBox(height: 20,),
                        InkWell(
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                            },
                          child: Container(
                            width: 250,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient:
                             LinearGradient(colors:[Color.fromARGB(255, 255, 106, 7),Color.fromARGB(255, 223, 5, 5)])),
                        
                            child: Center(child: Text(" SinghUp ",  style: 
                            TextStyle(fontSize: 20,
                             fontWeight: FontWeight.bold,
                              color: Colors.white),
                              )) 
                        
                          ),
                        ) , 
                         SizedBox(height: 20,),
                        Row( mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            SizedBox(width: 100,),
                            Text("Back to",style: TextStyle(color: Colors.grey),),
                            SizedBox(width: 5,),
                             InkWell (
                            onTap: () {
                                Navigator.pop(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                            },
                             child: Text("Login",style: 
                            TextStyle(color: Color.fromARGB(255, 255, 100, 10) , fontSize: 15, 
                                fontWeight: FontWeight.bold,),)),

                          ],
                        ),                
                        ],

                    ),

                  ),
                )



              ],
            ),
          ],
        ),
      ),
    );
  }
}
