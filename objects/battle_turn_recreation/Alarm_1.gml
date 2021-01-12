var b = instance_create_depth(battle_board.x+battle_board.right+10,battle_board.y+battle_board.down,0,battle_bullet_bone)
b.hspeed=-2
b.length=20
var b = instance_create_depth(battle_board.x+battle_board.right+10,battle_board.y-battle_board.up,0,battle_bullet_bone)
b.hspeed=-2
b.length=90
b.dir=DIR.DOWN
var b = instance_create_depth(battle_board.x-battle_board.left-10,battle_board.y+battle_board.down,0,battle_bullet_bone)
b.hspeed=2
b.length=20
var b = instance_create_depth(battle_board.x-battle_board.left-10,battle_board.y-battle_board.up,0,battle_bullet_bone)
b.hspeed=2
b.length=90
b.dir=DIR.DOWN
boneproc1++

if(boneproc1<5){
alarm[1] = 30
}else{
alarm[5] = 91
Anim_Create(battle_board,"left",0,0,120,-55,55)
Anim_Create(battle_board,"right",0,0,120,-55,55)
Battle_FunniFall(65)
}