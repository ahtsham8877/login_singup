import 'package:flutter/material.dart';
import 'package:loin/DashBord%20.dart';
// import 'package:loin/contact.dart';
import 'package:loin/singUp.dart';


void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
  
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:  ListView(
       

        children: [
          
     
          Container(
            
         
           
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: const LinearGradient(colors: [ 
                Color.fromARGB(255, 255, 60, 0),
                Color.fromARGB(255, 211, 70, 65),
                 Color.fromARGB(255, 247, 86, 147),
                ] ,) ),

            child: Column(

              children: [
                const SizedBox(height: 20,),
                Center(child: Image.asset("logo3.png",height: 120,width: 120,
                color: const Color.fromARGB(115, 0, 0, 0),)),
              
                const Text("YOUR LOGIN PAGE",style: 
                TextStyle(color: Color.fromARGB(115, 0, 0, 0),
                fontSize: 15,
                ),),
                const SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 300,
                    height: 430,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20,),
                        const Text("Hloo",
                        style: TextStyle(fontSize:20 ,fontWeight: FontWeight.bold, )),

                        const SizedBox(height: 10,),
                        const Text("Please login to your account ",
                        style: TextStyle(fontSize:15 ,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 87, 87, 87) )),

                        const SizedBox(height: 20,),
                        Container(
                          width: 250,
                          child: const TextField(decoration: InputDecoration(
                            labelText: "Enter Your Email",
                            suffix: Icon(Icons.mail,color : Color.fromARGB(115, 43, 31, 31),) ),),
                        ),
                        
                        Container(
                          width: 250,
                          child: const TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                            labelText: "Password",
                            
                            suffix: Icon(Icons.remove_red_eye,color : Color.fromARGB(115, 43, 31, 31),) ),),
                        ),
                        const Padding(padding: EdgeInsets.all(20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Forget Password",style: TextStyle(color: Colors.orange),)
                          ],
                        ),
                        ),
                        InkWell(
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DashBord()));
                            },
                          child: Container(
                            width: 250,
                            height: 35,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              gradient:
                             const LinearGradient(colors:[Color.fromARGB(255, 255, 106, 7),Color.fromARGB(255, 223, 5, 5)])),
                        
                            child: const Center(child: Text("Login ",  style: 
                            TextStyle(fontSize: 20,
                             fontWeight: FontWeight.bold,
                              color: Colors.white),
                              )) 
                        
                          ),
                        ),
                        const SizedBox(height: 20,),
                        Row(

                          children: [
                            const SizedBox(width: 40,),
                            const Text("or login for social mediadfs",style: TextStyle(color: Colors.grey),),
                            const SizedBox(width: 5,),
                             InkWell (
                            onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUp()));
                            },
                             child: const Text("SINGUP",style: 
                            TextStyle(color: Color.fromARGB(255, 255, 100, 10) , fontSize: 15, 
                                fontWeight: FontWeight.bold,),)),

                          ],
                        ),
                        const SizedBox(height: 20,),
                        Container(
                          margin: const EdgeInsets.fromLTRB(70, 0, 70, 20),
                           child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            
                            children: [
                            
                              Icon(Icons.home,color: Color.fromRGBO(255, 94, 0, 1),),
                              Icon(Icons.facebook,color: Color.fromRGBO(233, 49, 43, 1),),
                              Icon(Icons.mail,color: Color.fromRGBO(245, 111, 1, 1),),
                            ],
                           ),
                         ),

                      ],

                    ),

                  ),
                ),



              ],
            )
            
            
          ),
     
        ],
      ),
    );
  }
}

