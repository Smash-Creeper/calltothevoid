var STATE=Battle_GetState();
var MENU=Battle_GetMenu();
if(STATE==BATTLE_STATE.IN_TURN || STATE==BATTLE_STATE.TURN_PREPARATION || (STATE==BATTLE_STATE.MENU && MENU!=BATTLE_MENU.FIGHT_AIM && MENU!=BATTLE_MENU.FIGHT_ANIM && MENU!=BATTLE_MENU.FIGHT_DAMAGE)){
	draw_self();
	if(global.succ = true){
	draw_sprite_ext(spr_battle_soul_succ_overlay,0,x,y,image_xscale,image_yscale,image_angle,c_black,1)
	}
}