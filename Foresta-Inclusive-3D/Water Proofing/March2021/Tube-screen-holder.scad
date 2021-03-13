$fn =100;

difference (){
    rotate ([0,90,0]) cylinder (h=22, d=17, d2=13);
    translate ([+11,0,0]) rotate ([0,90,0]) cylinder (h=1, d=14);// screen spot
    translate ([-3,0,0]) rotate ([0,90,0]) cylinder (h=27, d1=13, d2=10);        
}

