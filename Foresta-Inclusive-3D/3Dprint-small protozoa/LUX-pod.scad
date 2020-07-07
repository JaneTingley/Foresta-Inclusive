height=23;
upheight=10;


difference(){
    rotate([90,0,0])rotate_extrude(angle=180) import("/Users/jtingley/Desktop/Pods/pod.svg");

    translate([0,0,2])  rotate([90,0,0]) cylinder(h=10, r=3.5);// wire hole

}

