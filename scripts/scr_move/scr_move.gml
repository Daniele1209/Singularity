var xspeed = argument0;
var yspeed = argument1;
if not place_meeting(x+xspeed,y,o_wall){
x+=xspeed;	
}
if not place_meeting(x,y+1,o_wall){
y+=yspeed;	
}