pitch = 2.54;

//bottom mounting bracket
bottom = [7,20.2,1.8];
b_pos = [0,-10.1,0];
m_hol = [1.4*3/2,1.4,3.8];
m_cyl = [0.5,0.5,1];
m_pos = [3.5,7.5,-1 ];
m_pos2 = [3.5,-7.5,-1];

//bottom bracket
difference(){
translate(b_pos)cube(bottom);

translate(m_pos)
    scale(m_hol)cylinder(m_cyl,true, $fn=18);
translate(m_pos2)
   scale(m_hol)cylinder(m_cyl,true, $fn=18);
}
//pins
pitch = 2.54;
pin = [0.5,0.5,5.5];
offset = [0,-3.8,-(5.5-1.8)];

for(i=[0:3]){
translate(offset+[0,i*pitch,0])
    color("silver",1)
    cube(pin);
}

//body
bl = [12.6,9.8,10.8];
bl_pos = [0,-9.8/2,0];

bu = [10,10,1.7];
bu_pos = [2.8+6.4-4.2,-5,3.9];

difference(){
translate(bl_pos)cube(bl);
translate(bu_pos)cube(bu);
}



