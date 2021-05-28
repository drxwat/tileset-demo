shader_type particles;

uniform float spread = 3.5;
uniform int rows = 30;
uniform int amount = 600;

float rand(vec2 co){
    return fract(sin(dot(co.xy, vec2(12.9898,78.233))) * 43758.5453);
}

void vertex() {
	vec3 pos = vec3(0.0, 0.0, 0.0);
	int items_per_row = amount / rows;
	int row_number = INDEX / items_per_row;
	pos.y = float(row_number);
	pos.x = float(INDEX - (items_per_row * row_number));
	
	pos *= spread;
	
	// Changing Texture Offset
	CUSTOM.z = rand(vec2(float(INDEX), float(INDEX)));
	
	TRANSFORM[3].xyz = pos;
}