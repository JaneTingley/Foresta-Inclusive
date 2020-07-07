


difference(){

    rotate([90,0,0])rotate_extrude(angle=180) import("/Users/jtingley/Desktop/Pods/pod.svg");
;



    translate([0,0,2])  rotate([90,0,0]) cylinder(h=10, r=3.5);// wire hole

//side 1
    translate([-22,-45,16])  rotate([0,-15,0]) resize(newsize=[30,60,6]) sphere(r=10);
    translate([-22,-45,9])  rotate([0,-15,0]) resize(newsize=[30,60,6]) sphere(r=10);

    translate([22,-45,16])  rotate([0,15,0]) resize(newsize=[30,60,6]) sphere(r=10);// side hole
    translate([22,-45,9])  rotate([0,15,0]) resize(newsize=[30,60,6]) sphere(r=10);
}


// side 1 hood
translate([4,0,5]) import("/Users/jtingley/Desktop/Pods/hood.stl");
translate([0,0,-2]) import("/Users/jtingley/Desktop/Pods/hood.stl");

// side hood 2
translate([-4,0,5])import("/Users/jtingley/Desktop/Pods/hood2.stl");
translate([0,0,-2])import("/Users/jtingley/Desktop/Pods/hood2.stl");




    






/* Base
translate([-36,-91,0]) linear_extrude(4) import("/Users/jtingley/Desktop/pod-base-inner.svg");

translate([-36,-91,0]) linear_extrude(2) import("/Users/jtingley/Desktop/pod-base.svg");
*/