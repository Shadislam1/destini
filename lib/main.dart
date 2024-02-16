import 'package:flutter/material.dart';

void main() {
  runApp(
   Destini()
  );
}

class Destini extends StatelessWidget {
  const Destini({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      
      home: StoryPage(),
        );
        
  }
}

class StoryPage extends StatefulWidget {
  const StoryPage({super.key});

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
        appBar: AppBar(

            title: Center(
              child:Text(
                'Destini App'
              ) ,),
        ),

            body: Container(
              padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
              constraints: BoxConstraints.expand(),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
               

                   Expanded(
                    child: Center(
                      child: Text(
                        'here the story pages goes',
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                        ),
                        
                        
                        ),
                    
                    ),
               Expanded(
                child: Padding(
                  padding: EdgeInsets.all(15),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                    ),
                    child: Text(
                      'i will do it',
                      style: TextStyle(color: Colors.white),

                    ),
                    onPressed: () {
                      
                    },
                    ),
                ),
                ),
                
                 Expanded(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Colors.red)
                    ),
                    child: Text(
                      'i will never do it',
                      style: TextStyle(color: Colors.white),
                      
                      ),
                    onPressed: () {
                      
                    },
                    ),
                ),
                ),
                
                 
               
              ],
              ),
            ),
        
        );
  }
}
