var b = instance_create_depth(battle_board.x+battle_board.right+70,battle_board.y+battle_board.down,0,battle_bullet_bone)
b.hspeed=-3
b.length=70
b.type=1
var b = instance_create_depth(battle_board.x+battle_board.right+10,battle_board.y+battle_board.down,0,battle_bullet_bone)
b.hspeed=-3
b.length=30
b.type=0
boneproc2++

if(boneproc2<9){
alarm[2] = 45
}else{
alarm[3] = 90
}