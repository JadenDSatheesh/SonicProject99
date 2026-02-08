varying vec2 v_vTexcoord;

void main()
{
    float offset = 0.0015;

    // RGB channel offsets
    float r = texture2D(gm_BaseTexture, v_vTexcoord + vec2(offset, 0.0)).r;
    float g = texture2D(gm_BaseTexture, v_vTexcoord).g;
    float b = texture2D(gm_BaseTexture, v_vTexcoord - vec2(offset, 0.0)).b;

    vec3 color = vec3(r, g, b);

    // Add scanlines (using vertical texture coordinate)
    float scan = sin(v_vTexcoord.y * 1050.0) * 0.05; // Frequency and strength
    color -= scan;

    gl_FragColor = vec4(color, 0.8);
}
