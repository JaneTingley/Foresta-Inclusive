difference(){
    union(){
    translate ([-2,-2,0]) cube([41, 50, 4]);
    translate ([11,-10,0]) cube([12, 12,9]);
    }
#sensor();
}









module sensor() {

    translate ([0,0,-21]) cube([37, 46, 22]);
    translate ([+2,+2,0]) cube([32, 40, 6.5]);
    translate ([13,-8,0]) cube([8, 10,7]);
}