
standoff=-61;

intersection(){
    difference (){
       translate ([+0,-52,5]) resize([70,100,70]) sphere (100);
       translate ([-35,-102,-46]) cube ([90, 120, 50]); // big cube to cut sphere
    }
       translate ([-35,-102,-46]) cube ([90, 120, 53]); // big cube to cut sphere
}

difference(){
    translate ([-7.5,standoff,4]) cube ([15, 8, 30]); // big cube to cut sphere
    translate ([-3,standoff+4,+22]) cylinder (h=20, d=3);//wire hole
    translate ([+4,standoff+4,+22]) cylinder (h=20, d=3);//wire hole
}




