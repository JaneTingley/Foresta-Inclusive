difference(){

    translate([22,-45,13])  rotate([0,15,0]) resize(newsize=[30,60,6]) sphere(r=10);
    
    rotate([90,0,0])rotate_extrude(angle=180) import("/Users/jtingley/Desktop/pod.svg");

    translate([0,0,7])  rotate([90,0,0]) cylinder(h=10, r=2.5);// wire hole

    translate([18.0,-44,12])  rotate([0,20,0]) resize(newsize=[30,61,15]) sphere(r=10);


}