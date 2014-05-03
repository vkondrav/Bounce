//returnXcord(org_x, org_y, dx, dy, g, sFrame)
//return the final_frame when the block is going to hit

var org_x = argument0;
var org_y = argument1;
var dx = argument2;
var dy = argument3;
var org_dy = dy;
var g = argument4;
var sFrame = argument5;
var frameArray = -1;

mx = org_x;
my = org_y;

if(g == 0) return -1;

var j = 0;
for(var i = sFrame; true; i++){
    mx = mx + dx;
    my = my + dy;
    dy = dy - g;  
   
    if(my <= org_y){
        frameArray[j] = i;
        j = j + 1;
        dy = org_dy;
    }
    
    if(mx > room_width)
        return frameArray;
}
