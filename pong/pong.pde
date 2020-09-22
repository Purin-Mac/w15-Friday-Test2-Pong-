class GamePong{
  int scoreP1, scoreP2; //score of each player
  float positionX, positionY, size; //position and size of center line
  
  GamePong(){ //constructor
  }
  
  void display(){ //show score and center line
  }
  
  int getScoreP1(){ //get player1 score
    return scoreP1;
  }
  
  int getScoreP2(){ //get player1 score
    return scoreP2;
  }
  
  void setScoreP1(){ //set player1 score
  }
  
  void setScoreP2(){ //set player2 score 
  }
}

class Pong{
  float positionX, positionY, speedX, speedY, size; //position, size and speed of ball
  
  Pong(){ //constructor
  }
  
  void draw(){ //draw ball
  }
  
  void move(){ //move ball
  }
  
  void bounce(float x, float y){ //bounce ball when hit wall
  }
  
  float getX(){ //get position x of ball
    return positionX;
  }
  
  float getY(){ //get position y of ball
    return positionY;
  }
  
  void setSpeedX(){ //set speed x of ball
  }
  
  void setSpeedY(){ //set speed y of ball
  }
}

class Paddle{
  float positionX, positionY, wide, high, speedY; // position, size and speed of paddle
  
  Paddle(){ //constructor
  }
  
  void draw(){ //draw paddle
  }
  
  void move(float x, float y){ //move paddle
  }
  
  void hit(float ballX, float ballY){ //paddle hit ball
  }
  
  float getX(){ //get position x of paddle
    return positionX;
  }
  
  float getY(){ //get position y of paddle
    return positionY;
  }
}
