
$fn=100;
outFinger=21.5;


Finger(); //shorter and fatter



module Finger(){
    
    translate ([0,0,0]) cylinder(h=2, d=30, center=true);
    translate ([0,0,10/2]) difference(){
            cylinder(h=10, d=outFinger, center=true);//  lower outer cylinder
            translate([0,0,-1]) cylinder(h=13, d=outFinger-4, center=true); //lower inner 
        } 
}


