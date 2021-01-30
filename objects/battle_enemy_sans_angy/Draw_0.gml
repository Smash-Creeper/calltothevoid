siner1+=1

switch(sans_state){
case 0:

var body_x = sin(siner1/9);
var body_y = abs(cos(siner1/9));
var head_x = sin(siner1/9);
var head_y = 0;

draw_sprite_ext(spr_sans_legs,0,x,y,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body, 0, x-2+body_x, y-72-body_y, 2, 2, 0, c_white,1)
draw_sprite_ext(spr_sans_head, sans_face.emotion, x-2+body_x+head_x, y-112-body_y-head_y, 2, 2, 0, c_white,1)
draw_sprite_ext(spr_sans_head_sweat, sans_face.emotion_sweat, x-2+body_x+head_x, y-112-body_y-head_y, 2, 2, 0, c_white,1)
break;
case 1:

var body_x = sin(siner1/9);
var body_y = (sin(siner1/12)*1);
var body_angle = sin(siner1/24)*3;
var head_angle = sin(siner1/24)*6;
var head_x = lengthdir_x(sin(siner1/12)*1,head_angle)
var head_y = lengthdir_y(sin(siner1/12)*1,head_angle)

draw_sprite_ext(spr_sans_legs_angy, 0, x, y, 2, 2, 0, c_white,1)
draw_sprite_ext(spr_sans_body_angy, 0, x, y-48+body_y, 2, 2, -0.5+body_angle, c_white,1)
draw_sprite_ext(spr_sans_head_angy, sans_face.emotion, x+head_x, y-84+head_y+body_y, 2, 2, -1+head_angle, c_white,1)
break;
}