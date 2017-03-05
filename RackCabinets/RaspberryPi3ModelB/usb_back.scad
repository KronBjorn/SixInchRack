include<../sixinch_library.scad>


  ///////////////////////////////
 // Raspberry Pi 3 Model B    //
///////////////////////////////

print_frontplate_sml = false;
print_handle_sml     = false;
print_cabinet_sml    = false;
print_lid            = false;
print_rear           = true;

if(print_frontplate_sml){ // Frontplate //
    square_hole        = [];
    round_hole         = [[65 ,7.5, 3.1],[69.5 ,7.5, 3.1]];
    round_peg          = [];   
    screw_side_front   = [];
    screw_top          = [36];
    screw_bottom_front = [36];
    units              = 2; 
    frontplate(units,square_hole,round_hole,round_peg,screw_side_front,screw_top,screw_bottom_front);

}

if(print_handle_sml){ // Handle // 
    units              = 2;
    lay_flat_for_print = false;   
    handle(units,lay_flat_for_print);
}

if(print_cabinet_sml){ // Cabinet //  
    w=88;
    h=70;
    screw_bottom_front = [36];
    screw_side_front   = [];
    round_peg          = [[w,h,6,2.8,4],
                          [w-49,h,6,2.8,4],
                          [w-49,h-58,6,2.8,4],
                          [w,h-58,6,2.8,4]];
    depth              = 98;
    units              = 2;
    cabinet(depth,units,screw_bottom_front,round_peg,screw_side_front);
}

if(print_lid){ // Lid // 
    depth = 98;
    units = 2;
    screw_front = [36];//mm
    screw_back  = [36];//mm
    lid(98,2,screw_front,screw_back);        
}

if(print_rear){  // Back plate //    
    square_hole  = [[37 ,3, 17, 15] , [57 ,4, 15, 16] , [75,4,15,16] ];
    round_hole   = [[6,5,6],[6,1,6], [24,3.5,3.5],[24,1.2,3.5]  ,[30,3.5,3.5],[30,1.2,3.5]];
    screw_top    = [36];//mm
    screw_bottom = [36];//mm
    screw_side   = [];
    depth        = 98;
    units        = 2;
    back_plate(units,depth,screw_top,screw_bottom,screw_side,square_hole,round_hole);
}  



















