tube_height=12.4;
tube_r=3.175/2;
tube_bottom_h=1.4;
tube_bottom_r=3.175;
tube_pos1=[5.84,8.13,4.3];
tube_pos2=[12.19,5.08,4.3];

ceramic_pack=[15.24,15.24,1];
ceramic_pack_pos=[0,0,3.3];

bottom_pack=[15,13,3.3];
bottom_pack_pos=[0.12,1.12,0];

pin=[0.5,0.5,8.6];
pin_pos1=[3.81,0,0];
pin_pos2=[3.81,15.24,0];

translate(ceramic_pack_pos)
    color("white",1)
    cube(ceramic_pack);

translate(bottom_pack_pos)
    color("grey",1)
    cube(bottom_pack);

translate(tube_pos1)
    color("grey",1)
    cylinder(tube_height,tube_r,tube_r,false, $fn=18);
 
translate(tube_pos1)
    color("grey",1) 
    cylinder(tube_bottom_h,tube_bottom_r,tube_bottom_r,false,  $fn=18);

translate(tube_pos2)
    color("grey",1)
    cylinder(tube_height,tube_r,tube_r,false,  $fn=18);
    
translate(tube_pos2)
    color("grey",1) 
    cylinder(tube_bottom_h,tube_bottom_r,tube_bottom_r,false,  $fn=18);

for(i=[0:3]){
translate(pin_pos1+[i*2.54,0,0])
    color("silver",1)
    cube(pin,true);

}
for(i=[0:3]){
translate(pin_pos2+[i*2.54,0,0])
    color("silver",1)
    cube(pin,true);

}