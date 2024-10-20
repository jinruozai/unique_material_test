shader_type spatial;

uniform sampler2D material_icon : source_color; // 用于材质图标的纹理

void fragment() {
    // 获取当前片段的 UV 坐标
    vec2 uv = UV;

    // 获取图标的纹理颜色
    vec4 icon_color = texture(material_icon, uv);

    // 设置片段颜色，只保留贴图颜色
    ALBEDO = icon_color.rgb;
    ALPHA = icon_color.a;
}
