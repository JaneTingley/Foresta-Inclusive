
thick=6.35;
plugWidth=10;  // holes will be 6.35mm wide, and 1cm long.

skeleton();
//Rib1();
//Rib2();
//Rib3();
Rib4();
//Rib5();



module Rib5(){
      //14 - 17 614.52-646.28
    translate ([+41,+639.92,139]) rotate ([-90,0,0])linear_extrude(thick)   import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/last-Rib/Rib4-14x635.svg");
    
    
    //7 - 13 
    translate ([+41,+608.17,139]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/last-Rib/Rib4-7x635.svg");

    
     //4 - 6 
    translate ([+41,+563.66,139]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/last-Rib/Rib4-4x635.svg");
    
 //closest to rib4   
    translate ([+41,+544.7,139]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/last-Rib/Rib4-0.svg");
     
    translate ([+41,+538.35,139]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/last-Rib/Rib4-0.svg");
    
    translate ([+41,+532,139]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/last-Rib/Rib4-0.svg");

    
    
    
    }
module Rib4(){  
 //Rib 4 -4 cork pieces 
    translate ([-1,+499.65,155]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib4/rib4-3x635.svg");    
  //middle
    translate ([-1,+490,155]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib4/rib4-2x635.svg");

    //closest to rib3
    translate ([-1,+396.35,155]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib4/rib4-1x635.svg");
}

module Rib3(){
     
    translate ([-2,+383.65,168]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib3/rib3-635.svg");
    
    translate ([+0,+261.35,168]) rotate ([-90,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib3/rib3-635.svg");

}
module Rib2(){   
   //Rib2-19-22 x6-35      
   #translate ([-20,+253.35,163]) rotate ([-90,0,0])linear_extrude(thick)  import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-19x6-35.svg");
  
    translate ([-20,+247,163]) rotate ([-90,0,0])linear_extrude(thick)
    import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-19x6-35.svg");

    translate ([-20,+240.65,163]) rotate ([-90,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-19x6-35.svg");
 
  //Rib2-13-18 x6-35 
    
   translate ([-37,+234.3,152]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-13x6-35.svg");
  
  translate ([-37,+227.95,152]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-13x6-35.svg");
  
    translate ([-37,+221.6,152]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-13x6-35.svg");
  
  translate ([-37,+215.25,152]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-13x6-35.svg");
  
  translate ([-37,+208.9,152]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-13x6-35.svg");  
   
    translate ([-37,+202.55,152]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-13x6-35.svg"); 
    
 //Rib2-9-12 x6-35   
    translate ([-10,+196.2,145]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-9x6-35.svg");
    
    translate ([-10,+189.85,145]) rotate ([-90,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-9x6-35.svg");
    
    translate ([-10,+183.5,145]) rotate ([-90,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-9x6-35.svg");
    
    translate ([-12,+177.15,146]) rotate ([-90,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-9x6-35.svg");
    
//Rib2-1-9 x6-35
    
    translate ([+10,+170.8,145]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-8x6-35.svg");   
    translate ([+6,+164.45,145]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-7x6-35.svg");  
    translate ([+6,+158.1,145]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-6x6-35.svg");
    translate ([+6,+151.75,145]) rotate ([-90,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-5x6-35.svg");        
    translate ([+47,+145.4,158]) rotate ([-90,0,0])linear_extrude(thick)  import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-4x6-35.svg");
    translate ([+48,+139.05,159]) rotate ([-90,0,0])linear_extrude(thick)  import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-3x6-35.svg");
    translate ([+48,+132.7,162]) rotate ([-90,0,0])linear_extrude(thick)  import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-2x6-35.svg");
    translate ([+18,+126.35,129]) rotate ([-90,0,0])linear_extrude(thick)  import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib2/rib2-1x6-35.svg");

    }
module Rib1(){
  //Rib1-6-35
translate ([+0,113.65,127]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-6-35.svg");
translate ([+0,107.3,127]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-6-35.svg");
translate ([+0,100.95,127]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-6-35.svg");

//Rib1-3x6-35
translate ([+65,94.6,121]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-3x6-35.svg");
translate ([+65,88.25,121]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-3x6-35.svg");
translate ([+65,82,121]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-3x6-35.svg");

//Rib1-7x6-35
translate ([+98,75.65,124]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-7x6-35.svg");


//Rib1-8x6-35
translate ([+95,69.3,134]) rotate ([270,0,0])linear_extrude(thick)  import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-8x6-35.svg");
translate ([+95,62.95,134]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-8x6-35.svg");
translate ([+95,56.6,134]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-8x6-35.svg");

//Rib1-11x6-35
translate ([+101,50.25,133])  rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-11x6-35.svg");
translate ([+101,43.9,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-11x6-35.svg");
translate ([+101,37.55,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-11x6-35.svg");
translate ([+101,31.20,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-11x6-35.svg");

//Rib1-15x6-35
translate ([+86,24.85,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-15x6-35.svg");
translate ([+86,18.5,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-15x6-35.svg");
translate ([+86,12.15,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-15x6-35.svg");

//Rib1-18x6-35    
translate ([+86,5.8,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-18x6-35.svg");
translate ([+86,-0.55,133]) rotate ([270,0,0])linear_extrude(thick) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/Cork-slices/rib1-18x6-35.svg");

}

module skeleton(){
    
linear_extrude(6.35) import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/TO-CUT-M6/Base-w-HOLES.svg");
    
translate ([207,20,142]) rotate ([90,180,270]) linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/TO-CUT-M6/Spine-w-HOLES.svg");
 
translate ([96,120,83]) rotate ([270,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/TO-CUT-M6/Rib1-w-HOLES.svg");

translate ([40,255,136]) rotate ([270,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/TO-CUT-M6/Rib2-w-HOLES.svg");

translate ([+27,390,142]) rotate ([270,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/TO-CUT-M6/Rib3-w-HOLES.svg");

translate ([88,525,97]) rotate ([270,0,0])linear_extrude(thick)import("/Users/jtingley/Documents/GitHub/Foresta-Inclusive/Foresta-Inclusive-3D/Foresta-Inclusive-Jane/slices-March/TO-CUT-M6/Rib4-w-HOLES.svg");
}



