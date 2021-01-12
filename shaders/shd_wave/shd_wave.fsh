varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
uniform vec2 Texel;

//Modify the following three consts to change the wave effect to your liking
uniform float WaveSpeed;
uniform float WaveFreq;
uniform float WaveSize;

void main()
{
    float Wave = sin(Time*WaveSpeed + v_vTexcoord.y*WaveFreq) * (WaveSize*Texel.x);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(Wave, 0.0)) * vec4(2.5, 0.23, 0.123, 1) * (sin(Time*0.0015)*0.4+0.8);
	gl_FragColor = gl_FragColor * texture2D( gm_BaseTexture, v_vTexcoord+ vec2(Wave*0.5, 0.0));
}