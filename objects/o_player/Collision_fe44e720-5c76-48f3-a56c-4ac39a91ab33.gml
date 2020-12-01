/// @description Insert description here
// You can write your code in this editor
if(sanity+70>100)
sanity=100;
else
sanity=sanity+70;

instance_destroy(obj_aux);
instance_create_layer(x,y,"Instances",obj_aux)