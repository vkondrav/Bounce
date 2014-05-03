//checkAvail(x,y,dx,dy,g,spawn_rate,amount)
//checks availability of frames

org_x = argument0;
org_y = argument1;
dx = argument2;
dy = argument3;
g = argument4;

spawn_rate = argument5;
amount = argument6;    

for(var i = 1; i <= amount; i++){
    finalFrame = returnFinalFrame(x,y,dx,dy,g,spawn_rate*i);
    
    t = instance_number(obj_block);
    for (var ii = 0; ii < t; ii++)
    {
        inst = instance_find(obj_block, ii);
        
        if(inst.final_frame == finalFrame)
            return false;
    }
}

return true;
    
