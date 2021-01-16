///@desc Turn Preparation Start

//Prepare the attack

//Say something
/*var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
inst.text="I am the funni boner";
inst.template=0;*/
var t = instance_create_depth(60,y+20,0,text_typer)
t.text = _text_cutscene_prefix + "{pause}{end}"
//t.text = _text_cutscene_prefix + "yes"
instance_create_depth(0,0,0,battle_turn_recreation);