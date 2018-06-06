precision highp float;

varying vec2 position;

void main() {
	position = vec2(gl_Vertex);
    gl_Position = vec4(Position, 0.0f, 1.0f);
}

