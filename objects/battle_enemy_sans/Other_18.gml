///@desc Turn Preparation Start

//Prepare the attack

//Say something
/*var inst=instance_create_depth(x+100,y-150,0,battle_dialog_enemy);
inst.text="I am the funni boner";
inst.template=0;*/
var t = instance_create_depth(60,y+20,0,text_typer)
t.text = _text_cutscene_prefix + "{speed 4}{face_link 1}{face_emotion 5}{sans_sweat 2}          i've decided..{pause}{clear}im not giving you your turn. {sleep 40}{speed 8}ever.{pause}{clear}{speed 4}because this outcome is your fault&       and your fault only.{speed 4}{pause}{clear}   you're gonna have a bad time.{pause}{clear}{sleep 90}{font 0}{speed 6}       Sans is filled with&{color `red`}          DETERMINATION{pause}{face_emotion 0}{end}"
//t.text = _text_cutscene_prefix + "yes"
instance_create_depth(0,0,0,battle_turn_recreation);