//SHADERTOY PORT FIX
#pragma header
vec2 uv = openfl_TextureCoordv.xy;
vec2 fragCoord = openfl_TextureCoordv*openfl_TextureSize;
vec2 iResolution = openfl_TextureSize;
uniform float iTime;
#define iChannel0 bitmap
#define texture flixel_texture2D
#define fragColor gl_FragColor
#define mainImage main
#define time iTime
//SHADERTOY PORT FIX

#define _Speed 10.0
#define _BlockSize 8.0
#define _MaxRGBSplitX 1.0
#define _MaxRGBSplitY 1.0


float randomNoise(vec2 seed)
{
	return fract(sin(dot(seed * floor(iTime * _Speed), vec2(17.13, 3.71))) * 43758.5453123);
}

float randomNoise(float seed)
{
	return randomNoise(vec2(seed, 1.0));
}
    
void mainImage()
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = fragCoord/iResolution.xy;
    float block = randomNoise(floor(uv * _BlockSize));

	float displaceNoise = pow(block, 1.0) * pow(block, 1.0);
	float splitRGBNoise = pow(randomNoise(7.2341), 3.0);
	float offsetX = displaceNoise - splitRGBNoise * _MaxRGBSplitX;
	float offsetY = displaceNoise - splitRGBNoise * _MaxRGBSplitY;

	float noiseX = 0.001 * randomNoise(1.0);
	float noiseY = 0.01 * randomNoise(1.0);
	vec2 offset = vec2(offsetX * noiseX, offsetY* noiseY);

	vec4 colorR = texture(iChannel0, uv);
	vec4 colorG = texture(iChannel0, uv + offset);
	vec4 colorB = texture(iChannel0, uv - offset);

    // Output to screen
    fragColor = vec4(colorR.r , colorG.g, colorB.z, (colorR.a + colorG.a + colorB.a));
}