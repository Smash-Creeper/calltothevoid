event_inherited();
/*
if(dir==DIR.DOWN){
	image_angle=0;
}else if(dir==DIR.UP){
	image_angle=180;
}else if(dir==DIR.LEFT){
	image_angle=-90;
}else if(dir==DIR.RIGHT){
	image_angle=90;
}*/
image_angle=dir+90
	var box = -1
//移动
if(Battle_GetState()==BATTLE_STATE.IN_TURN && moveable){
	var SPD=Player_GetSpdTotal()
	var SPD=(Input_IsHeld(INPUT.CANCEL) ? SPD/2 : SPD);
	repeat(SPD*spd){
		if(dir==DIR.LEFT||dir==DIR.RIGHT){
			if(Input_IsHeld(INPUT.UP)){
				if(!position_meeting(x,y-sprite_height/2,block)&&!position_meeting(x,y-sprite_height/2,box)){
					y-=0.1;
				}
			}
			if(Input_IsHeld(INPUT.DOWN)){
				if(!position_meeting(x,y+sprite_height/2,block)&&!position_meeting(x,y+sprite_height/2,box)){
					y+=0.1;
				}
			}
		}
		if(dir==DIR.UP||dir==DIR.DOWN){
			if(Input_IsHeld(INPUT.LEFT)){
				if(!position_meeting(x-sprite_width/2,y,block)&&!position_meeting(x-sprite_width/2,y,box)){
					x-=0.1;
				}
			}
			if(Input_IsHeld(INPUT.RIGHT)){
				if(!position_meeting(x+sprite_width/2,y,block)&&!position_meeting(x+sprite_width/2,y,box)){
					x+=0.1;
				}
			}
		}
		if(dir==DIR.RD){
			if(Input_IsHeld(INPUT.RIGHT)&&Input_IsHeld(INPUT.UP)){
				if(!position_meeting(x+sprite_width/2-1,y-sprite_height/2+1,block)&&!position_meeting(x+sprite_width/2,y-sprite_height/2,box)){
					x+=0.1;
					y-=0.1;
				}
			}
			if(Input_IsHeld(INPUT.LEFT)&&Input_IsHeld(INPUT.DOWN)){
				if(!position_meeting(x-sprite_width/2+1,y+sprite_height/2-1,block)&&!position_meeting(x-sprite_width/2,y+sprite_height/2,box)){
					x-=0.1;
					y+=0.1;
				}
			}
		}
		if(dir==DIR.LD){
			if(Input_IsHeld(INPUT.LEFT)&&Input_IsHeld(INPUT.UP)){
				if(!position_meeting(x-sprite_width/2+1,y-sprite_height/2+1,block)&&!position_meeting(x-sprite_width/2,y-sprite_height/2,box)){
					x-=0.1;
					y-=0.1;
				}
			}
			if(Input_IsHeld(INPUT.RIGHT)&&Input_IsHeld(INPUT.DOWN)){
				if(!position_meeting(x+sprite_width/2-1,y+sprite_height/2-1,block)&&!position_meeting(x+sprite_width/2,y+sprite_height/2,box)){
					x+=0.1;
					y+=0.1;
				}
			}
		}
		if(dir==DIR.LU){
			if(Input_IsHeld(INPUT.LEFT)&&Input_IsHeld(INPUT.DOWN)){
				if(!position_meeting(x-sprite_width/2+1,y+sprite_height/2-1,block)&&!position_meeting(x-sprite_width/2,y+sprite_height/2,box)){
					x-=0.1;
					y+=0.1;
				}
			}
			if(Input_IsHeld(INPUT.RIGHT)&&Input_IsHeld(INPUT.UP)){
				if(!position_meeting(x+sprite_width/2-1,y-sprite_height/2+1,block)&&!position_meeting(x+sprite_width/2,y-sprite_height/2,box)){
					x+=0.1;
					y-=0.1;
				}
			}
		}
		if(dir==DIR.RU){
			if(Input_IsHeld(INPUT.RIGHT)&&Input_IsHeld(INPUT.DOWN)){
				if(!position_meeting(x+sprite_width/2-1,y+sprite_height/2-1,block)&&!position_meeting(x+sprite_width/2,y+sprite_height/2,box)){
					x+=0.1;
					y+=0.1;
				}
			}
			if(Input_IsHeld(INPUT.LEFT)&&Input_IsHeld(INPUT.UP)){
				if(!position_meeting(x-sprite_width/2+1,y-sprite_height/2+1,block)&&!position_meeting(x-sprite_width/2,y-sprite_height/2,box)){
					x-=0.1;
					y-=0.1;
				}
			}
		}
	}
	
	
	var xx=0;
	var yy=0;
	if(dir==DIR.DOWN){
		yy=sprite_height/2+0.1;
	}else if(dir==DIR.UP){
		yy=-sprite_height/2-0.1;
	}else if(dir==DIR.LEFT){
		xx=-sprite_height/2-0.1;
	}else if(dir==DIR.RIGHT){
		xx=sprite_height/2+0.1;
	}else if(dir==DIR.RU){
		xx=sprite_height/2+0.1;
		yy=-sprite_height/2+0.1;
	}else if(dir==DIR.LU){
		xx=-sprite_height/2-0.1;
		yy=-sprite_height/2-0.1;
	}else if(dir==DIR.LD){
		xx=-sprite_height/2-0.1;
		yy=sprite_height/2+0.1;
	}else if(dir==DIR.RD){
		xx=sprite_height/2+0.1;
		yy=sprite_height/2+0.1;
	}
	var a=position_meeting(x+xx,y+yy,block);
	var b=position_meeting(x+xx,y+yy,battle_platform);
	var c=position_meeting(x+xx,y+yy,box);
	var input=-1;
	var input2=-1;
	if(dir==DIR.DOWN){
		input=INPUT.UP;
	}else if(dir==DIR.UP){
		input=INPUT.DOWN;
	}else if(dir==DIR.LEFT){
		input=INPUT.RIGHT;
	}else if(dir==DIR.RIGHT){
		input=INPUT.LEFT;
	}else if(dir==DIR.RU){
		input=INPUT.LEFT;
		input2=INPUT.DOWN;
	}else if(dir==DIR.LU){
		input=INPUT.RIGHT;
		input2=INPUT.DOWN;
	}else if(dir==DIR.RD){
		input=INPUT.LEFT;
		input2=INPUT.UP;
	}else if(dir==DIR.LD){
		input=INPUT.RIGHT;
		input2=INPUT.UP;
	}
	
	if ((a||b||c)&&move>=0){
		var fx=0;
		var fy=0;
		if(dir==DIR.DOWN){
			fy=sprite_height/2;
		}else if(dir==DIR.UP){
			fy=-sprite_height/2;
		}else if(dir==DIR.LEFT){
			fx=-sprite_height/2;
		}else if(dir==DIR.RIGHT){
			fx=sprite_height/2;
		}else if(dir==DIR.RD){
			fx=sprite_height/2;
			fy=sprite_height/2;
		}else if(dir==DIR.LD){
			fx=-sprite_height/2;
			fy=sprite_height/2;
		}else if(dir==DIR.RU){
			fx=sprite_height/2;
			fy=-sprite_height/2;
		}else if(dir==DIR.LU){
			fx=-sprite_height/2;
			fy=-sprite_height/2;
		}else{
			fx=lengthdir_x(sprite_height/2,dir);
			fy=lengthdir_y(sprite_height/2,dir);
		}
		while(position_meeting(x+fx,y+fy,block)||position_meeting(x+fx,y+fy,battle_platform)||position_meeting(x+fx,y+fy,box)){
			var mx=0;
			var my=0;
			if(dir==DIR.DOWN){
				my=-0.1;
			}else if(dir==DIR.UP){
				my=0.1;
			}else if(dir==DIR.LEFT){
				mx=0.1;
			}else if(dir==DIR.RIGHT){
				mx=-0.1;
			}else if(dir==DIR.RD){
				mx=-0.1;
				my=-0.1;
			}else if(dir==DIR.LD){
				mx=0.1;
				my=-0.1;
			}else if(dir==DIR.RU){
				mx=-0.1;
				my=0.1;
			}else if(dir==DIR.LU){
				mx=0.1;
				my=0.1;
			}else{
				mx=lengthdir_x(0.1,dir);
				my=lengthdir_y(0.1,dir);
			}
			x+=mx
			y+=my;
		}
		
		if(position_meeting(x+xx,y+yy,block)||position_meeting(x+xx,y+yy,battle_platform)||position_meeting(x+xx,y+yy,box)){
			move=0;	
			if(impact){
				impact=false;
				audio_play_sound(snd_impact,0,false);
				Camera_Shake(8,8,1,1,true,true);
			}
			if(position_meeting(x+xx,y+yy,battle_platform)){
				var cx=0;
				var cy=0;
				if(dir==DIR.DOWN){
					cy=sprite_height/2+1;
				}else if(dir==DIR.UP){
					cy=-sprite_height/2-1;
				}else if(dir==DIR.LEFT){
					cx=-sprite_height/2-1;
				}else if(dir==DIR.RIGHT){
					cx=sprite_height/2+1;
				}else if(dir==DIR.RD){
					cx=sprite_height/2+1;
					cy=sprite_height/2+1;
				}else if(dir==DIR.LD){
					cx=-sprite_height/2-1;
					cy=sprite_height/2+1;
				}else if(dir==DIR.RU){
					cx=sprite_height/2+1;
					cy=-sprite_height/2-1;
				}else if(dir==DIR.LU){
					cx=-sprite_height/2-1;
					cy=-sprite_height/2-1;
				}else{
					cx=lengthdir_x(sprite_height/2+1,dir);
					cy=lengthdir_y(sprite_height/2+1,dir);
				}
				var inst=instance_position(x+cx,y+cy,battle_platform);
				if(instance_exists(inst)){
					if(inst.sticky){
						x+=inst.x-inst.xprevious;
					}
				}
			}
			if(dir==DIR.UP||dir==DIR.DOWN||dir==DIR.LEFT||dir==DIR.RIGHT){
			if(Input_IsHeld(input)){
				move=(-_speed_jump);
			}
			}else if(dir==DIR.RU||dir==DIR.RD||dir==DIR.LD||dir==DIR.LU){
			if(Input_IsHeld(input)&&Input_IsHeld(input2)){
				move=(-_speed_jump);
			}	
			}
		}
	}else if(move < 0){
		move=(move+_gravity_jump);
		if (!Input_IsHeld(input)){
			move=0;
		}
		if (move>0){
			move=0;
		}else if(position_meeting(x-xx,y-yy,block)||position_meeting(x-xx,y-yy,box)){
			move=0;
		}
	}else if(move<0.05){
		move+=0.01;
	}else if(move<_gravity_fall_max){
		move+=_gravity_fall;
	}
	repeat (abs(move)*10){
		var m;
		var xx=0;
		var yy=0;
		if(dir==DIR.DOWN){
			yy=(sprite_height/2)*sign(move);
		}else if(dir==DIR.UP){
			yy=-(sprite_height/2)*sign(move);
		}else if(dir==DIR.LEFT){
			xx=-(sprite_width/2)*sign(move);
		}else if(dir==DIR.RIGHT){
			xx=(sprite_width/2)*sign(move);
		}else if(dir==DIR.RD){
			xx=(sprite_width/2)*sign(move);
			yy=(sprite_width/2)*sign(move);
		}else if(dir==DIR.LD){
			xx=-(sprite_width/2)*sign(move);
			yy=(sprite_width/2)*sign(move);
		}else if(dir==DIR.RU){
			xx=(sprite_width/2)*sign(move);
			yy=-(sprite_width/2)*sign(move);
		}else if(dir==DIR.LU){
			xx=-(sprite_width/2)*sign(move);
			yy=-(sprite_width/2)*sign(move);
		}
		if (!position_meeting(x+xx,y+yy,block)&&!position_meeting(x+xx,y+yy,box)){
			m=!((move > 0) && position_meeting(x+xx,y+yy,battle_platform));
		}else{
			m=false;
		}
		if(m){
			var xx=0;
			var yy=0;
			if(dir==DIR.DOWN){
				yy=0.1*sign(move);
			}else if(dir==DIR.UP){
				yy=-0.1*sign(move);
			}else if(dir==DIR.LEFT){
				xx=-0.1*sign(move);
			}else if(dir==DIR.RIGHT){
				xx=0.1*sign(move);
			}else if(dir==DIR.RD){
				xx=0.1*sign(move);
				yy=0.1*sign(move);
			}else if(dir==DIR.LD){
				xx-=0.1*sign(move);
				yy=0.1*sign(move);
			}else if(dir==DIR.RU){
				xx=0.1*sign(move);
				yy=-0.1*sign(move);
			}else if(dir==DIR.LU){
				xx=-0.1*sign(move);
				yy=-0.1*sign(move);
			}else{
				xx=lengthdir_x(0.1*sign(move),dir);
				yy=lengthdir_y(0.1*sign(move),dir);
			}
			x+=xx;
			y+=yy;
		}
	}
	
	if(place_meeting(x,y,battle_platform_bounce)){
		if(!_platform_bounce_met){
			_platform_bounce_met=true;
			if(dir==DIR.UP){
				dir=DIR.DOWN;
			}else if(dir==DIR.DOWN){
				dir=DIR.UP;
			}else if(dir==DIR.LEFT){
				dir=DIR.RIGHT;
			}else if(dir==DIR.RIGHT){
				dir=DIR.LEFT;
			}else{
				dir+=180;
			}
			move=0;
		}
	}else{
		if(_platform_bounce_met){
			_platform_bounce_met=false;
		}
	}
}
if(dir>=360){
dir=dir-360	
}