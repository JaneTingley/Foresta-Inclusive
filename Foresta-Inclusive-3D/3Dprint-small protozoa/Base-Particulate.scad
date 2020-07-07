$fn=100;

scale([1.15,1.15,1.1])  union(){
// Base

translate([-36,-91,0]) linear_extrude(2) import("/Users/jtingley/Desktop/Pods/pod-base.svg");


difference(){
    union(){
        
        intersection(){
        translate ([-32,-73,0]) cube ([8, 60, 10]);
            translate([-36,-91,0]) linear_extrude(20) import("/Users/jtingley/Desktop/Pods/pod-base.svg");
            rotate ([0,90,0]) translate([+0,-44,-23]) resize(newsize=[35,60,18]) sphere(r=10);

        }

        translate ([-1,-88,0])rotate([0,0,180]) intersection(){
        translate ([-32,-73,0]) cube ([8, 60, 10]);
            translate([-36,-91,0]) linear_extrude(20) import("/Users/jtingley/Desktop/Pods/pod-base.svg");
            rotate ([0,90,0]) translate([+0,-44,-23]) resize(newsize=[35,60,18]) sphere(r=10);

        }
    }
   translate([-36,-31,+6])  rotate([90,0,90]) #cylinder(h=70, r=2.5);
   translate([-36,-55,+6])  rotate([90,0,90]) #cylinder(h=70, r=2.5);
}

}