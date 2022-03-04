precision mediump float;

varying float vRandom;

void main() {
    //出力専用、最終的にスクリーンに描かれる色
    gl_FragColor = vec4(1.0, vRandom, 0.0, 1.0);
}
