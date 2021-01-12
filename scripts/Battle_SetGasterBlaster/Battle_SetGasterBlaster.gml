///@arg target_x
///@arg target_y
///@arg angle
///@arg angle_start
///@arg *type
///@arg *scale_y
///@arg *scale_x
///@arg *xspawn
///@arg *yspawn
///@arg *release_delay
///@arg *end_delay
///@arg *anim_time
function Battle_SetGasterBlaster(){
var TARGETX = argument[0]
var TARGETY = argument[1]
var ANGLE = argument[2]
var ANGLESTART = ANGLE
var TYPE = 0
var SCALEY = 2
var SCALEX = 2
var XSPAWN = TARGETX - lengthdir_x(500,ANGLE)
var YSPAWN = TARGETY - lengthdir_y(500,ANGLE)
var RD = 15
var ED = 30
var AT = 25

if(argument_count>=4){
var ANGLESTART = argument[3]
}
if(argument_count>=5&&argument[4]>=0){
var TYPE = argument[4]
}
if(argument_count>=6&&argument[5]>=0){
var SCALEY = argument[5]
}
if(argument_count>=7&&argument[6]>=0){
var SCALEX = argument[6]
}
if(argument_count>=8&&argument[7]>=0){
var XSPAWN = argument[7]
}
if(argument_count>=9&&argument[8]>=0){
var YSPAWN = argument[8]
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

var gb = instance_create_depth(XSPAWN,YSPAWN,0,battle_bullet_gb)
gb.type=TYPE;
gb.y_target=TARGETY;
gb.x_target=TARGETX;
gb.angle_start=ANGLESTART;
gb.angle_target=ANGLE;
gb.scale_x=SCALEX;
gb.scale_y=SCALEY;
gb.time_move=AT;
gb.time_release_delay=RD;
gb.time_beam_end_delay=ED;
}