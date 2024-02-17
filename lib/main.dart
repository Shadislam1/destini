import 'package:destini/story_brain.dart';
import 'package:flutter/material.dart';

//15
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

// acces the get getStory method using instance 
//StoryBrain class name => storyBrain object
   StoryBrain storyBrain = StoryBrain(); 

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
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/background.png'),
                  fit: BoxFit.cover,
                  
                  ),
              ),
              padding: EdgeInsets.symmetric(vertical: 50.0,horizontal: 15.0),
              constraints: BoxConstraints.expand(),

              child: SafeArea(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:<Widget> [
                 
                          
              
                     Expanded(
                      flex: 12,
                      child: Center(
                        child: Text(
                          //finish step 10
                          //access the get story using object
                          //storyBrain using as object
                          
                          storyBrain.getStory(),
                                           
                          style: TextStyle(
                            fontSize: 25.0,
                          ),
                                    
                          ),
                      ),
                      
                      ),





                 Expanded(
                  flex: 3,
                  child:Visibility(
                    visible: storyBrain.buttonShouldBeVisble(),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                  child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text(
                        //step 13
                        //use the story brain to get choice num1;
                        //getChoice class acces in storybrain.dart
                        storyBrain.getChoice1(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          ),
              
                      ),
                      onPressed: () {
                        //18 step
                        // call the nextStory()method from storyBrain and pass the number 1 as choice made by users
                        setState(() {
                           storyBrain.nextStory(1);
                        });
                        //storyBrain.nextStory();
                      },
                      ),
                  ),
                  ),
                  ),
                  
                   Expanded(
                    flex: 3,
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: TextButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blue)
                      ),
                      child: Text(
                        
                            //step 14
                        //use the story brain to get choice num1;
                        //getChoice class acces in storybrain.dart;
                         storyBrain.getChoice2(),
                        style: TextStyle(
                          color: Colors.white,
                        fontSize: 20,
                        ),
                        
                        ),
                      onPressed: () {
                        //Choice 2 made by user.
                        //step 19 call nextStory() method from and pass the number 2 as choice made user 2.
                        setState(() {
                          storyBrain.nextStory(2);
                        });
                      },
                      ),
                  ),
                  ),
                  
                   
                 
                ],
                ),
              ),
            ),
        
        );
  }
}
