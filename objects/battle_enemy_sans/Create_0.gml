// You can write your code in this editor

// Inherit the parent event
event_inherited();

siner1=0

hit=1

cutscene=true

instance_create_depth(0, 0, 0, background);
background.sprite = spr_bg_sans;
background.effect = BACKGROUND_EFFECTS.Sans;
background.image_xscale = 3;

if(cutscene=true){
background.image_alpha = 0;
turn = 0
}else{
turn = 0	
}

sans_face = instance_create_depth(-100,-100,0,face_battle_sans)
sans_face.emotion = 0
_text_cutscene_prefix = "{scale 2}{voice -1}{speed 2}{space_y 2}{space_x 0}{font 3}{shadow false}{gui true}{depth "+string(DEPTH_UI.TEXT)+"}"

sans_state = 0