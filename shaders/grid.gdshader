shader_type spatial;

const float grid_size = 100.0;
const float thickness = 0.1;

void fragment() {
	vec2 scaled_uv = UV * grid_size;
	vec2 diff = abs(floor(scaled_uv) - scaled_uv);
	if (diff.x < thickness || diff.y < thickness){
		ALBEDO = vec3(0.0);
	} else {
		ALBEDO = vec3(UV.x, UV.y, 0);
	}
}
