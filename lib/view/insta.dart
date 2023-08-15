import 'package:flutter/material.dart';

class Insta extends StatefulWidget {
  const Insta({super.key});

  @override
  State<Insta> createState() => _InstaState();
}

class _InstaState extends State<Insta> {
  bool isVisible=false;
  int? selected;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:  Column(
        children: [  
          //  TextFormField(  
          //   decoration: const InputDecoration(  
          //     icon: Icon(Icons.person),  
          //     hintText: 'Enter your name',  
          //     labelText: 'Name',  
          //   ),  
          // ),     TextFormField(  
          //   decoration: const InputDecoration(  
          //     icon: Icon(Icons.person),  
          //     hintText: 'Enter your name',  
          //     labelText: 'Name',  
          //   ),  
          // ),     TextFormField(  
          //   decoration: const InputDecoration(  
          //     icon: Icon(Icons.person),  
          //     hintText: 'Enter your name',  
          //     labelText: 'Name',  
          //   ),  
          // ), 
          Wrap(children: [
          for(int i=0;i<5;i++)...[
          InkWell(
            onTap: () {
              setState(() {
                isVisible=!isVisible;
              selected=i;
              });
              
            },
            child:  Padding(
              padding: const EdgeInsets.all(15),
              child: CircleAvatar(radius: 40,
              backgroundColor: i==selected?Colors.green :Colors.grey,),
            ),
          )]])
           ],
      ),
      floatingActionButton: Visibility(
        visible: isVisible,
        child: Container(
          color: Colors.green,
          height: 50,width: MediaQuery.of(context).size.width,),
      ),
    );
  }
}