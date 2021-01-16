siner1+=1
draw_sprite_ext(spr_dte_funni_rings,0,x-56,y+36+(sin(siner1/60)*10),3,3,-siner1*3,c_white,1)
draw_sprite_ext(spr_dte_funni_rings,0,x+56,y+36+(sin(siner1/60)*10),-3,3,siner1*3,c_white,1)
draw_sprite_ext(spr_dte_base,0,x,y+(sin(siner1/60)*10),3,3,0,c_white,1)
draw_sprite_ext(spr_dte_stwings,0,x,y-222,3,3+(sin(siner1/59)*0.125),0,c_white,1)

draw_sprite_ext(spr_pixel,0,-2,-2,644,684,0,c_black,selffader)