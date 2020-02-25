//translate ([0,-14,37]) rotate ([90,0,0]) scale([1,2,1]) sphere (62);
difference (){
    rotate ([90,0,0]) resize([0,305,0], auto=true) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/trichonymphaToSlice_reducedPolyCount.stl", convexity=2);


    translate ([0,-36.0,0]) cube([203, 42, 380], center=true);
    #translate ([0,-27,20]) rotate ([90,0,0]) scale([1,2,1]) sphere (60); //This should be added when I do the final - do all modifications to the model before I slice it.
}