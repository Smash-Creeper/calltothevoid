///@arg x_spawn
///@arg y_spawn
///@arg angle
///@arg length
///@arg *turn
///@arg *type
///@arg *turn_speed
///@arg *hspd
///@arg *vspd
function Battle_SetBone(){
var SPAWNX  = argument[0]
var SPAWNY = argument[1]
var ANGLE = argument[2]
var LENGTH = 40
var TURN = false
var TYPE = 0
var TURNSPEED = 1
var HSPD = 0
var VSPD = 0

if(argument_count>=4&&argument[3]>=0){
var LENGTH = argument[3]
}
if(argument_count>=5&&argument[4]>=0){
var TURN = argument[4]
}
if(argument_count>=6&&argument[5]>=0){
var TYPE = argument[5]
}
if(argument_count>=7){
var TURNSPEED = argument[6]
}
if(argument_count>=8){
var HSPD = argument[7]
}
if(argument_count>=9){
var VSPD = argument[8]
}
if(argument_count>=10&&argument[9]>=0){
var RD = argument[9]
}
if(argument_count>=11&&argument[10]>=0){
var ED = argument[10]
}
if(argument_count>=12&&argument[11]>=0){
var AT = argument[11]
}

var bone = instance_create_depth(SPAWNX,SPAWNY,0,battle_bullet_bone)
bone.length = LENGTH
bone.type = TYPE
bone._turn = TURN
bone._turnspeed = TURNSPEED
bone.dir = ANGLE
bone._dir = ANGLE
bone.hspd = HSPD
bone.vspd = VSPD

return bone;
}