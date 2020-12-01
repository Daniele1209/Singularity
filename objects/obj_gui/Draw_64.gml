/// @description Insert description here
// You can write your code in this editor

if(instance_exists(o_player) && o_player.start==1){
//draw_rectangle_colour(300,50,(o_player.sanity*1070)/100,100,c_blue,c_blue,c_blue,c_blue,false);
//draw_rectangle_colour(300,50,1070,100,c_black,c_black,c_black,c_black,true);
draw_sprite_ext(spr_sanity_bar,0,365,50,5,5,0,-1,1);
draw_sprite_ext(spr_sanity,0,590,60,(o_player.sanity*0.05)/1,5,0,-1,1);
}