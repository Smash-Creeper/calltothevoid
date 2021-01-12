if(Flag_Get(FLAG_TYPE.STATIC,FLAG_STATIC.HP)<=0){
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_X,x-camera.x);
	Flag_Set(FLAG_TYPE.TEMP,FLAG_TEMP.GAMEOVER_SOUL_Y,y-camera.y);
	room_goto(room_gameover);
}
image_blend = global.player_color;

var STATE=Battle_GetState();
if(STATE==BATTLE_STATE.TURN_PREPARATION||STATE==BATTLE_STATE.IN_TURN){
	if(follow_board){
		x+=battle_board.x-battle_board.xprevious;
		y+=battle_board.y-battle_board.yprevious;
	}
	
	while(position_meeting(x+sprite_width/2,y,block)){
		x-=0.01;
	}
	while(position_meeting(x-sprite_width/2,y,block)){
		x+=0.01;
	}
	while(position_meeting(x,y+sprite_height/2,block)){
		y-=0.01;
	}
	while(position_meeting(x,y-sprite_height/2,block)){
		y+=0.01;
	}
}