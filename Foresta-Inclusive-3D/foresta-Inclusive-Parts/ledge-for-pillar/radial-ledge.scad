$fn=100;

difference(){
    linear_extrude(5) circle (d=255);
    translate([0,0,+1]) linear_extrude(12.0) circle (d=250);
    translate([0,0,-1]) linear_extrude(3) circle (d=240);
    
    #translate([-210,-60,-1]) cube([500,200,8]);
    #translate([-60,-240,-1]) cube([200,500,7]);
}