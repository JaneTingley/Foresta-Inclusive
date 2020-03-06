
/*This sketch will subtract the ribs from the base - to create a new STL with the appropriately spaced holes.  Once it has been made, replace the exported stl with the base stl in skeleton.

Before you can import the piece to make the holes - you must modify the original and elogate the holes*/

thick=6.35;
plugWidth=10;  // holes will be 6.35mm wide, and 1cm long.

difference(){

linear_extrude(6.35) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/BASE.svg");

translate ([207,0,-4]) rotate ([0,-90,0]) linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/re-shapedspine-holemaker.svg");

translate ([60,525,123]) rotate ([-90,0,0]) linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Rib4-holemaker.svg");
translate ([1,390,156]) rotate ([-90,0,0]) linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Rib3-holemaker.svg");
translate ([31,255,154]) rotate ([-90,0,0]) linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Rib2-holemaker.svg");
translate ([75,120,123]) rotate ([-90,0,0]) linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Rib1-holemaker.svg");

}

