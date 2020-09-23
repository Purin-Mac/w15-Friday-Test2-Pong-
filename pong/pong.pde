GamePong game;
Pong  pongBall;
Paddle paddle1, paddle2;

void setup(){
  background(0);
  size(1000, 800);
  game = new GamePong();
  pongBall = new Pong();
}

void draw(){
  background(0);
  game.display();
  pongBall.draw();
  pongBall.move();
  pongBall.bounce(pongBall.getX(), pongBall.getY());
}

class GamePong{
  int scoreP1, scoreP2; //score of each player
  float positionX, positionY, size; //position and size of center line
  
  GamePong(){ //constructor
    scoreP1 = 0;
    scoreP2 = 0;
    size = 10;
    positionX = width/2 - size/2;
    positionY = 0;
  }
  
  void display(){ //show score and center line
    fill(255);
    rect(positionX, positionY, size, height);
    textSize(50);
    text(scoreP1, width/4, 50);
    text(scoreP2, width*3/4, 50);
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
    positionX = width/2;
    positionY = height/2;
    if(random(0, 1) < 0.5){
      speedX = -5;
    }
    else{
      speedX = 5;
    }
    speedY = random(-3, 3);
    size = 50;
  }
  
  void draw(){ //draw ball
    circle(positionX, positionY, size);
  }
  
  void move(){ //move ball
    positionX += speedX;
    positionY += speedY;
  }
  
  void bounce(float x, float y){ //bounce ball when hit wall
    if(x+size/2 > width){ //right over window
      speedX = -speedX;
    }
    if(x-size/2 < 0){ //left over window
      speedX = -speedX;
    }
    if(y+size/2 > height){ //bottom over window
      speedY = -speedY;
    }
    if(y-size/2 < 0){ //top over window
      speedY = -speedY;
    }
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
