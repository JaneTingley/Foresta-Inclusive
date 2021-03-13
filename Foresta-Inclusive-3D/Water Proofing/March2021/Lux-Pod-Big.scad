angleY = -101;
angleX = -12;
angleZ = 0;
cubeY=45;
cubeX=56;
cubeZ=27;
cubeYcoord=-77;
cubeXcoord=-28;
cubeZcoord=6;

difference (){
    union () {
        translate ([+0,-52,5]) resize([70,100,70]) sphere (100);
        translate ([cubeXcoord,cubeYcoord,cubeZcoord]) cube ([cubeX, cubeY, cubeZ]);//outer cube   
    }  
    translate ([+0,-52,5]) resize([66,96,66]) sphere (100); // put at bottom when done
    translate ([cubeXcoord+2,cubeYcoord+2,cubeZcoord+2]) cube ([cubeX-4, cubeY-4, cubeZ-3]);//inner cube
    translate ([-35,-102,-46]) cube ([90, 120, 50]); // big cube to cut sphere
    translate ([+000,+0,+5]) rotate ([90,0,0])  cylinder (h=20, d=7);//wire hole
    translate ([-22,-27,+18]) rotate ([angleX,angleY,angleZ])  cylinder (h=16, d=12); //hole right  
    translate ([-7,-17,+16]) rotate ([+9,-99,296])  cylinder (h=15, d=12); //bottom hole right 
    translate ([22,-27,+18]) rotate ([angleX,-angleY,-angleZ])  cylinder (h=16, d=12);  // hole left
    translate ([7,-17,16]) rotate ([-9,-99,248])  cylinder (h=16, d=12);  // bottom hole left
}


difference(){
    
    union (_){
        translate ([+18,-28,19]) rotate ([0,+11,11]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Water Proofing/March2021/Tube-screen-holder.stl");// left

        translate ([+9,-14,16]) rotate ([0,8,55]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Water Proofing/March2021/Tube-screen-holder.stl");// bottom left

/**************************/

        translate ([-18,-28,19]) rotate ([0,+169,-11]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Water Proofing/March2021/Tube-screen-holder.stl"); // right


        translate ([-9,-14,16]) rotate ([0,-188,-55]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Water Proofing/March2021/Tube-screen-holder.stl"); // bottom right
    }    
    translate ([+0,-52,5]) resize([66,96,66]) sphere (100); // put at bottom when done

}







