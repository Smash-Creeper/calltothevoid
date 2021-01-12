if(start = 1){
time = (time + 1)
if(time = 1){
//	fader
	Battle_FadeFader(1,1)
	battle_soul._inv=70
}
if(time = 60){
//	battle_soul._inv=70
	battle_board.x=160
	battle_board.y=370
	battle_soul.x=160
	battle_soul.y=370
	Battle_SetSoul(battle_soul_red)
}
if(time = 120){
	Battle_FadeFader(0,10)
Anim_Create(battle_board,"right",0,0,65,420,90)	
Anim_Create(battle_board,"left",0,0,65,100,90)	
}
if(time = 240){
	var proc = 0
	var dir = DIR.UP-10
	repeat(2){
		var xx = 480 + lengthdir_x(45,dir)
		var yy = 220 + lengthdir_y(45,dir)
Battle_SetGasterBlaster(xx,yy,point_direction(xx,yy,480,220))
dir-=35
	}
}
if(time = 300){
	var proc = 0
	var dir = DIR.UP+10
	repeat(2){
		var xx = 160 + lengthdir_x(45,dir)
		var yy = 220 + lengthdir_y(45,dir)
Battle_SetGasterBlaster(xx,yy,point_direction(xx,yy,160,220),point_direction(xx,yy,160,220),0,2,2,-1,-1,40)
dir+=35
	}
}
if(time = 315){
	var proc = 0
	repeat(12){
		var b = instance_create_depth(0+(10*proc),battle_board.y-battle_board.up-10,0,battle_bullet_bone)
		b.length=0
		b.dir=DIR.DOWN
		Anim_Create(b,"x",0,0,0+(10*proc),700,90,60)
		Anim_Create(b,"length",0,0,0,60,7,30)
		proc++
	}
	var proc = 0
	repeat(12){
		var b = instance_create_depth(640-(10*proc),battle_board.y+battle_board.down+10,0,battle_bullet_bone)
		b.length=0
		b.dir=DIR.UP
		Anim_Create(b,"x",0,0,640-(10*proc),-700,90,60)
		Anim_Create(b,"length",0,0,0,60,7,30)
		proc++
	}
}
if(time = 375){
	var proc = 0
	repeat(12){
		var b = instance_create_depth(0+(10*proc),battle_board.y-battle_board.up-10,0,battle_bullet_bone)
		b.length=0
		b.dir=DIR.DOWN
		Anim_Create(b,"x",0,0,0+(10*proc),700,90,60)
		Anim_Create(b,"length",0,0,0,60,7,30)
		proc++
	}
	var proc = 0
	repeat(12){
		var b = instance_create_depth(640-(10*proc),battle_board.y+battle_board.down+10,0,battle_bullet_bone)
		b.length=0
		b.dir=DIR.UP
		Anim_Create(b,"x",0,0,640-(10*proc),-700,90,60)
		Anim_Create(b,"length",0,0,0,60,7,30)
		proc++
	}
}
}