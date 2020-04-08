
$fn=100;

translate([0,0,25]) difference(){
    union(){
        cylinder(h=50, r=11, center=true);
        translate([-0.5,0,26]) sphere(11);
        translate([5,0,40]) rotate([0,20,0]) cylinder(h=30, r1=11,r2=8, center=true);
    }
    
    translate([0,0,0]) union(){
        translate([0,0,-1]) cylinder(h=53, r=9, center=true);
        translate([-0.5,0,26]) sphere(9.00);
        translate([5,0,40]) rotate([0,20,0]) cylinder(h=33, r=6, center=true);
    }
    
    translate ([+14,0,0]) cube ([14,4,130], center=true);
}

translate([20,0,15])  difference(){
        translate([5,0,0]) cylinder(h=30, r=5.75, center=true);
        translate([5,0,0]) cylinder(h=33, r=3.75, center=true);
        translate ([14,0,0]) cube ([14,4,42], center=true);
}