


import 'package:flutter/material.dart';

class PageTeste extends StatelessWidget {
  const PageTeste({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
      itemCount: 10,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 0.02,
        crossAxisSpacing: 0.02,
        childAspectRatio: 3/1,
      ), 
      itemBuilder: (context, index){
        return  Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Card(
                margin: EdgeInsets.symmetric(vertical: 2, horizontal:5),
                color: Colors.red,
                child: IconButton(onPressed: (){}, icon:  const Icon(Icons.person_outline),),
              ),
            ],
          ),
        );
        
        
      }
      ),
    );
  }
}