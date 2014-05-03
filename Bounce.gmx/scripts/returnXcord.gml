//returnXcord(org_x, org_y, dx, dy, g)
//return the x_cordinate where the block is going to hit

org_x = argument0;
org_y = argument1;
dx = argument2;
dy = argument3;
g = argument4;

x = org_x;
y = org_y;

if(g == 0) return -1;

while(true){
    x = x + dx;
    y = y + dy;
    dy = dy - g;  
   
    if(y <= org_y)
        return x;
}
