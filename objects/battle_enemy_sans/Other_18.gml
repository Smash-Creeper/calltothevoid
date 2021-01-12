///@desc Turn Preparation Start

//Prepare the attack
instance_create_depth(0,0,0,battle_turn_sans1);

//Say something
var inst=instance_create_depth(x+100,y-110,0,battle_dialog_enemy);
inst.text="I am the funni boner";
inst.template=0;