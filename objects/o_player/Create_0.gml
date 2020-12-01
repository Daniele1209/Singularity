/// @description Insert description here
// You can write your code in this editor
gamepad_set_axis_deadzone(0, 0.7);
hspd=3.5;
vspd=0 ;
jump=14;
input = o_input;
grav=1;
jumping=0;
squish=0;
image_xscale=2;
image_yscale=2;
state="move"
depth=-10000;
sanity=100;
dead=0;
dead_check=0;
respawn=0;
lose=0.23;
start=0;
go=0;

if gpu_get_texfilter()
    {
    gpu_set_texfilter(true);
    }
else
    {
    gpu_set_texfilter(false);
    }
	
idle=spr_good_idle;
run=spr_good_run;
squishspr=spr_good_squish;
interactspr=spr_good_interact;
	
reset_dialogue_defaults();
myPortrait=spr_good_portrait;
myVoice=snd_voice1;
myFont=fnt_dialogue;
myName="Blobbert"