shader_type particles;

uniform float spread = 3.0;

void vertex() {
	vec3 pos = vec3(0.0, 0.0, 0.0);
	pos.y = float(INDEX);
	pos.x = float(INDEX);
//	pos.y = (pos.y - pos.x) / rows;
	
//	pos.x -= rows * 0.5;
//	pos.y -= rows * 0.5;
	
	pos *= 3.0;
	
	TRANSFORM[3].xyz = pos;


}