
standoff=-61;

difference (){

   translate ([+0,-52,5]) resize([70,100,70]) sphere (100);

    translate ([-35,-102,-46]) cube ([90, 120, 50]); // big cube to cut sphere
    translate ([+000,+0,+5]) rotate ([90,0,0])  cylinder (h=20, d=7);//wire hole
    
    translate ([+0,-52,5]) resize([66,96,66]) sphere (100); // put at bottom when done

}

difference(){
    union(){
        translate ([-12,standoff,27]) cube ([23, 8, 10]); // big cube to cut sphere
        translate ([-7,standoff,35]) cube ([13, 8, 3]); // big cube to cut sphere
    }
    translate ([+7,standoff+4,+26]) rotate ([0,0,0])  cylinder (h=8, d=3);//wire hole
    translate ([-8,standoff+4,+26]) rotate ([0,0,0])  cylinder (h=8, d=3);//wire hole
}







