
difference(){

    union (){

        resize([70,100,40]) import("/Users/janetingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/3Dprint-small protozoa/To Print/LUX-pod.stl");

        difference (){
            translate ([-30,-76,+8]) cube ([60, 45, 27]);
            translate ([-28,-74,-2]) cube ([56, 41, 35]);
        }
    }
    
  translate ([-28,-74,-2]) cube ([56, 41, 35]); 
  #translate ([-28,-74,-2]) cylinder (h=10, d=14);   
    
}