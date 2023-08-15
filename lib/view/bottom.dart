import 'package:flutter/material.dart';

class Bototom extends StatefulWidget {
  const Bototom({super.key});

  @override
  State<Bototom> createState() => _BototomState();
}

class _BototomState extends State<Bototom> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar( 
          title: const Text("abhuix", style: TextStyle(backgroundColor: Colors.blue,color: Colors.red),),
          centerTitle: true,
          bottom: const TabBar(tabs: [
            Text("xyz",
                style: TextStyle(
                  fontSize: 21,
                  color: Colors.red,
                )),
            Text("abc"),
            Text("mnh"),
            Text("abgs"),
            Text("dgfr")
          ]),
        ),
        body:  TabBarView(children: [
          Column(
            children: [
              const Center(child: Text("xyz")),
             Image.network("https://previews.agefotostock.com/previewimage/medibigoff/9186579cecb816c680ec84d210b3994c/dpa-mpd-136175.jpg")
            ],
          ),
          Column(
            children: [
              const Center(child: Text("abc")),
              Image.network("https://www.weddingsutra.com/images/taj-lands-end-img-nw18.jpg"),
              
            
            ],
          ),
          Column(
            children: [
              const Center(child: Text("mhn")),
               TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.person),  
              hintText: 'Enter your name',  
              labelText: 'Name',  
            ),  
          ),  
            TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.phone),  
              hintText: 'Enter a phone number',  
              labelText: 'Phone*',  
            ),  
          ), 
             TextFormField(  
            decoration: const InputDecoration(  
              icon: Icon(Icons.calendar_month),  
              hintText: 'Enter your DOB',  
              labelText: 'DOB*',  
            ),  
          ),   
  

              
            ],
          ),
          const Center(child: Text("sdjk")),
          const Center(child: Text("jhsgd"))
        ]),
      ),
    );
  }
}
