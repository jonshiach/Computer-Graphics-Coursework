#version 330 core

// Inputs
in vec2 UV;
in vec3 fragmentPosition;
in vec3 normal;

// Output
out vec3 fragmentColour;

// Uniforms
uniform sampler2D diffuseMap;
uniform float ka;

void main()
{
    // Object colour
    vec3 objectColour = vec3(texture(diffuseMap, UV));
    
    // Ambient reflection
    vec3 ambient = ka * objectColour;
    
    // Fragment colour
    fragmentColour = ambient;
}