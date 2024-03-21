import 'package:flutter/material.dart';
//import 'package:flutter_test/flutter_test.dart';
import 'package:mini_projet1/datails.dart';

class homepage extends StatefulWidget{
const   homepage({super.key});
State<homepage> createState()=>_homestatepage();
}
class _homestatepage extends State<homepage>{
 
  List categorie=[
    {"icons":Icons.laptop,"names":"laptop"},
    {"icons":Icons.smartphone,"names":"Smartphone"},
    {"icons":Icons.earbuds,"names":"Earbuds"},
    {"icons":Icons.headphones,"names":"Headphones"},
    {"icons":Icons.camera_alt,"names":"Camera"},
    {"icons":Icons.mouse,"names":"Mouse"},
    {"icons":Icons.keyboard,"names":"Keyboard"},
  ];
  List selling=[
    {"image":"images/a1.jpeg","title":"Earbuds","subtitle":"Tow pieces ","price":"35\$"},
    {"image":"images/a2.jpeg","title":"Headphone","subtitle":"original ","price":"15\$"},
    {"image":"images/a3.jpeg","title":"Smartwatch","subtitle":"1.6-xx ","price":"23\$"},
    {"image":"images/a4.jpeg","title":"Lenovo","subtitle":"gaming 3 ","price":"1200\$"},
    {"image":"images/a5.jpeg","title":"Mouse","subtitle":"gamer ","price":"85\$"},
    {"image":"images/a6.jpeg","title":"Keyboard","subtitle":"T_Dragger ","price":"62\$"},

  ];
  int i=0;
Widget build(BuildContext context){
  return Scaffold(  
    backgroundColor: Color.fromARGB(255, 248, 247, 247),
    bottomNavigationBar: BottomNavigationBar(
      iconSize: 40,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey[500],
      currentIndex: i,
      onTap: (val){
        setState(() {
          i=val;
        });
      },
      items:[
      BottomNavigationBarItem(icon: Icon(Icons.home_outlined),label: "*"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined),label: "*"),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined),label: "*"),
      ]),
    body:Container(
      padding:const EdgeInsets.all(20),
      child: ListView(
        children: [
          Row(
            children: [
              Expanded(child: TextFormField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: "search",
                  border: InputBorder.none,
                  fillColor: Colors.grey[200],
                  filled: true,
                ),
              )),
              Padding(
                padding: EdgeInsets.only(left:10.0),
                 child:Icon(Icons.menu,size: 50,),
              ) ,  
              
                       
            ],
          ),
          Container(
                height: 30,
              ) ,
              Text("Categories",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
             Container(
             // color: Colors.red,
              height: 120,
              child:  ListView.builder(
                
                itemCount: categorie.length,
               scrollDirection: Axis.horizontal,
                itemBuilder: (context,i){
                 return Column(
                    children: [
                      Container(
                        child: Icon(categorie[i]['icons'],size: 40,),
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(90)
                        ),
                      ),
                       Container(
                height: 10,
              ) ,
                      Text(categorie[i]['names'])
                      
                 
                    ],

                  );
                }
                  
                   
                
              ),
             ),
             Container(height: 10,),
              Text("best selling",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              Container(
                height: 20,

              ),
              Container(
                height: 300,
                child: GridView.builder(
                  gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 300),
                  itemCount: selling.length,
                  itemBuilder:(context,i){
                   return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>itemsdetail(data:selling[i],)));
                    },

                    child: Card(
                     color: Colors.grey[300],
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            
                            padding: EdgeInsets.all(10),

                            child: Image.asset(selling[i]['image'],fit: BoxFit.fill,height: 150,),
                          ),
                          Text(selling[i]['title'],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                          Container(height: 3,),
                          Text(selling[i]['subtitle'],style: TextStyle(color: Colors.grey[700]),),
                          Container(height: 6,),
                          Text(selling[i]['price'],style: TextStyle(color: Colors.orange,fontWeight: FontWeight.bold,fontSize: 20),)

                        ],
                      ),
                    ),

                   );
                  }
                    

                  
                ),
              ),

        ],
      ),
    ) ,

  );
}
 
}