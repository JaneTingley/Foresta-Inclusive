$fn=100;
Bearing();
Shaft();


difference(){
    union(){
        translate([0,0,6]) cylinder(h=4, d=8);
        translate([+0,+0,6])rotate ([90,0,120]) cube ([4,4,40]);
        translate([+32,+18,6])rotate ([90,0,120]) cube ([2,6,10]);
        translate([+0,+0,6])rotate ([90,0,240]) cube ([4,4,40]);
        translate([-32,+19,6])rotate ([90,0,240]) cube ([2,6,10]);
        translate([+0,+0,6])rotate ([90,0,360]) cube ([4,4,40]);
        translate([+3,-37,6])rotate ([90,0,360]) cube ([2,6,10]);
    }
    translate([0,0,3]) cylinder(h=8, d=1.5);
}


module Shaft(){
    difference(){
    translate([0,0,-6]) cylinder(h=15, d=3);
    translate([0,0,3]) cylinder(h=8, d=1.5);
    }
}

module Bearing(){

    difference(){
        union(){
            translate([0,0,3]) cylinder(h=1, d=9.5);
            cylinder(h=3, d=8);
        }
        translate([0,0,-.5])cylinder(h=6, d=3);
    }
}