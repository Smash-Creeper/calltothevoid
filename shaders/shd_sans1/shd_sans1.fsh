varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float Time;
uniform vec2 Texel;

//Modify the following three consts to change the wave effect to your liking
const float A = 4096.0;
const float F = 256.0;
const float S = 1.0;

const float pi = 3.1415;

const float C1 = 1.0 / 512.0;
const float C2 = 8.0 * pi / (1024.0 * 256.0);
const float C3 = pi / 60.0;

float offset(float _y, float _t)
{
	return A * C1 * sin(F*_y + S*C3*_t);
}

void main()
{
	float Wave = offset(v_vTexcoord.y*Texel.y, Time);
    gl_FragColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord + vec2(Wave*Texel.x, 0.0));
}