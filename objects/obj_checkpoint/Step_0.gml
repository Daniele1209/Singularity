/// @description Insert description here
// You can write your code in this editor

if(igen==1&&nem==0){
	nem=1;
	audio_play_sound(snd_moveselect,4,0)
	sprite_index=spr_checkpoint_destroyed;
	if(animation_end()){
instance_destroy();	
}
}