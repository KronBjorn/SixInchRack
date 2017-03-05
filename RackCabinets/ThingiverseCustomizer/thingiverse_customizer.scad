$fn = 50*1;




   //////////////////////////////////////////////////
  //  PASTE ALL OF: sixinch_library.scad IN HERE  //
 //   Thingiverse can only accept one file.      //
//////////////////////////////////////////////////




Part = "-"; // [a:All, b:FrontPlate, c:Cabinet, d:Lid, e:BackPlate, f:Handles]
Units = 4;
Depth = 115;

go();

module go(){
    rotate([90,0,-90]){
        if(Part=="a"){
            frontplate(Units,[],[],[],[Units/2],[45],[45]);
            cabinet(Depth,Units,[45],[],[Units/2]);
            lid(Depth,Units,[45],[45]);        
            back_plate(Units,Depth,[45],[45],[Units/2],[],[]);
            handle(Units,false);   
        }else if(Part=="b"){
            frontplate(Units,[],[],[],[Units/2],[45],[45]);
        }else if(Part=="c"){
            cabinet(Depth,Units,[45],[],[Units/2]);
        }else if(Part=="d"){
            lid(Depth,Units,[45],[45]); 
        }else if(Part=="e"){
            back_plate(Units,Depth,[45],[45],[Units/2],[],[]);
        }else if(Part=="f"){
            handle(Units,true);
        }
    }
}












