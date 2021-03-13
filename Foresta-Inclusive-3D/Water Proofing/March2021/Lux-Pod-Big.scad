angleY = -25;
angleX = -19;
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
translate ([-12,-30,+27]) rotate ([angleX,angleY,angleZ])  cylinder (h=10, d=14);   
translate ([12,-30,+27]) rotate ([angleX,-angleY,-angleZ])  cylinder (h=10, d=12); 
}



        translate ([+13,-29,30]) rotate ([0,-56,40]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Water Proofing/March2021/Tube-screen-holder.stl");

        translate ([-13,-29,30]) rotate ([0,-124,-40]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Water Proofing/March2021/Tube-screen-holder.stl");











