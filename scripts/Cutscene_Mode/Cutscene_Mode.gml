///@arg Faded
///@arg Fading
///@arg *Speed
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Cutscene_Mode(){
var t = argument[0]
var f = argument[1]
var spd = 8
if(argument_count>=3){
var spd = argument[2]	
}
if(t=true){
if(f=true){
Anim_Create(battle_board,"alpha_bg",0,0,battle_board.alpha_bg,-1,1*spd)	
Anim_Create(battle_board,"alpha_frame",0,0,battle_board.alpha_frame,-1,1*spd)
Anim_Create(battle_button_fight,"image_alpha",0,0,battle_button_fight.image_alpha,-1,1*spd)
Anim_Create(battle_button_act,"image_alpha",0,0,battle_button_act.image_alpha,-1,1*spd)
Anim_Create(battle_button_item,"image_alpha",0,0,battle_button_item.image_alpha,-1,1*spd)
Anim_Create(battle_button_mercy,"image_alpha",0,0,battle_button_mercy.image_alpha,-1,1*spd)
Anim_Create(battle_soul,"image_alpha",0,0,battle_soul.image_alpha,-1,1*spd)
Anim_Create(battle_ui,"image_alpha",0,0,battle_ui.image_alpha,-1,1*spd)
}else if(f=false){
battle_board.alpha_bg=0
battle_board.alpha_frame=0
battle_button.image_alpha=0
battle_soul.image_alpha=0
battle_ui.image_alpha=0
}
}else if(t=false){
if(f=true){
Anim_Create(battle_board,"alpha_bg",0,0,battle_board.alpha_bg,1,1*spd)	
Anim_Create(battle_board,"alpha_frame",0,0,battle_board.alpha_frame,1,1*spd)
Anim_Create(battle_button_fight,"image_alpha",0,0,battle_button_fight.image_alpha,1,1*spd)
Anim_Create(battle_button_act,"image_alpha",0,0,battle_button_act.image_alpha,1,1*spd)
Anim_Create(battle_button_item,"image_alpha",0,0,battle_button_item.image_alpha,1,1*spd)
Anim_Create(battle_button_mercy,"image_alpha",0,0,battle_button_mercy.image_alpha,1,1*spd)
Anim_Create(battle_soul,"image_alpha",0,0,battle_soul.image_alpha,1,1*spd)
Anim_Create(battle_ui,"image_alpha",0,0,battle_ui.image_alpha,1,1*spd)
}else if(f=false){
battle_board.alpha_bg=1
battle_board.alpha_frame=1
battle_button.image_alpha=1
battle_soul.image_alpha=1	
battle_ui.image_alpha=1
}	
}
}