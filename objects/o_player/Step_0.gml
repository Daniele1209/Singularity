/// @description Insert description here
// You can write your code in this editor

switch(state){
	
	case "crazy":
	
		if not place_meeting(x,y+1,o_wall){
		vspd += grav;
		}
		if place_meeting(x,y+vspd,o_wall){
		while(not place_meeting(x,y+sign(vspd),o_wall)){
			y+=sign(vspd);
		}
		vspd=0;
		jumping=0;
		}
		y+=vspd;
	if(go==0){
	randomdir= irandom_range(0,40)
	
	alarm[0]= irandom_range(5,30);
	}
	go=1;

	if(randomdir%2==0 && go==1){
		sprite_index=spr_bad_run;
		image_xscale=2;
		image_speed=0.6;
		scr_move(hspd,0)
		if(irandom_range(0,100)%20==0 && jumping==0){
			vspd=-jump;
			jumping=1;
		}
	}
	else if(randomdir%2==1&&go==1){
		sprite_index=spr_bad_run;
		image_xscale=-2;
		image_speed=0.6;
		scr_move(-hspd,0)
		if(irandom_range(0,100)%20==0 && jumping==0){
			vspd=-jump;
			jumping=1
		}
	}
	sanity+=lose*5;
	if(sanity>=100){
		
	idle=spr_good_idle;
	run=spr_good_run;
	squishspr=spr_good_squish;
	interactspr=spr_good_interact;
	jumping=0;
	instance_create_layer(x,y,"Instances",obj_transform_good)
	state="move";	
	}

	
	break;
	case "lock":
	hspd=0;
	vspd=0;
	grav=0;
	lose=0;
	if(!instance_exists(obj_textevent)){
		grav=1;
		hspd=3.5;
		lose=0.35;
	state="move"	
	}
	break;
	case "dead":
	if(dead_check==1){
	audio_play_sound(snd_dead,4,0)
	dead_check=0;
	}
	hspd = 0;
	vspd = 0;
	sprite_index=spr_good_dead;
	image_speed=0.6;
	if(animation_end())
		respawn=1;
		state="respawned";
	
	break;
	
	case "respawned":
		if(respawn==1){
		audio_play_sound(snd_respawn,3,0)
		respawn=0;
		}
		x=obj_aux.x;
		y=obj_aux.y;
		sprite_index=spr_good_respawn;
		image_speed=0.6;
		if(animation_end()){
			instance_destroy();	
		}
	break;
	
	case "move":
	if(animation_end())
		squish = 0;
		
	if(!input.right && !input.left && !jumping && !squish){
		image_xscale = 2;
		sprite_index = idle;
	}
	
	if not place_meeting(x,y+1,o_wall){
		vspd += grav;
		}
	else if(input.jump){
		state="jump"	
	}
	
	if place_meeting(x,y+vspd,o_wall){
		while(not place_meeting(x,y+sign(vspd),o_wall)){
			y+=sign(vspd);
		}
		vspd=0;
		jumping = 0;
		state = "squished";
	}
	y+=vspd;
	
	if(input.right){
		if(!place_meeting(x+4,y,o_wall)){
		scr_move(hspd,0);
		if not jumping and not squish{
			image_xscale = 2;
			sprite_index = run;
			image_speed = 0.6;
		}
		}
	}
	if(input.left){
		if(!place_meeting(x-4,y,o_wall)){
		scr_move(-hspd,0);
		if not jumping and not squish{
			image_xscale = -2;
			sprite_index = run;
			image_speed = 0.6;
		}
		}
	}
	if(input.interact){
		if place_meeting(x,y+1,o_wall){
		state="interact"	
		}
	}

	break;
	
	case "interact":
		sprite_index = interactspr;
		instance_create_layer(x,y,"Instances",obj_interact);
		//image_speed=2;
		if(animation_end()){
			state="move";
		}
	break;
		
	case "jump":
		audio_play_sound(snd_jump,5,0)
		sprite_index = run;
		image_index=4;
		image_speed = 0;
		jumping = 1;
		vspd=-jump;	
		state = "move";
		
	break;

	case "squished": 
		audio_play_sound(snd_squish,5,0)
		sprite_index = squishspr;
		image_speed = 1;
		squish = 1;
		state="move";
	break;
}

if(start=1){
if(sanity>0){
sanity-=lose;
}
else {
	instance_create_layer(x,y,"Instances",obj_transfrom_bad)
	state= "crazy"
}
}
