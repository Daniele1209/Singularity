/// @description Insert description here
// You can write your code in this editor
if not instance_exists(o_player) exit ;

y=o_player.y-30;
if(o_player.x>x && !o_player.x-x<boundry){
	x=x+(o_player.x-x)/3.5;
}
if(o_player.x<x && !x-o_player.x<boundry){
	x=x-(x-o_player.x)/3.5;
}
if(o_player.y>y && !o_player.y-y<boundry){
	y=y+(o_player.y-y)/3.5;	
}
if(o_player.y<y && !y-o_player.y<boundry ){
	y=y-(y-o_player.y)/3.5;	
}
