difference (){
    rotate ([90,0,0]) resize([0,305,0], auto=true) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/trichonymphaToSlice_reducedPolyCount.stl", convexity=2);


    translate ([0,-36.0,0]) cube([203, 42, 380], center=true);
}