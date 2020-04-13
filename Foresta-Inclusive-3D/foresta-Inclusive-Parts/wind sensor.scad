$fn=100;
//Bearing();
//Magnet();
translate([0,0,-20]) Mholder();
//Top();
//Base();



module Base(){
    height=30;
    difference(){
        translate([0,0,-height+4]) cylinder(h=height, d=30);
        translate([0,0,-.5]) cylinder(h=5, d=8);
        translate([0,0,-height]) cylinder(h=height, d=26);
}
}

module Magnet(){
    #translate([0,0,-20]) rotate([0,90,0])cylinder(h=10, d=4, center=true);
}

module Mholder(){
    difference(){
        translate([0,0,17.5]) cube ([6,8,2.5],center=true);//top nut hole
        translate([0,0,13]) cylinder(h=8, d=3);//centre hole
    }
    translate([0,5,14.75]) cube ([6,2,8],center=true);//side nut hole
    translate([0,-5,14.75]) cube ([6,2,8],center=true);//- side nut hole
    //translate([0,0,14.8]) cube ([6.5,6.5,2.5],center=true);//fake nut
    
    translate([0,0,12]) cube ([6,8,2.5],center=true);//bottom nut hole
    translate([0,0,8]) cube ([6,4,9], center=true);//shaft
    difference(){
        rotate([0,90,0]) cylinder(h=6, d=8, center=true);
        translate([0,0,0]) rotate([0,90,0])cylinder(h=10, d=4.25, center=true);
    }
}

module Top(){

    union (){
        translate([0,3,6]) cube ([4,68,4]);//shaft
        translate([+0,70,6.8]) rotate([0,25,0]) cube ([2,15,10]);//grip
    }
    rotate([0,0, 120]) union (){
        translate([0,3,6]) cube ([4,68,4]);//shaft
        translate([+0,70.6,6.8]) rotate([0,25,0]) cube ([2,15,10]);//grip
    }
    rotate([0,0, 240]) union (){
        translate([0,3,6]) cube ([4,68,4]);//shaft
        translate([+0,70.6,6.8]) rotate([0,25,0]) cube ([2,15,10]);//grip
    }
  difference(){
    translate([0,0,6]) cylinder(h=4, r=15);
    translate([0,0,3]) cylinder(h=8, d=3);//centre hole
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