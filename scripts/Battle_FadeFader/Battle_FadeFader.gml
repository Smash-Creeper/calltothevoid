///@arg alpha
///@arg time
function Battle_FadeFader() {
	var ALPHA=argument[0];
	var TIME=argument[1];

	Anim_Create(fader,"alpha",0,0,fader.alpha,ALPHA-fader.alpha,TIME);

	return true;


}
