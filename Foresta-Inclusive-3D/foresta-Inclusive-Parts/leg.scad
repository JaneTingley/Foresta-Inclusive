
$fn=100;
outFinger=19;

translate([50,0,0])Finger2();
translate([50,0,0]) Inside2();
Finger();
Inside();

module Inside(){
    translate([20,0,15])  difference(){
        translate([5,0,-5]) cylinder(h=20, d=13, center=true);//outter
        translate([5,0,-5]) cylinder(h=23, d=9, center=true);//inner
        translate ([14,0,0]) cube ([14,4,42], center=true);//space
    }
    translate ([+18,0,10]) cube ([3,4,20], center=true);//protrusion
}


module Finger(){
    translate([0,0,25]) difference(){
        union(){
            cylinder(h=50, d=outFinger, center=true);//  lower outer cylinder
            translate([-0.5,0,26]) sphere(d=outFinger); //outer sphere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=30, d1=outFinger,d2=17.5, center=true);// upper cylinder outside
        }
        
        translate([0,0,0]) union(){
            translate([0,0,-1]) cylinder(h=53, r=9, center=true); //lower inner 
            translate([-0.5,0,26]) sphere(9.00);//inner shere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=33, d=13.5, center=true);// upper cylinder inside
        }
        
        translate ([+14,0,0]) cube ([14,4,130], center=true);
    }
}

module Inside2(){
    translate([20,0,15])  difference(){
        translate([5,0,-5]) cylinder(h=20, d=11.5, center=true);//outter
        translate([5,0,-5]) cylinder(h=23, d=7.5, center=true);//inner
        translate ([+12,0,0]) cube ([14,4,42], center=true); // space
    }
    translate ([+19,0,10]) cube ([3,4,20], center=true);//protrusion
}

module Finger2(){
    translate([0,0,25]) difference(){
        union(){
            cylinder(h=50, d=outFinger, center=true);//  lower outter cylinder
            translate([-0.5,0,26]) sphere(d=outFinger); //outter sphere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=30, d1=outFinger,d2=16, center=true);// upper cylinder outter
        }
        
        translate([0,0,0]) union(){
            translate([0,0,-1]) cylinder(h=53, d=18, center=true); //lower inner 
            translate([-0.5,0,26]) sphere(9.00);//inner shere
            translate([5,0,40]) rotate([0,20,0]) cylinder(h=33, d=12, center=true);// upper cylinder inside
        }
        
        translate ([+14,0,0]) cube ([14,4,130], center=true);
    }
}