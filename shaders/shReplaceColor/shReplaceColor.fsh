//
// Simple passthrough fragment shader
//

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define darkEyes 85.0
uniform float range;		//誤差值
vec4 BodyColorMatch = vec4(183.0/255.0,183.0/255.0,183.0/255.0,1.0);//身體符合的顏色
uniform vec4 colorReplace;	//要替換的顏色 


void main()
{
	vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );	//當前sprite的所有像素點顏色
	
	float newRange = range / 255.0; //shader 為0~1 需先將顏色/255
	
	// 確定身體RGB都相似
	if(( abs(pixelColor.r - BodyColorMatch.r) ) <= newRange){
		if(( abs(pixelColor.g - BodyColorMatch.g) ) <= newRange){
			if(( abs(pixelColor.b - BodyColorMatch.b) ) <= newRange){
				pixelColor.rgb = colorReplace.rgb;
			}
		}
	}

    gl_FragColor = pixelColor;
}

