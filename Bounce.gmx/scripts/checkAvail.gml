//checkAvail(org_x,org_y,dx,dy,g,spawn_rate,amount)
//checks availability of frames

var org_x = argument0;
var org_y = argument1;
var dx = argument2;
var dy = argument3;
var g = argument4;

var spawn_rate = argument5;
var amount = argument6;    
var finalFrame;

for(var i = 1; i <= amount; i++){
    finalFrame = returnFinalFrames(org_x,org_y,dx,dy,g,spawn_rate*i);
    
    t = instance_number(obj_block);
    for (var ii = 0; ii < t; ii++)
    {
        inst = instance_find(obj_block, ii);
        
        if (is_array(finalFrame))
            for(var j = 0; j < array_length_1d(finalFrame); j++)
                for(var jj = 0; jj < array_length_1d(inst.finalFrameArray); jj++)
                    if(abs(inst.finalFrameArray[jj] - finalFrame[j]) < room_speed)
                        return false;
    }
}

return true;
    
