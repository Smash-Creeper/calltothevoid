if(start = 1){
time = (time + 1)
if(time = 1){
	alarm[1] = 1
	Anim_Create(battle_board,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320,135,200,60)
	Anim_Create(battle_enemy_sans_angy,"x",ANIM_TWEEN.SINE,ANIM_EASE.IN_OUT,320,-100,260)
}
if(time = 301){
	alarm[1]=0
	Anim_Create(battle_board,"y",0,0,battle_board.y,-190,60,90)
	alarm[2]=20
}
if(time = 431){
	Anim_Create(battle_board,"down",ANIM_TWEEN.SINE,ANIM_EASE.IN,65,185,69)
}
}