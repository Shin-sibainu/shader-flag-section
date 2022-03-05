precision mediump float;

uniform vec3 uColor;
uniform sampler2D uTexture;

varying float vRandom;
varying vec2 vUv;

void main() {
    vec4 textureColor = texture2D(uTexture, vUv);
    //出力専用、最終的にスクリーンに描かれる色
    // gl_FragColor = vec4(uColor, 1.0);
    gl_FragColor = textureColor;
}
