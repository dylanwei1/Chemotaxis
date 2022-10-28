 //declare bacteria variables here   
 Bacteria [] cells;
 void setup()   
 {     
   //initialize bacteria variables here  
   size(400,400);
   background(0,0,0);
   cells = new Bacteria[30];
   for(int i = 0; i < cells.length; i++){
     cells[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   background(0);
   //move and show the bacteria   
   for(int i = 0; i < cells.length; i++){

     cells[i].move();
     cells[i].show();
   }
 }  
 class Bacteria    
 {     
   //lots of java!   
   int myX, myY;
   int myC;
   Bacteria(){
     myC = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     myX = 200;
     myY = 200;
   }
   void move(){
     //myX = myX + (int)(((Math.random()*mouseX)-200))/20;
     //myY = myY + (int)(((Math.random()*mouseY)-200))/20;
     myX = myX + ((mouseX-200)/100)+(int)((Math.random()*6)-3);
     myY = myY + ((mouseY-200)/100)+(int)((Math.random()*6)-3);
     
   }
   void show(){
     noStroke();
     fill(myC);
     ellipse(myX,myY,20,20);
   }
 }    

