$fn =100;

difference (){
    rotate ([0,90,0]) cylinder (h=11, d=15, d2=13);
    translate ([+3,0,0]) rotate ([0,90,0]) cylinder (h=1, d=14);
    translate ([-3,0,0]) rotate ([0,90,0]) cylinder (h=22, d1=12, d2=10);        
}

