void setup(){
  fullScreen(FX2D);
  background(0);
  
}

void draw(){
  students();
}
boolean showclass;
boolean showmarks;
void students(){
  //menu bar
   fill(255);
   rect(0,0,width*0.25,height);
   
   //menu
   fill(0);
   textSize(36);
   text("MENU", width *0.05, height*0.05);
   
   //view score button
   fill(0,0,255);
   rect(width*0.05, height*0.15, width*0.15,height*0.1);
   fill(0);
   textSize(24);
   text("View Score", width *0.05, height*0.2);
   
   if(showclass == true){
     showCourses();
     if(showmarks == true){
       showMarks();
     }
   }

}

void showCourses(){
  ArrayList<String> yourclasses = new ArrayList<String>();
 
  textSize(20);
  fill(0);
  for(int i = 1; i<=yourclasses.size();i++){
    //courses.get(i-1).show();
    text(yourclasses.get(i-1), width*0.05, height *0.2 +i*60);
  }
}
void showMarks(){
  
}
void mouseReleased(){
  if(mouseX>width*0.05 && mouseX<width*0.2 && mouseY>height*0.15 && mouseY<height*0.25){
     showclass = true;
  }
  if(mouseX>width*0.05 && mouseX<width*0.2 && mouseY>height*0.25 && mouseY<height*0.55){
    showmarks = true;
  }
}