import 'package:flutter/material.dart';
import 'package:practice/fragment/accessfragment.dart';
import 'package:practice/fragment/alarmfragment.dart';
import 'package:practice/fragment/balancefragment.dart';
import 'package:practice/fragment/commentfragment.dart';
import 'package:practice/fragment/homefragment.dart';
import 'package:practice/fragment/mailfragment.dart';
import 'package:practice/fragment/moneyfragment.dart';
import 'package:practice/fragment/personfragment.dart';

import 'fragment/Activity2.dart';


main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(home: HomeActivity(),
      debugShowCheckedModeBanner: false,
    theme: ThemeData(
    tabBarTheme: TabBarTheme(
    labelColor: Colors.white, // Color of the selected tab text
    unselectedLabelColor: Colors.grey, // Color of the unselected tab text
    ),
    )
    );
     }
}

class HomeActivity extends StatelessWidget{
   HomeActivity({super.key});

   MyalertDialog(context){
     return showDialog(
         context: context,
         builder: (BuildContext context){
           return Expanded(
               child: AlertDialog(
                 title: Text("Alert !!"),
                 content: Text("Do you want to delete"),
                 actions: [
                   TextButton(onPressed: (){MySnackber("Delete Sucessful", context);Navigator.of(context).pop();}, child: Text("yes")),
                   TextButton(onPressed: (){Navigator.of(context).pop();}, child: Text("no")),
                 ],
               )
           );
         }
     );
   }

