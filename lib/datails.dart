
import 'package:flutter/material.dart';

class itemsdetail extends StatefulWidget{
  final data;
  itemsdetail({super.key,this.data});
  State<itemsdetail> createState()=>_details();
}
class _details extends State<itemsdetail>{
  String ?couleur="Red";
  

 
  
  Widget build(BuildContext context){
    return Scaffold(
      endDrawer: Drawer(
        child: Container(
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
      appBar: AppBar(
       // centerTitle: true,
        title:const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.light_mode_rounded,size: 30,color: Colors.black,),
            Text(" Leva",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            Text("Shop",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.orange),)
          ],
        )
      ,backgroundColor: Colors.grey[200],
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.grey,size: 30),
      ),
      body: ListView(
        children: [
                  Image.asset(widget.data['image'],height: 300,),
          
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
          Text(widget.data['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
          Container(height: 3,),
          Text(widget.data['subtitle'],style: TextStyle(color: Colors.grey[700],fontSize: 20),),
          Container(height: 6,),
          Text(widget.data['price'],style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 30),)
            ],
          ),
         Text("Color :", style: TextStyle(color: Colors.grey[700],fontSize: 20)),
        
         
                 RadioListTile(
            title: Text("Red"),
            value: "Red",
             groupValue:couleur, 
             onChanged:(value){
              setState(() {
                couleur=value;
              });

             }
             ),
             RadioListTile(
            title: Text("Black"),
            value: "Black",
             groupValue:couleur, 
             onChanged:(value){
              setState(() {
                couleur=value;
              });

             }
             ),
             RadioListTile(
            title: Text("White"),
            value: "White",
             groupValue:couleur, 
             onChanged:(value){
              setState(() {
                couleur=value;
              });

             }
             ),

             Center(
                  
                  child: MaterialButton(
                    child: Text("Buy"),
                    onPressed: (){
                      showDialog(
                      //  barrierColor: Colors.grey[200],
                        barrierDismissible: false,
                        context: context,
                         builder: (context)=> AlertDialog(
                          backgroundColor: Colors.grey[200],
                          
                          title: Text(" Sorry",style: TextStyle(fontSize: 40.0),textAlign:TextAlign.center), 
                           content: Text("empty stock",textAlign:TextAlign.center,),
                           
                          actions: [
                            TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("ok")),
                            TextButton(onPressed: (){}, child: Text("cancel")),
                          ],
                         ),
                        
                         
                         );

                    },
                    textColor: Colors.black,
                   color : Colors.orange,
                  ),
                ),
            
          
          
         
             
        

        ],
      ),
    );
  }

}