//returnXcord(org_x, org_y, dx, dy, g, sFrame)
//return the final_frame when the block is going to hit

org_x = argument0;
org_y = argument1;
dx = argument2;
dy = argument3;
g = argument4;
sFrame = argument5;

x = org_x;
y = org_y;

if(g == 0) return -1;

for(var i = sFrame; true; i++){
    x = x + dx;
    y = y + dy;
    dy = dy - g;  
   
    if(y <= org_y)
        return i;
}
