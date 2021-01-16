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
var body_y = abs(cos(siner1/9));
var head_x = sin(siner1/9);
var head_y = 0;

draw_sprite_ext(spr_sans_legs,0,x,y,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body, 0, x-2+body_x, y-72-body_y, 2, 2, 0, c_white,1)
draw_sprite_ext(spr_sans_head, sans_face.emotion, x-2+body_x+head_x, y-112-body_y-head_y, 2, 2, 0, c_white,1)
draw_sprite_ext(spr_sans_head_sweat, sans_face.emotion_sweat, x-2+body_x+head_x, y-112-body_y-head_y, 2, 2, 0, c_white,1)

draw_sprite_ext(spr_battle_soul_red, 0, 320, 320, 2, 2, 0, c_white,1)
draw_set_halign(fa_center)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_font(font_mars_needs_cunnilingus_big)
draw_text(320,350,string(Player_GetHp())+"/"+string(Player_GetHpMax()))
draw_set_halign(fa_left)
break;
}