#version 450

// Colour passed to the fragment shader
layout(location = 0) out vec3 fragColor;

// Uniform buffer containing an MVP matrix.
// Currently the Vulkan backend only sets the rotation matrix
// required to handle device rotation.
layout(binding = 0) uniform UniformBufferObject {
    mat4 MVP;
} ubo;

//position are drawn using 1 unit = 10 unit
//For the y-axis Set 12 to be 0.1 and step to require point
vec2 positions[12] = vec2[](
    vec2(0.3, 0.1), // Bottom left
    vec2(0.7, 0.1),  // Bottom right
    vec2(1.0, 0.5),   // Top right
    vec2(1.0, 0.5),   // Top right
    vec2(0.8, 0.9), // Bottom left
    vec2(0.2, 0.9),   // Top right
    vec2(0.2, 0.9),   // Top right
    vec2(0.0, 0.5),   // Top left
    vec2(0.3, 0.1), // Bottom left
    vec2(0.3, 0.1), // Bottom left
    vec2(1.0, 0.5),
    vec2(0.2, 0.9)
);


vec3 colors[12] = vec3[](
    vec3(1.0,0.0,0.0), // Color for bottom left
    vec3(1.0,0.0,0.0), // Color for bottom right
    vec3(1.0,0.0,0.0), // Color for top right
    vec3(1.0,0.0,0.0), // Color for bottom left
    vec3(1.0,0.0,0.0), // Color for top right
    vec3(1.0,0.0,0.0),  // Color for top left
    vec3(1.0,0.0,0.0), // Color for bottom left
    vec3(1.0,0.0,0.0), // Color for bottom right
    vec3(1.0,0.0,0.0), // Color for top right
    vec3(1.0,0.0,0.0), // Color for bottom left
    vec3(1.0,0.0,0.0), // Color for top right
    vec3(1.0,0.0,0.0)  // Color for top left
);

void main() {
    gl_Position = ubo.MVP * vec4(positions[gl_VertexIndex], 0.0, 1.0);
    fragColor = colors[gl_VertexIndex];
}