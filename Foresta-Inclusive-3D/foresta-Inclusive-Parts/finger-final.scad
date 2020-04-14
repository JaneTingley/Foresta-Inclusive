
$fn=100;
outFinger=19;

Inside2(); // thinner
Finger(); //shorter and fatter



module Finger(){
    translate([0,0,25]) difference(){
        union(){
            cylinder(h=50, d=outFinger, center=true);//  lower outer cylinder
            translate([-0.5,0,26]) sphere(d=outFinger); //outer sphere
            translate([5,0,40]) rotate([0,20,0]) 
                cylinder(h=33, d1=outFinger,d2=17, center=true);// upper cylinder outside
        }
        
        translate([0,0,0]) union(){
            translate([0,0,-1]) cylinder(h=53, d=outFinger-4, center=true); //lower inner 
            translate([-0.5,0,26]) sphere(8.5);//inner sphere
            translate([5,0,40]) rotate([0,20,0]) 
                cylinder(h=30, d=13, center=true);// upper cylinder inner
           
           translate([10.5,0,55]) rotate([0,20,0]) cylinder(h=4, d=15, center=true);// upper cylinder inner
        }
        
        translate ([+14,0,0]) cube ([14,4,130], center=true);
    }
}

module Inside2(){
    translate([20,0,15])  difference(){
        translate([5,0,-5]) cylinder(h=20, d=11.5, center=true);//outter
        translate([5,0,-5]) cylinder(h=23, d=7.5, center=true);//inner
        translate ([+12,0,0]) cube ([14,6,42], center=true); // space
    }
    translate ([+19,0,10]) cube ([4,3.5,20], center=true);//protrusion
}
