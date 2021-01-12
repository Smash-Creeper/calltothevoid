///@arg Delay
function Battle_FunniFall(){
	var DELAY = argument[0]
	
Anim_Create(battle_board, "y", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_board.y, 50, 35, 4 + DELAY);
Anim_Create(battle_board, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, battle_board.y+50, -10, 10, 38 + DELAY);
Anim_Create(battle_ui, "y", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_ui.y, 50, 38,  DELAY);

Anim_Create(battle_button_mercy, "image_angle", ANIM_TWEEN.LINEAR, 0, 0, -7, 90, DELAY);
Anim_Create(battle_button_mercy, "y", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_button_mercy.y, 50, 40, DELAY);
Anim_Create(battle_button_mercy, "x", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_button_mercy.x, -10, 40, DELAY);

Anim_Create(battle_button_item, "image_angle", ANIM_TWEEN.LINEAR, 0, 0, -4, 90, DELAY);
Anim_Create(battle_button_item, "y", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_button_item.y, 48, 42, DELAY);
Anim_Create(battle_button_item, "x", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_button_item.x, -7, 60, DELAY);

Anim_Create(battle_button_act, "image_angle", ANIM_TWEEN.LINEAR, 0, 0, 8, 40, DELAY);
Anim_Create(battle_button_act, "y", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_button_act.y, 64, 42, DELAY);
Anim_Create(battle_button_act, "x", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_button_act.x, 20, 45, DELAY);

battle_button_fight.depth = DEPTH_BATTLE.BOARD;
Anim_Create(battle_button_fight, "image_angle", ANIM_TWEEN.QUAD, ANIM_EASE.IN, 0, -6, 24, DELAY);
Anim_Create(battle_button_fight, "y", ANIM_TWEEN.SINE, ANIM_EASE.OUT, battle_button_fight.y, -15, 20, DELAY);
Anim_Create(battle_button_fight, "y", ANIM_TWEEN.QUAD, ANIM_EASE.IN, battle_button_fight.y-15, 64, 48, 10 + DELAY);
}