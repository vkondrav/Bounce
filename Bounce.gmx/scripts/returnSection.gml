//returnSection(x_cord, size, numOfSections, offset)
//
//returns the section number where the x cordinate is

x_cord = argument0;
size = argument1;
numOfSections = argument2;
offset = argument3;

if (x_cord <= offset || x_cord >= size + offset)
    return -1;
else{
    sectionSize = size / numOfSections;
    x_cord_temp = x_cord - offset;
    return floor(x_cord_temp / sectionSize)
}
    
