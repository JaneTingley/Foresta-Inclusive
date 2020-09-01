
difference ([]){
    union(){
        cube([44,55,28], center=true);
        translate([-30,0,+0]) cube([25,40,28], center=true);
        translate([5,11,0]) rotate([0,90,0])  cylinder (h=40,d=23, center=true);   
        translate([+20,-16,+11]) cube([6,19,5], center=true);
        translate([-47,0,-8]) cube([14,14,12], center=true);
    }
    translate([+0,0,-4]) cube([40,52,32], center=true);
    translate([-29,0,-4]) cube([22,36,32], center=true);
    translate([10,11,0]) rotate([0,90,0])  cylinder (h=40,d=20, center=true);
    translate([+22,-16,+11]) cube([5,17,3], center=true);
    translate([-45,0,-9]) cube([14,10,12], center=true);
}

