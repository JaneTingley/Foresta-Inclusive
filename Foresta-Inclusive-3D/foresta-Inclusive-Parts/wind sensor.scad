$fn=100;
//Bearing();
//Magnet();
//translate([0,0,-20]) Mholder();
//Top();
Base();



module Base(){
    height=10; // change height
    difference(){
        translate([0,0,-height+5]) cylinder(h=height, d=30);
        translate([0,0,-.5]) cylinder(h=6, d=16.25);
        translate([0,0,-height+0]) cylinder(h=height, d=26);
}
}

module Magnet(){
    #translate([0,0,-20]) rotate([0,90,0])cylinder(h=10, d=4, center=true);
}

module Mholder(){
    
    difference(){
        translate([0,0,17.4]) cube ([7,14,2],center=true);//top of nut hole
        translate([0,0,13]) cylinder(h=8, d=5);//centre hole
    }
    translate([-3.5,5,11]) cube ([7,2,6.4]);//side nut hole
    translate([-3.5,-7,11.0]) cube ([7,2,6.4]);//- side of nut hole
    //translate([0,0,14.7]) cube ([9,9,3],center=true);//fake nut
    
    translate([0,0,12]) cube ([7,10,2.0],center=true);//bottom of nut hole
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
    translate([0,0,3]) cylinder(h=8, d=5);//centre hole
}  
}


module Bearing(){

    difference(){
        cylinder(h=5, d=16);
        translate ([0,0,-.5]) cylinder(h=6, d=5);
    }
       
}