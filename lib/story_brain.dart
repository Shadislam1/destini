

import 'package:destini/story.dart';

class StoryBrain{
  //16
  //int _storyNumber =0;

List<Story>_storyData = [
   Story(
        storyTitle:
            'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
        choice1: 'I\'ll hop in. Thanks for the help!',
        choice2: 'Better ask him if he\'s a murderer first.'),
    Story(
        storyTitle: 'He nods slowly, unphased by the question.',
        choice1: 'At least he\'s honest. I\'ll climb in.',
        choice2: 'Wait, I know how to change a tire.'),
    Story(
        storyTitle:
            'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
        choice1: 'I love Elton John! Hand him the cassette tape.',
        choice2: 'It\'s him or me! You take the knife and stab him.'),
    Story(
        storyTitle:
            'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
        choice1: 'Restart',
        choice2: ''),
    Story(
        storyTitle:
            'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
        choice1: 'Restart',
        choice2: '')
  ];

 

String getStory(){
  return _storyData[_storyNumber].storyTitle;
}

//Step 11 getChoice1 class create
String getChoice1(){
  return _storyData[_storyNumber].choice1;
}

//Step 11 getChoice1 class create
String getChoice2(){
  return _storyData[_storyNumber].choice2;
}

int _storyNumber =0;

//17
//create method call nextstory .it should be have no output but it should be 1 input 
//create method call nextstory .it should be have no output but it should be 1 input 

 void nextStory(int choiceNumber){
    //TODO: Step 21 - Using the story plan, update nextStory to change the storyNumber depending on the choice made by the user.
    //When user is on story0 and they chose choice1, the story should progress to story2.
    if(choiceNumber == 1 && _storyNumber==0){
      _storyNumber =2;
    }else if(choiceNumber == 2 && _storyNumber==0 ){
      _storyNumber=1;
    }else if(choiceNumber ==1 && _storyNumber==1){
      _storyNumber =2;
    } else if (choiceNumber == 2 && _storyNumber == 1) {
      _storyNumber = 3;
    } else if (choiceNumber == 1 && _storyNumber == 2) {
      _storyNumber = 5;
    } else if (choiceNumber == 2 && _storyNumber == 2) {
      _storyNumber = 4;
    }
    //TODO: Step 22 - In nextStory() if the storyNumber is equal to 3 or 4 or 5, that means it's the end of the game and it should call a method called restart() that resets the storyNumber to 0.
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      restart();
    }
  }

  void restart() {
    _storyNumber = 0;
  }

  bool buttonShouldBeVisble(){
    // //You could also just check if (_storyNumber < 3)
    if(_storyNumber ==0 ||_storyNumber ==1||_storyNumber ==2){
      return true;
    }else{
      return false;
    }
  }
  }


