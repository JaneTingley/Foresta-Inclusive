
$fn=100;

Finger();
Inside();

module Inside(){
    translate([20,0,15])  difference(){
        translate([5,0,-5]) cylinder(h=20, r=6.5, center=true);
        translate([5,0,-5]) cylinder(h=23, r=4.5, center=true);
        translate ([14,0,0]) cube ([14,4,42], center=true);
    }
}

module Finger(){
    translate([0,0,25]) difference(){
        union(){
            cylinder(h=50, r=11, center=true);//  lower outter cylinder
            translate([-0.5,0,26]) sphere(11); //outter shere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=30, r1=11,r2=8.75, center=true);// upper cylinder outside
        }
        
        translate([0,0,0]) union(){
            translate([0,0,-1]) cylinder(h=53, r=9, center=true); //lower inner 
            translate([-0.5,0,26]) sphere(9.00);//inner shere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=33, r=6.75, center=true);// upper cylinder inside
        }
        
        translate ([+14,0,0]) cube ([14,4,130], center=true);
    }
}