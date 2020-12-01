/// @description Insert description here
// You can write your code in this editor
if(nig==0){
nig=1;	
	other.state="lock"
	create_textevent(["Wait...", "Nothing happened?","I WILL NOT BE ERASED FROM THIS WORLD!","MY WILL TO LIVE IS UNBEATABLE!","I can't belive it, all of this... for nothing","You will never be able to feel peace again"],[o_player,o_player,o_player2,o_player2,o_player,o_player2])
	
}	

if(!instance_exists(obj_textevent)){
	room_goto(r_credits);	
}