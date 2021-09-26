//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;
uniform float hurtalpha;
vec4 ExcludeColor = vec4(59.0/255.0,35.0/255.0,41.0/255.0,1.0); //Player's outline

void main()
{
	vec4 pixelColor = v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	
	if( (abs(pixelColor.r - ExcludeColor.r) <= 5.0/255.0) && (abs(pixelColor.g - ExcludeColor.g) <= 5.0/255.0) && (abs(pixelColor.b - ExcludeColor.b) <= 5.0/255.0) ){
		gl_FragColor = pixelColor;
	}else{
		if( pixelColor.a > 0.0 ){
			pixelColor.r = 1.0;
			pixelColor.g = 1.0;
			pixelColor.b = 1.0;
			pixelColor.a = hurtalpha;
		} 
		 gl_FragColor = pixelColor;
	}
}
