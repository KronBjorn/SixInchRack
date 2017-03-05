# SixInchRack

This is a project for 6" cabinets and rack enclusures. 

For pictures have a look here:
 - http://www.thingiverse.com/thing:1957436
 - http://www.thingiverse.com/thing:1936196
 - http://www.thingiverse.com/thing:2084736

The project is a scaled down version of the familiar 19" rack standard, with the following size:
 - 1U is 14mm
 - The front plate is 155mm wide
 - The inside distance between the two vertical profiles is 115mm
 - The ears protrude 20mm
 
It is designed for the 20x20 extruded aluminium profile, but a profile can also be printed.


##I want to print a simple blank six inch cabinet
Go Thingiverse and locate this build: http://www.thingiverse.com/thing:1957436
In the customizer you specify how many units you need in height, and depth in mm you need.
Alternatively, fetch these files from the repository:...


##I want to print a simple six inch rack enclosure for cabinets
Go Thingiverse and locate this build: http://www.thingiverse.com/thing:1957436
In the customizer you specify which parts you need.
Alternatively, fetch these files from the repository:...

##I want to print a 6" cabinet for a specific component
Either go to thingiverse where you can find the stl's and pictures, or download the stl's form this repository. Currently the following components are supported by the community:

- http://www.thingiverse.com/thing:2084736 Raspberry Pi 3 Model B
- http://www.thingiverse.com/thing:1905998 Raspberry Pi B
- http://www.thingiverse.com/thing:2151578 Beaglebone Black
- http://www.thingiverse.com/thing:2123108 DPS5005 power supply
- http://www.thingiverse.com/thing:2105698 Beaglebone Black

##I want to make a new cabinet for my favourite module
Start by inspecting this file for inspiration _RackCabinets/RaspberryPiModelB/usb_back.scad_, and take a look at the how to section below.

1. Create a new file that includes _sixinch_library.scad_
2. Customize all the parts needed for your cabinet
3. Create a new folder with you project, and anything else needed like print descriptions
4. If you like, create a Thingiverse build with pictures and your stl, and add a link in this file

##Quick How To
A cabinet consist of five parts:
- Front plate
- Rear plate
- Cabinet
- Lid
- Handles

In a new file, include _sixinch_library.scad_. For each of the parts, there is module in the library where you can specify the most commonly used features like round and square holes, and pegs for supporting PCB's etc. The following examples are for Raspberry Pi 3 cabinet. <br>
The deafult modules obviously does not support everything you need, but should give you a good start for further customization. Feel free to add functionality to the library.

###Front Plate###
'''
square_hole        = [];
round_hole         = [[65 ,7.5, 3.1],[69.5 ,7.5, 3.1]];
round_peg          = [];   
screw_side_front   = [];
screw_top          = [36];
screw_bottom_front = [36];
units              = 2; 
frontplate(units,square_hole,round_hole,round_peg,screw_side_front,screw_top,screw_bottom_front);
'''






