siner1+=1

var body_x = sin(siner1/9);
var body_y = abs(cos(siner1/9));
var head_x = sin(siner1/9);
var head_y = 0;

draw_sprite_ext(spr_sans_legs,0,x,y,2,2,0,c_white,1)
draw_sprite_ext(spr_sans_body, 0, x-2+body_x, y-72-body_y, 2, 2, 0, c_white,1)
draw_sprite_ext(spr_sans_head, 0, x-2+body_x+head_x, y-112-body_y-head_y, 2, 2, 0, c_white,1)