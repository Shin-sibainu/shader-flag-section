//3⇨2次元にするための座標変換
uniform mat4 modelMatrix; //被写体となる物体が三次元空間のどの位置にあるのかを定義するための座標変換
uniform mat4 viewMatrix; //カメラの位置や、その向けられている方角を決めるために行なう座標変換
uniform mat4 projectionMatrix; //三次元空間のどの領域を撮影するのかなどを定義します(perspective)。遠近法の効果が得られます

//頂点情報
attribute vec3 position;
attribute float aRandom;

varying float vRandom;

void main() {
    //全ての変換を完了した頂点座標
    // gl_Position = modelMatrix * viewMatrix * projectionMatrix * vec4(position, 1.0);

    vec4 modelPosition = modelMatrix * vec4(position, 1.0);

    // modelPosition.x += 0.1;
    // modelPosition.z += 0.1;
    // modelPosition.z += sin(modelPosition.x * 10.0) * 0.1;
    modelPosition.z += aRandom * 0.1;

    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;

    gl_Position = projectionPosition;

    vRandom = aRandom;
}
