#version 330 core
layout (location = 0) in vec3 aPos;
layout (location = 1) in vec3 aNormal;
layout (location = 2) in vec2 aTexCoords;

out vec2 TexCoords;
out vec3 FragPos;
uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

const float amplitude = 1.70;
const float frequency = 1.0;
const float PI = 3.14159;
uniform float time;


void main()
{
	float distance = length(aPos);
  float effect = amplitude*sin(-PI*frequency+time);

  //vertices
  gl_Position = projection*view*model*vec4(aPos.x+effect,aPos.y,aPos.z+effect,1);
  TexCoords=vec2(aTexCoords.x,aTexCoords.y);

}