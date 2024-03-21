
import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:mini_projet1/homepage.dart';

class mainpage extends StatefulWidget{
const   mainpage({super.key});
State<mainpage> createState()=>_page1();
 
}
class _page1 extends State<mainpage>{
  GlobalKey<ScaffoldState> sk=GlobalKey();
    GlobalKey<FormState> formkey=GlobalKey();
  String?username;
  String?phone;
   String?password;
  Widget build(BuildContext context){
    return Scaffold(
      
        key: sk,
        drawer: Drawer(
          child:Container(
            width: 60,
              height: 60,
            padding: EdgeInsets.all(10),
  
            child:ListView(
            children: [
            Container(
              alignment: Alignment.topLeft,
              child:Row(
                children: [
                    ClipRRect(
              borderRadius: BorderRadius.circular(100),
               child: Image.asset("images/r.jpg",fit:BoxFit.fill,width: 85,height: 105.0,),
             ),
             Expanded(child:ListTile(
              title:Text("Touti saib : "),
              subtitle: Text("saibtouti@gmail.com") ,
             ))
                ],
              ),
              
              
              
            ),
            ListTile(
              title:Text("Description  "),
              subtitle: Text("good quality") ,
              leading: Icon(Icons.keyboard_command_key),
             ),
              ListTile(
              title:Text("phone: "),
              subtitle: Text("26 593 294") ,
              leading: Icon(Icons.phone),
             ),
             
             
             
              
            ],
          ),
          
          )

          ),
        
     
      body: Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage("images/r23.jpeg"),
           fit: BoxFit.cover,
            )
        ),
        child:  ListView(
          
        scrollDirection: Axis.vertical,
        children: [
          Container(
            
            color: Colors.grey[200],
            child:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              icon:Icon(Icons.light_mode_rounded,size: 30,color: Colors.black,),
              onPressed: (){
                sk.currentState!.openDrawer();


              },
            ),
            Text(" Leva",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("Shop",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange),),
            
          ],
        ),),

          
         
      Container(
             
          
    
       // color: Colors.orange,
        width: 100,
        
        
        padding: EdgeInsets.only(top: 200,right: 50,left: 50),
        child:  Card(
         color: Colors.grey[300],
        child:  Container(
        padding: EdgeInsets.all(30),
          width: 300,
          child: Form(
            key: formkey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(hintText: "username",prefixIcon: Icon(Icons.person_2_outlined)),
                  
                onSaved: (val){
                  username=val;
                },
                validator: (val){
                  if(val!.isEmpty){
                    return "le champ est vide";
                  }
                  if(val.length>10){
                    return "u passed the available length";
                  }

                },
              ),
               TextFormField(
                autovalidateMode: AutovalidateMode.always,
                decoration: InputDecoration(hintText: "password",prefixIcon: Icon(Icons.password)),
                obscureText: true,
                onSaved: (val){
                  password=val;
                },
                validator: (val){
                  if(val!.isEmpty){
                    return "";
                  }
                  if(val.length>10){
                    return "u passed the available length";
                  }

                },
              ),
              TextFormField(
                maxLength: 10,
                onSaved: (val){
                  phone=val;

                },
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: "phone",prefixIcon: Icon(Icons.phone)),
                validator: (val){
                  if(val!.isEmpty){
                    return "le champ est vide";
                  }
                  if(val.length>10){
                    return "u passed the available length";
                  }

                },
              ),
              
               Center(
                  
                  child: MaterialButton(
                    child: Text("login"),
                    onPressed: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>homepage()));
                    },
                    textColor: Colors.black,
                   color : Colors.orange,
                  ),
                ),
              ],
            )
          ),
        ),

       ),
       
      ),
      
      
        

        ],
      ),
      )
        
      );
      
   

  }
}