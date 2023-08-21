import 'package:flutter/material.dart';
import 'package:loin/contacts.dart';
import 'package:flutter/services.dart';
class DashBord extends StatelessWidget {
  const DashBord({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
    
  
  appBar: AppBar(  backgroundColor: const Color.fromARGB(255, 0, 0, 0), ),
  drawer: Drawer(child: ListView(
    
    padding: EdgeInsets.zero,
    children: [
      const DrawerHeader(
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 20, 29, 37),
        ),
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(child: Text("A"),),
              SizedBox(height: 10,),
              Text('Ahtsham',style: TextStyle(color: Colors.white,fontSize: 25),),
               Text('ahthsnking870@gmail.com',style: TextStyle(color: Colors.white,fontSize: 10),),
            ],
          ),
        ),
      ),
      ListTile(
        leading: Icon(Icons.people),
        title: const Text('People'),
        onTap: () {
        },
      ),
      ListTile(
        leading: Icon(Icons.favorite),
        title: const Text('Favorite'),
        onTap: () {
        },
      ),
        ListTile(
        leading: Icon(Icons.contact_emergency),
        title: const Text('Details'),
        onTap: () {
        },
      ),
        ListTile(
        leading: Icon(Icons.notification_add),
        title: const Text('Notification'),
        onTap: () {
        },
      ),
         ListTile(
        leading: Icon(Icons.settings),
        title: const Text('Settings'),
        onTap: () {
        },
      ),
    ],
  ),),

      backgroundColor: Colors.black,
      body: SafeArea(

        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
             
              Row(

                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                
                  // Image.asset("profile.png",
                  // height:30 ,width: 30,),
                  
                ],
              ),
               // ignore: prefer_const_constructors
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
               
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                   const Text("DashBord Option",style: TextStyle(
                    color: Colors.white,fontSize: 20,
                    fontWeight: FontWeight.bold,) ,),
                ],
              ),
               const SizedBox(height: 30,),
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                        margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(115, 63, 62, 62),
                        borderRadius: BorderRadius.circular(20),
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("food.jpg",height: 200,width:200, ),
                        ],
                      )),
                   Container(
                        margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(115, 63, 62, 62),
                        borderRadius: BorderRadius.circular(20),
                          ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("food2.jpg",height: 200,width: 200,),
                        ],
                    )),
                ],
               ),
               
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Container(
                        margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.circular(20),
                          ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("food1.png",height: 150,width: 150, ), 
                           const Text("Servcies",style: TextStyle(color:Color.fromARGB(255, 0, 0, 0) ,
                           fontSize: 20,
                           fontWeight: FontWeight.bold) ,),          
                        ],
                        
                      )),
                       
                    InkWell(
                        onTap: () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>const navbar()));
                            },
                      child:  Container(
                        margin: const EdgeInsets.all(20),
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 250, 250, 250),
                        borderRadius: BorderRadius.circular(20),
                          ),

                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("contact.png",height: 150,width: 150, ), 
                           const Text("Contact Information",style: TextStyle(color:Color.fromARGB(255, 0, 0, 0) ,
                           fontSize: 20,
                           fontWeight: FontWeight.bold) ,),          
                        ],
                        
                      )),)
                ],
               ),
              


            ],
          ),
        ) ),

    );
      }
}