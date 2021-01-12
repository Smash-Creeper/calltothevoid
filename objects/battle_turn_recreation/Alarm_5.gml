if(boneproc3=0){
var b = instance_create_depth(battle_board.x+battle_board.right+10,battle_board.y+battle_board.down+20,0,battle_bullet_bone)
b.hspeed=-2.5
b.length=20
Battle_BlueSoul_Impact(DIR.DOWN,10,true)
}else if(boneproc3=1){
var b = instance_create_depth(battle_board.x-battle_board.left-30,battle_board.y-battle_board.up,0,battle_bullet_bone)
b.hspeed=2.5
b.dir=DIR.DOWN
b.length=20
var b = instance_create_depth(battle_board.x-battle_board.left,battle_board.y-battle_board.up-10,0,battle_bullet_bone)
b.vspeed=2.5
b.dir=DIR.RIGHT
b.length=20
Battle_BlueSoul_Impact(DIR.UP,10,true)
}else if(boneproc3=2){
Battle_BlueSoul_Impact(DIR.RIGHT,10,true)
}
boneproc3++
if(boneproc3<3){
alarm[5]=45
}else{
Battle_BlueSoul_Impact(DIR.DOWN,0,false)
alarm[2]=75
Anim_Create(battle_board,"x",0,0,320,100,120,180)
Anim_Create(battle_board,"left",0,0,65,120,55)
Anim_Create(battle_board,"right",0,0,65,120,55)
}