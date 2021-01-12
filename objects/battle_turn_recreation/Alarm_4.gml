var xx = battle_board.x-battle_board.left+lengthdir_x(100,gbdir1)
var yy = battle_board.y-200+lengthdir_y(100,gbdir1)
Battle_SetGasterBlaster(xx,yy,point_direction(xx,yy,battle_board.x-battle_board.left,battle_board.y-160),point_direction(xx,yy,battle_board.x-battle_board.left,battle_board.y),0,2,2,-1,-1,60)
gbdir1+=35
gbproc1+=1
if(gbproc1<3){
alarm[4]=20
}else{
alarm[6]=120	
}