


protozoa();





















module protozoa(){
    difference(){
    
    union(){
        intersection(){
           translate ([228,330,+11]) scale([1.6,2.62,1]) sphere (129);
           linear_extrude (200) import("/Users/jtingley/Dropbox/Foresta-Inclusive/March-Cut/Base.svg"); 
        }
        intersection(){
          
           linear_extrude (190) import("/Users/jtingley/Dropbox/Foresta-Inclusive/March-Cut/Base.svg");  
           translate ([230,330,-31]) scale([1.4,2.62,1.5]) sphere (129);
        }
    }
    translate ([230,325,-35]) scale([1,2,1]) sphere (129); 
}
}
