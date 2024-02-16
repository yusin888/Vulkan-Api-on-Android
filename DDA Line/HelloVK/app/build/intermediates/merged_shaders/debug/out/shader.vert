#version 450

// Colour passed to the fragment shader
layout(location = 0) out vec3 fragColor;

// Uniform buffer containing an MVP matrix.
// Currently the vulkan backend only sets the rotation matix
// required to handle device rotation.
layout(binding = 0) uniform UniformBufferObject {
    mat4 MVP;
} ubo;

vec2 positions[13] = vec2[](
    vec2(-1.0, 0.0),  // For the x-axis's  positive
    vec2(1.0, 0.0),  // For the x-axis's  negative
    vec2(0.0, -1.0), // For the y-axis's  positive
    vec2(0.0, 1.0),  // For the x-axis's  negative
    vec2(-3.0/6.0, -4.0/6.0),   // DDA Line Draw to scale of  1 unit =5 unit
    vec2(-2.0/6.0, -3.0/6.0),
    vec2(-1.0/6.0, -2.0/6.0),
    vec2(0.0/6.0, -2.0/6.0),
    vec2(1.0/6.0, -1.0/6.0),
    vec2(2.0/6.0, 0.0/6.0),
    vec2(3.0/6.0, 0.0/6.0),
     vec2(4.0/6.0, 1.0/6.0),
     vec2(5.0/6.0, 2.0/6.0)
);

vec3 colors[13] = vec3[](
    vec3(0.0, 0.0, 0.0),   // Black for the grid
    vec3(0.0, 0.0, 0.0),
    vec3(0.0, 0.0, 0.0),
    vec3(0.0, 0.0, 0.0),
    vec3(0.0, 0.0, 0.1),   // Blue for the line
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1),
    vec3(0.0, 0.0, 0.1)

);

void main() {
    gl_Position = ubo.MVP * vec4(positions[gl_VertexIndex], 0.0, 1.0);
    fragColor = colors[gl_VertexIndex];
}