class GamePong{
  int scoreP1, scoreP2; 
  float positionX, positionY, size;
  
  GamePong(){
  }
  
  void display(){
  }
  
  int getScoreP1(){
    return scoreP1;
  }
  
  int getScoreP2(){
    return scoreP2;
  }
  
  void setScoreP1(){
  }
  
  void setScoreP2(){
  }
}

class Pong{
  float positionX, positionY, speedX, speedY, size;
  
  Pong(){
  }
  
  void draw(){
  }
  
  void move(){
  }
  
  void bounce(float x, float y){
  }
  
  float getX(){
    return positionX;
  }
  
  float getY(){
    return positionY;
  }
}

class Paddle{
  float positionX, positionY, wide, high, speedY;
  
  Paddle(){
  }
  
  void draw(){
  }
  
  void move(float x, float y){
  }
  
  float getX(){
    return positionX;
  }
  
  float getY(){
    return positionY;
  }
}
