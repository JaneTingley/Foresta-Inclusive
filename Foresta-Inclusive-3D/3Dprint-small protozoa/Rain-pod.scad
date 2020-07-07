$fn = 100;

height=23;
upheight=10;


difference(){
    scale([1.15,1.15,1.1]) rotate([90,0,0])rotate_extrude(angle=180) import("/Users/jtingley/Desktop/Pods/pod.svg");

    translate([0,0,2])  rotate([90,0,0]) cylinder(h=10, r=3.5);// wire hole
    translate([-19,-78,32]) sensor();
    
}

difference(){
    union(){
        difference(){
            translate ([-21,-80,+14]) cube([44, 58, 22]);
            translate ([-17,-73,+23]) cube([35.5, 47, 16.0]);
        }
    
       translate ([-5,-88,+19]) cube([11.5, 17,22]);
    }
    
    translate([-19,-78,32]) sensor();
}

translate ([-5,-73,+36]) cube([11.5,2,4]);







module sensor() {

    translate ([0,0,-21]) cube([40, 54, 22]);
    translate ([+2.5,+5,0]) cube([35, 47, 6.5]);
    translate ([16,-8,-22]) cube([7.5, 13.5,29]);
}