  MySnackber(massage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(massage))
    );
  }

  var MyItem=[
    {"img":"https://miro.medium.com/v2/resize:fit:1200/1*1Bw8tqzEYn6LzmQInimbFA.png","title":"UI UX"},
    {"img":"https://miro.medium.com/v2/resize:fit:1200/1*1Bw8tqzEYn6LzmQInimbFA.png","title":"web"},
    {"img":"https://miro.medium.com/v2/resize:fit:1200/1*1Bw8tqzEYn6LzmQInimbFA.png","title":"APP"},
    {"img":"https://miro.medium.com/v2/resize:fit:1200/1*1Bw8tqzEYn6LzmQInimbFA.png","title":"SQA"},
    {"img":"https://miro.medium.com/v2/resize:fit:1200/1*1Bw8tqzEYn6LzmQInimbFA.png","title":"DATA Science"}

  ];

  @override
  Widget build(BuildContext context) {

    ButtonStyle buttonStyle= ElevatedButton.styleFrom(
      minimumSize: Size(double.infinity, 60),
        padding: EdgeInsets.all(0),
      backgroundColor: Colors.black,
    );


    return DefaultTabController(
      length: 8,
      child: Scaffold(

        appBar: AppBar(title:Text("Sahajjo",style: TextStyle(color: Colors.white),),
        titleSpacing: 0,
        centerTitle: true,
        toolbarHeight: 100,
        toolbarOpacity: 1,
        elevation: 100,
        backgroundColor: Colors.black54,
          actions: [
            IconButton(onPressed: (){MySnackber("If you need any thing massage at this number", context);}, icon: Icon(Icons.comment, color: Colors.white)),
            IconButton(onPressed: (){MySnackber("If you need any thing call at this number", context);}, icon: Icon(Icons.call, color: Colors.white)),
            IconButton(onPressed: (){MySnackber("If you need any thing search here!!", context);}, icon: Icon(Icons.search_rounded, color: Colors.white))
          ],
          bottom: TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.home, color: Colors.white),text: 'Home'),
              Tab(icon: Icon(Icons.person, color: Colors.white),text: "person"),
              Tab(icon: Icon(Icons.mail, color: Colors.white),text: "mail"),
              Tab(icon: Icon(Icons.comment, color: Colors.white),text: "comment"),
              Tab(icon: Icon(Icons.alarm_add, color: Colors.white),text: "alarm_add"),
              Tab(icon: Icon(Icons.accessibility, color: Colors.white),text: "accessibility"),
              Tab(icon: Icon(Icons.money, color: Colors.white),text: "money"),
              Tab(icon: Icon(Icons.balance, color: Colors.white),text: "balance"),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          elevation: 10,
          child: Icon(Icons.add, color: Colors.white),
          backgroundColor: Colors.black54,
          splashColor: Colors.red,
          hoverColor: Colors.blueGrey,
          hoverElevation: 50,
          mouseCursor: SystemMouseCursors.click,
          onPressed: (){
            MySnackber("Add your donation", context);
          },
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex:1,
          items: [
              BottomNavigationBarItem(icon:Icon(Icons.home),label:'Home'),
            BottomNavigationBarItem(icon:Icon(Icons.message),label:'Contact'),
            BottomNavigationBarItem(icon:Icon(Icons.person),label:'Profile'),
          ],
          onTap: (int index){
            if(index==0) {
              MySnackber("its home", context);
            }
            if(index==1) {
              MySnackber("its Massage", context);
            }
            if(index==2) {
              MySnackber("its Person", context);
            }
            },
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJVU7RadUmM90OhdqrrREy_7RpUhA5nPuOA&s"),
                    decoration: BoxDecoration(color: Colors.black),
                    accountName: Text("fatin Istiak Polok",style: TextStyle(color: Colors.redAccent)),
                    accountEmail: Text("rvn.polok@gmail.com",style: TextStyle(color: Colors.amberAccent)),
                    arrowColor: Colors.red,
                    onDetailsPressed: (){MySnackber("this  details pressed", context);},
                  )
              ),
              ListTile(leading:Icon(Icons.home) ,title: Text("Home"),onTap:(){MySnackber("Drawer Home", context);}),
              ListTile(leading:Icon(Icons.contacts) ,title: Text("contacts"),onTap:(){MySnackber("Drawer contacts", context);}),
              ListTile(leading:Icon(Icons.person) ,title: Text("Profile"),onTap:(){MySnackber("Profile contacts", context);}),
              ListTile(leading:Icon(Icons.email) ,title: Text("email"),onTap:(){MySnackber("Drawer Email", context);})
            ],
          ),
        ),

        endDrawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: UserAccountsDrawerHeader(
                    currentAccountPicture:Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSWJVU7RadUmM90OhdqrrREy_7RpUhA5nPuOA&s"),
                    decoration: BoxDecoration(color: Colors.black),
                    accountName: Text("fatin Istiak Polok",style: TextStyle(color: Colors.redAccent)),
                    accountEmail: Text("rvn.polok@gmail.com",style: TextStyle(color: Colors.amberAccent)),
                    arrowColor: Colors.red,
                    onDetailsPressed: (){MySnackber("this  details pressed", context);},
                  )
              ),
              ListTile(leading:Icon(Icons.home) ,title: Text("Home"),onTap:(){MySnackber("Drawer Home", context);}),
              ListTile(leading:Icon(Icons.contacts) ,title: Text("contacts"),onTap:(){MySnackber("Drawer contacts", context);}),
              ListTile(leading:Icon(Icons.person) ,title: Text("Profile"),onTap:(){MySnackber("Profile contacts", context);}),
              ListTile(leading:Icon(Icons.email) ,title: Text("email"),onTap:(){MySnackber("Drawer Email", context);})
            ],
          ),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.camera,size: 100,color: Colors.redAccent,),
            CircularProgressIndicator(
              color: Colors.deepPurple,
              strokeWidth: 10,
            ),
            LinearProgressIndicator(

            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity1("this from home to activity 1")));
            },
                child: Text("Go Activity1",style: TextStyle(color: Colors.white)),
                style:buttonStyle
            ),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Activity2("this from home to activity 2")));
            },
                child: Text("Go Activity2",style: TextStyle(color: Colors.white)),
                style:buttonStyle
            ),

            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
              color: Color.fromRGBO(33, 191, 115, 50),
              shadowColor: Color.fromRGBO(176, 234, 205,1 ),
              elevation: 80,
                child: SizedBox(
                  width: 200,
                  height: 200,
                  child: Center(child:Text('this is card',style: TextStyle(color: Colors.white)),),
                )
            ),
            LinearProgressIndicator(
              minHeight: 50,


            ),

          ],
        ),
      ),
    );
  }
}




