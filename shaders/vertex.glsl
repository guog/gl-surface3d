attribute vec4 uv;
attribute float f;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

varying float value;
varying vec3 worldCoordinate;
varying vec2 planeCoordinate;

void main() {
  vec4 worldPosition = model * vec4(uv.zw, f, 1.0);
  gl_Position = projection * view * worldPosition;
  value = f;
  worldCoordinate = vec3(uv.zw, f);
  planeCoordinate = uv.xy;
}