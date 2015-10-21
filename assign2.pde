/* please implement your assign1 code in this file. */
PImage backGround1,start2,start1,backGround2,fighter,treasure,enemy,hp,end1,end2;
int backGround1x=0,backGround2x=640,treasurex=(int)random(630),treasurey=(int)random(430),enemyx=0,enemyy=(int)random(430),k=200,playA=0;
float fighterx=580;
float fightery=220;
float speed = 5;

boolean upPressed = false;
boolean downPressed = false;
boolean leftPressed = false;
boolean rightPressed = false;
boolean playing =false ;
void setup () {
  size(640,480) ;  // must use this size.
 // void mousePressed (){
  
  //};
  backGround1 = loadImage("img/bg1.png");
  backGround2 = loadImage("img/bg2.png");
  fighter = loadImage("img/fighter.png");
  treasure = loadImage("img/treasure.png");
  enemy = loadImage("img/enemy.png");
  hp = loadImage("img/hp.png");
  start2=loadImage("img/start2.png");
  start1=loadImage("img/start1.png");
  end2=loadImage("img/end2.png");
  end1=loadImage("img/end1.png");
  // your code
}

void draw() {
  image(start2,0,0);
  if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420){
    image(start1,0,0);
  }
  if(mousePressed){
    if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420)
    playing=true;playA=2;
  }
  switch(playA){
  case 2:
  if (k==-100) {k=200;fighterx=580;fightery=220;
    
   }
  if(playA==2){
  background(0);
  image(backGround1,backGround1x-640,0);
  image(backGround2,backGround2x-640,0);
  image(fighter,fighterx,fightery);
  image(treasure,treasurex,treasurey);
  image(enemy,enemyx,enemyy);
  image(hp,40,40);
  fill(255,0,0,75);
  rect(45,45,k,20,100);
  backGround1x%=1280;backGround2x%=1280;
  enemyx+=3;enemyx%=640;
  backGround1x+=1;
  backGround2x+=1;
  if (upPressed) {
    fightery -= speed;
  }
  if (downPressed) {
    fightery += speed;
  }
  if (leftPressed) {
    fighterx -= speed;
  }
  if (rightPressed) {
    fighterx += speed;
  }
  if (fighterx >=580) {
    fighterx -=speed;
  }
  if (fighterx <=0) {
    fighterx +=speed;
  }
  if (fightery <=0) {
    fightery +=speed;
  }
   if (fightery >=430) {
    fightery -=speed;
  }
  if (enemyx ==0) {
    enemyy=(int)random(430);
  }
  if (enemyx >=fighterx-5 && enemyy>=fightery-20  && enemyy<=fightery+60 && enemyx <=fighterx+60) {
    k-=40;enemyx=0;enemyy=(int)random(430);
  }
    if (treasurex >=fighterx-5 && treasurey>=fightery-10  && treasurey<=fightery+60 && treasurex <=fighterx+60 && k<200) {
    k+=20;treasurex=(int)random(600);treasurey=(int)random(430);
  }
  if (treasurex >=fighterx-5 && treasurey>=fightery-10  && treasurey<=fightery+60 && treasurex <=fighterx+60 ) {
    ;treasurex=(int)random(600);treasurey=(int)random(430);
  }
  if (enemyx <=fighterx && enemyy<=fightery-20) {
    enemyy +=3;
  } 
  if (enemyx <=fighterx && enemyy>=fightery+60) {
    enemyy -=3;
  }
  if (k<=0) {k=-100;
    playA=1;
   }
 }break;
  case 1:
   if (playA==1) {
   image(end2,0,0);
    if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420){
    image(end1,0,0);}
  
  
  if(mousePressed){
    if(pmouseX>=100&&pmouseX<=540&&pmouseY>=300&&pmouseY<=420)
    playA=2;//k=200;
  }break;}}
 

  
    
  
  // your code
}

void keyPressed(){
  if (key == CODED) { // detect special keys 
    switch (keyCode) {
      case UP:
        upPressed = true;
        break;
      case DOWN:
        downPressed = true;
        break;
      case LEFT:
        leftPressed = true;
        break;
      case RIGHT:
        rightPressed = true;
        break;
    }
  }
}
void keyReleased(){
  if (key == CODED) {
      switch (keyCode) {
        case UP:
          upPressed = false;
          break;
        case DOWN:
          downPressed = false;
          break;
        case LEFT:
          leftPressed = false;
          break;
        case RIGHT:
          rightPressed = false;
          break;}}
}
