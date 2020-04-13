
$fn=100;

Finger2();
Inside2();

module Inside(){
    translate([20,0,15])  difference(){
        translate([5,0,-5]) cylinder(h=20, d=12, center=true);
        translate([5,0,-5]) cylinder(h=23, d=8, center=true);
        translate ([14,0,0]) cube ([14,4,42], center=true);
    }
}

module Inside2(){
    translate([20,0,15])  difference(){
        translate([5,0,-5]) cylinder(h=20, d=11.5, center=true);
        translate([5,0,-5]) cylinder(h=23, d=7.5, center=true);
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

module Finger2(){
    translate([0,0,25]) difference(){
        union(){
            cylinder(h=50, r=11, center=true);//  lower outter cylinder
            translate([-0.5,0,26]) sphere(11); //outter sphere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=30, d1=22,d2=16, center=true);// upper cylinder outside
        }
        
        translate([0,0,0]) union(){
            translate([0,0,-1]) cylinder(h=53, d=18, center=true); //lower inner 
            translate([-0.5,0,26]) sphere(9.00);//inner shere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=33, d=12, center=true);// upper cylinder inside
        }
        
        translate ([+14,0,0]) cube ([14,4,130], center=true);
    }
}