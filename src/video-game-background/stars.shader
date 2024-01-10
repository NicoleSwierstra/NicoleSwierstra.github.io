#shader vertex
attribute vec3 position;

uniform mat4 u_MVP;
uniform mat4 trans;

varying float l;

void main() {
	gl_Position = u_MVP * trans * vec4(position, 1.0);
	l = ((trans * vec4(position, 1.0)).y) / 15.0;
}

#shader fragment
varying float l;

void main() {
	gl_FragColor = mix(vec4(1.0, 1.0, 1.0, 1.0), vec4(1.0, 1.0, 1.0, 0.0), l);
}