xof 0302txt 0032
Header {
 1;
 0;
 1;
}
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

template FrameTransformMatrix {
 <F6F23F41-7686-11cf-8F52-0040333594A3>
 Matrix4x4 frameMatrix;
}

template Frame {
 <3D82AB46-62DA-11cf-AB39-0020AF71E433>
 [...]
}
template FloatKeys {
 <10DD46A9-775B-11cf-8F52-0040333594A3>
 DWORD nValues;
 array FLOAT values[nValues];
}

template TimedFloatKeys {
 <F406B180-7B3B-11cf-8F52-0040333594A3>
 DWORD time;
 FloatKeys tfkeys;
}

template AnimationKey {
 <10DD46A8-775B-11cf-8F52-0040333594A3>
 DWORD keyType;
 DWORD nKeys;
 array TimedFloatKeys keys[nKeys];
}

template AnimationOptions {
 <E2BF56C0-840F-11cf-8F52-0040333594A3>
 DWORD openclosed;
 DWORD positionquality;
}

template Animation {
 <3D82AB4F-62DA-11cf-AB39-0020AF71E433>
 [...]
}

template AnimationSet {
 <3D82AB50-62DA-11cf-AB39-0020AF71E433>
 [Animation]
}
Frame E__QTworkspace_Proje {
   FrameTransformMatrix {
1.000000,0.000000,0.000000,0.000000,
0.000000,1.000000,0.000000,0.000000,
0.000000,0.000000,1.000000,0.000000,
0.000000,0.000000,0.000000,1.000000;;
 }
Mesh E__QTworkspace_Proj1 {
 221;
884.945007;-87.390999;0.000000;,
884.945007;-87.390999;40.000000;,
815.831970;-89.964996;0.000000;,
815.831970;-89.964996;40.000000;,
884.945007;-87.390999;40.000000;,
884.945007;-87.390999;0.000000;,
884.038025;-63.056999;40.000000;,
884.038025;-63.056999;0.000000;,
884.945007;-87.390999;40.500000;,
884.945007;-87.390999;40.000000;,
884.038025;-63.056999;40.500000;,
884.038025;-63.056999;40.000000;,
829.476013;-63.665001;40.000000;,
829.476013;-63.665001;40.500000;,
822.179993;-63.936001;40.000000;,
822.179993;-63.936001;40.500000;,
816.216980;-89.550003;40.500000;,
816.216980;-89.550003;40.000000;,
815.340027;-66.015999;40.500000;,
815.340027;-66.015999;40.000000;,
814.926025;-65.630997;40.500000;,
814.926025;-65.630997;40.000000;,
815.831970;-89.964996;40.500000;,
815.831970;-89.964996;40.000000;,
822.247986;-65.759003;40.000000;,
822.247986;-65.759003;40.500000;,
815.340027;-66.015999;40.000000;,
815.340027;-66.015999;40.500000;,
814.926025;-65.630997;40.000000;,
814.926025;-65.630997;40.500000;,
821.833008;-65.374001;40.000000;,
821.833008;-65.374001;40.500000;,
821.833008;-65.374001;40.000000;,
821.833008;-65.374001;40.500000;,
821.765991;-63.550999;40.000000;,
821.765991;-63.550999;40.500000;,
822.247986;-65.759003;40.500000;,
822.247986;-65.759003;40.000000;,
822.179993;-63.936001;40.500000;,
822.179993;-63.936001;40.000000;,
884.530029;-87.005997;40.000000;,
884.530029;-87.005997;40.500000;,
883.653015;-63.471001;40.000000;,
883.653015;-63.471001;40.500000;,
821.765991;-63.550999;40.000000;,
821.765991;-63.550999;40.500000;,
829.859985;-63.250000;40.000000;,
829.859985;-63.250000;40.500000;,
829.581970;-66.533997;40.000000;,
829.581970;-66.533997;40.500000;,
829.476013;-63.665001;40.000000;,
829.476013;-63.665001;40.500000;,
829.581970;-66.533997;40.500000;,
829.581970;-66.533997;40.000000;,
833.762024;-65.331001;40.500000;,
833.762024;-65.331001;40.000000;,
833.703003;-64.931999;40.500000;,
833.703003;-64.931999;40.000000;,
829.963013;-66.008003;40.500000;,
829.963013;-66.008003;40.000000;,
869.500977;-64.945999;40.000000;,
869.500977;-64.945999;40.500000;,
833.762024;-65.331001;40.000000;,
833.762024;-65.331001;40.500000;,
829.859985;-63.250000;0.000000;,
829.859985;-63.250000;40.000000;,
829.963013;-66.008003;0.000000;,
829.963013;-66.008003;40.000000;,
833.703003;-64.931999;40.000000;,
833.703003;-64.931999;40.500000;,
869.085999;-64.551003;40.000000;,
869.085999;-64.551003;40.500000;,
868.984009;-61.792999;40.500000;,
868.984009;-61.792999;40.000000;,
869.085999;-64.551003;40.500000;,
869.085999;-64.551003;40.000000;,
876.934998;-63.320999;40.000000;,
876.934998;-63.320999;40.500000;,
884.038025;-63.056999;40.000000;,
884.038025;-63.056999;40.500000;,
876.481995;-61.914001;40.000000;,
876.481995;-61.914001;40.500000;,
869.398010;-62.178001;40.000000;,
869.398010;-62.178001;40.500000;,
876.867004;-61.499001;40.500000;,
876.867004;-61.499001;40.000000;,
868.984009;-61.792999;40.500000;,
868.984009;-61.792999;40.000000;,
876.549988;-63.736000;40.000000;,
876.549988;-63.736000;40.500000;,
876.481995;-61.914001;40.000000;,
876.481995;-61.914001;40.500000;,
876.934998;-63.320999;40.500000;,
876.934998;-63.320999;40.000000;,
876.867004;-61.499001;40.500000;,
876.867004;-61.499001;40.000000;,
883.653015;-63.471001;40.000000;,
883.653015;-63.471001;40.500000;,
876.549988;-63.736000;40.000000;,
876.549988;-63.736000;40.500000;,
868.984009;-61.792999;0.000000;,
868.984009;-61.792999;40.000000;,
876.867004;-61.499001;0.000000;,
876.867004;-61.499001;40.000000;,
821.765991;-63.550999;0.000000;,
821.765991;-63.550999;40.000000;,
829.859985;-63.250000;0.000000;,
829.859985;-63.250000;40.000000;,
884.530029;-87.005997;40.500000;,
884.530029;-87.005997;40.000000;,
816.216980;-89.550003;40.500000;,
816.216980;-89.550003;40.000000;,
815.831970;-89.964996;40.500000;,
815.831970;-89.964996;40.000000;,
884.945007;-87.390999;40.500000;,
884.945007;-87.390999;40.000000;,
884.038025;-63.056999;40.000000;,
884.038025;-63.056999;0.000000;,
876.934998;-63.320999;40.000000;,
876.934998;-63.320999;0.000000;,
821.833008;-65.374001;40.000000;,
821.833008;-65.374001;0.000000;,
814.926025;-65.630997;40.000000;,
814.926025;-65.630997;0.000000;,
814.926025;-65.630997;40.000000;,
814.926025;-65.630997;0.000000;,
815.831970;-89.964996;40.000000;,
815.831970;-89.964996;0.000000;,
821.765991;-63.550999;40.000000;,
821.765991;-63.550999;0.000000;,
821.833008;-65.374001;40.000000;,
821.833008;-65.374001;0.000000;,
869.398010;-62.178001;40.000000;,
869.398010;-62.178001;40.500000;,
869.500977;-64.945999;40.000000;,
869.500977;-64.945999;40.500000;,
829.859985;-63.250000;40.000000;,
829.859985;-63.250000;40.500000;,
829.963013;-66.008003;40.000000;,
829.963013;-66.008003;40.500000;,
869.085999;-64.551003;0.000000;,
869.085999;-64.551003;40.000000;,
868.984009;-61.792999;0.000000;,
868.984009;-61.792999;40.000000;,
876.867004;-61.499001;0.000000;,
876.867004;-61.499001;40.000000;,
876.934998;-63.320999;0.000000;,
876.934998;-63.320999;40.000000;,
869.085999;-64.551003;40.000000;,
869.085999;-64.551003;0.000000;,
833.703003;-64.931999;40.000000;,
833.703003;-64.931999;0.000000;,
829.963013;-66.008003;40.000000;,
829.963013;-66.008003;0.000000;,
829.859985;-63.250000;40.000000;,
821.765991;-63.550999;40.000000;,
829.963013;-66.008003;40.000000;,
821.833008;-65.374001;40.000000;,
814.926025;-65.630997;40.000000;,
815.831970;-89.964996;40.000000;,
884.945007;-87.390999;40.000000;,
833.703003;-64.931999;40.000000;,
869.085999;-64.551003;40.000000;,
869.085999;-64.551003;40.000000;,
884.945007;-87.390999;40.000000;,
876.934998;-63.320999;40.000000;,
884.038025;-63.056999;40.000000;,
868.984009;-61.792999;40.000000;,
876.867004;-61.499001;40.000000;,
883.653015;-63.471001;40.500000;,
884.038025;-63.056999;40.500000;,
876.549988;-63.736000;40.500000;,
876.934998;-63.320999;40.500000;,
822.179993;-63.936001;40.500000;,
821.765991;-63.550999;40.500000;,
822.247986;-65.759003;40.500000;,
821.833008;-65.374001;40.500000;,
833.762024;-65.331001;40.500000;,
833.703003;-64.931999;40.500000;,
829.581970;-66.533997;40.500000;,
829.963013;-66.008003;40.500000;,
869.500977;-64.945999;40.500000;,
869.085999;-64.551003;40.500000;,
833.762024;-65.331001;40.500000;,
833.703003;-64.931999;40.500000;,
869.398010;-62.178001;40.500000;,
868.984009;-61.792999;40.500000;,
869.500977;-64.945999;40.500000;,
869.085999;-64.551003;40.500000;,
815.340027;-66.015999;40.500000;,
814.926025;-65.630997;40.500000;,
816.216980;-89.550003;40.500000;,
815.831970;-89.964996;40.500000;,
829.476013;-63.665001;40.500000;,
829.859985;-63.250000;40.500000;,
822.179993;-63.936001;40.500000;,
821.765991;-63.550999;40.500000;,
876.549988;-63.736000;40.500000;,
876.934998;-63.320999;40.500000;,
876.481995;-61.914001;40.500000;,
876.867004;-61.499001;40.500000;,
884.530029;-87.005997;40.500000;,
884.945007;-87.390999;40.500000;,
883.653015;-63.471001;40.500000;,
884.038025;-63.056999;40.500000;,
884.945007;-87.390999;40.500000;,
884.530029;-87.005997;40.500000;,
815.831970;-89.964996;40.500000;,
816.216980;-89.550003;40.500000;,
868.984009;-61.792999;40.500000;,
869.398010;-62.178001;40.500000;,
876.867004;-61.499001;40.500000;,
876.481995;-61.914001;40.500000;,
822.247986;-65.759003;40.500000;,
821.833008;-65.374001;40.500000;,
815.340027;-66.015999;40.500000;,
814.926025;-65.630997;40.500000;,
829.581970;-66.533997;40.500000;,
829.963013;-66.008003;40.500000;,
829.476013;-63.665001;40.500000;,
829.859985;-63.250000;40.500000;;

 115;
3;0,1,2;,
3;1,3,2;,
3;4,5,6;,
3;5,7,6;,
3;8,9,10;,
3;9,11,10;,
3;12,13,14;,
3;13,15,14;,
3;16,17,18;,
3;17,19,18;,
3;20,21,22;,
3;21,23,22;,
3;24,25,26;,
3;25,27,26;,
3;28,29,30;,
3;29,31,30;,
3;32,33,34;,
3;33,35,34;,
3;36,37,38;,
3;37,39,38;,
3;40,41,42;,
3;41,43,42;,
3;44,45,46;,
3;45,47,46;,
3;48,49,50;,
3;49,51,50;,
3;52,53,54;,
3;53,55,54;,
3;56,57,58;,
3;57,59,58;,
3;60,61,62;,
3;61,63,62;,
3;64,65,66;,
3;65,67,66;,
3;68,69,70;,
3;69,71,70;,
3;72,73,74;,
3;73,75,74;,
3;76,77,78;,
3;77,79,78;,
3;80,81,82;,
3;81,83,82;,
3;84,85,86;,
3;85,87,86;,
3;88,89,90;,
3;89,91,90;,
3;92,93,94;,
3;93,95,94;,
3;96,97,98;,
3;97,99,98;,
3;100,101,102;,
3;101,103,102;,
3;104,105,106;,
3;105,107,106;,
3;108,109,110;,
3;109,111,110;,
3;112,113,114;,
3;113,115,114;,
3;116,117,118;,
3;117,119,118;,
3;120,121,122;,
3;121,123,122;,
3;124,125,126;,
3;125,127,126;,
3;128,129,130;,
3;129,131,130;,
3;132,133,134;,
3;133,135,134;,
3;136,137,138;,
3;137,139,138;,
3;140,141,142;,
3;141,143,142;,
3;144,145,146;,
3;145,147,146;,
3;148,149,150;,
3;149,151,150;,
3;150,151,152;,
3;151,153,152;,
3;154,155,156;,
3;155,157,156;,
3;156,157,158;,
3;158,159,156;,
3;159,160,156;,
3;156,160,161;,
3;160,162,161;,
3;163,164,165;,
3;164,166,165;,
3;163,165,167;,
3;165,168,167;,
3;169,170,171;,
3;170,172,171;,
3;173,174,175;,
3;174,176,175;,
3;177,178,179;,
3;178,180,179;,
3;181,182,183;,
3;182,184,183;,
3;185,186,187;,
3;186,188,187;,
3;189,190,191;,
3;190,192,191;,
3;193,194,195;,
3;194,196,195;,
3;197,198,199;,
3;198,200,199;,
3;201,202,203;,
3;202,204,203;,
3;205,206,207;,
3;206,208,207;,
3;209,210,211;,
3;210,212,211;,
3;213,214,215;,
3;214,216,215;,
3;217,218,219;,
3;218,220,219;;
MeshMaterialList {
 2;
 115;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1,
  1;;
Material {
 1.000000;1.000000;1.000000;1.000000;;
8.000000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;
TextureFilename {
"CE15_KeYanLou_0.bmp";
}
 }
Material {
 0.900000;0.900000;0.900000;1.000000;;
8.000000;
 0.000000;0.000000;0.000000;;
 0.000000;0.000000;0.000000;;
TextureFilename {
"CE15_KeYanLou_1.bmp";
}
 }
}

 MeshNormals {
 221;
0.037217;-0.999307;0.000000;,
0.037217;-0.999307;0.000000;,
0.037217;-0.999307;0.000000;,
0.037217;-0.999307;0.000000;,
0.999306;0.037246;0.000000;,
0.999306;0.037246;0.000000;,
0.999306;0.037246;0.000000;,
0.999306;0.037246;0.000000;,
0.999306;0.037246;0.000000;,
0.999306;0.037246;0.000000;,
0.999306;0.037246;0.000000;,
0.999306;0.037246;0.000000;,
0.037118;-0.999311;0.000000;,
0.037118;-0.999311;0.000000;,
0.037118;-0.999311;0.000000;,
0.037118;-0.999311;0.000000;,
0.999306;0.037237;0.000000;,
0.999306;0.037237;0.000000;,
0.999306;0.037237;0.000000;,
0.999306;0.037237;0.000000;,
-0.999308;-0.037204;0.000000;,
-0.999308;-0.037204;0.000000;,
-0.999308;-0.037204;0.000000;,
-0.999308;-0.037204;0.000000;,
0.037177;-0.999309;0.000000;,
0.037177;-0.999309;0.000000;,
0.037177;-0.999309;0.000000;,
0.037177;-0.999309;0.000000;,
-0.037182;0.999308;0.000000;,
-0.037182;0.999308;0.000000;,
-0.037182;0.999308;0.000000;,
-0.037182;0.999308;0.000000;,
-0.999325;-0.036737;0.000000;,
-0.999325;-0.036737;0.000000;,
-0.999325;-0.036737;0.000000;,
-0.999325;-0.036737;0.000000;,
0.999305;0.037271;0.000000;,
0.999305;0.037271;0.000000;,
0.999305;0.037271;0.000000;,
0.999305;0.037271;0.000000;,
-0.999306;-0.037238;0.000000;,
-0.999306;-0.037238;0.000000;,
-0.999306;-0.037238;0.000000;,
-0.999306;-0.037238;0.000000;,
-0.037162;0.999309;0.000000;,
-0.037162;0.999309;0.000000;,
-0.037162;0.999309;0.000000;,
-0.037162;0.999309;0.000000;,
-0.999319;-0.036907;0.000000;,
-0.999319;-0.036907;0.000000;,
-0.999319;-0.036907;0.000000;,
-0.999319;-0.036907;0.000000;,
0.276569;-0.960994;0.000000;,
0.276569;-0.960994;0.000000;,
0.276569;-0.960994;0.000000;,
0.276569;-0.960994;0.000000;,
-0.276487;0.961018;0.000000;,
-0.276487;0.961018;0.000000;,
-0.276487;0.961018;0.000000;,
-0.276487;0.961018;0.000000;,
0.010772;-0.999942;0.000000;,
0.010772;-0.999942;0.000000;,
0.010772;-0.999942;0.000000;,
0.010772;-0.999942;0.000000;,
0.999303;0.037330;0.000000;,
0.999303;0.037330;0.000000;,
0.999303;0.037330;0.000000;,
0.999303;0.037330;0.000000;,
-0.010767;0.999942;0.000000;,
-0.010767;0.999942;0.000000;,
-0.010767;0.999942;0.000000;,
-0.010767;0.999942;0.000000;,
-0.999317;-0.036954;0.000000;,
-0.999317;-0.036954;0.000000;,
-0.999317;-0.036954;0.000000;,
-0.999317;-0.036954;0.000000;,
-0.037142;0.999310;0.000000;,
-0.037142;0.999310;0.000000;,
-0.037142;0.999310;0.000000;,
-0.037142;0.999310;0.000000;,
0.037241;-0.999306;0.000000;,
0.037241;-0.999306;0.000000;,
0.037241;-0.999306;0.000000;,
0.037241;-0.999306;0.000000;,
-0.037269;0.999305;0.000000;,
-0.037269;0.999305;0.000000;,
-0.037269;0.999305;0.000000;,
-0.037269;0.999305;0.000000;,
-0.999304;-0.037292;0.000000;,
-0.999304;-0.037292;0.000000;,
-0.999304;-0.037292;0.000000;,
-0.999304;-0.037292;0.000000;,
0.999304;0.037292;0.000000;,
0.999304;0.037292;0.000000;,
0.999304;0.037292;0.000000;,
0.999304;0.037292;0.000000;,
0.037282;-0.999305;0.000000;,
0.037282;-0.999305;0.000000;,
0.037282;-0.999305;0.000000;,
0.037282;-0.999305;0.000000;,
-0.037269;0.999305;0.000000;,
-0.037269;0.999305;0.000000;,
-0.037269;0.999305;0.000000;,
-0.037269;0.999305;0.000000;,
-0.037162;0.999309;0.000000;,
-0.037162;0.999309;0.000000;,
-0.037162;0.999309;0.000000;,
-0.037162;0.999309;0.000000;,
-0.037215;0.999307;0.000000;,
-0.037215;0.999307;0.000000;,
-0.037215;0.999307;0.000000;,
-0.037215;0.999307;0.000000;,
0.037217;-0.999307;0.000000;,
0.037217;-0.999307;0.000000;,
0.037217;-0.999307;0.000000;,
0.037217;-0.999307;0.000000;,
-0.037142;0.999310;0.000000;,
-0.037142;0.999310;0.000000;,
-0.037142;0.999310;0.000000;,
-0.037142;0.999310;0.000000;,
-0.037182;0.999308;0.000000;,
-0.037182;0.999308;0.000000;,
-0.037182;0.999308;0.000000;,
-0.037182;0.999308;0.000000;,
-0.999308;-0.037204;0.000000;,
-0.999308;-0.037204;0.000000;,
-0.999308;-0.037204;0.000000;,
-0.999308;-0.037204;0.000000;,
-0.999325;-0.036737;0.000000;,
-0.999325;-0.036737;0.000000;,
-0.999325;-0.036737;0.000000;,
-0.999325;-0.036737;0.000000;,
0.999309;0.037173;0.000000;,
0.999309;0.037173;0.000000;,
0.999309;0.037173;0.000000;,
0.999309;0.037173;0.000000;,
0.999303;0.037330;0.000000;,
0.999303;0.037330;0.000000;,
0.999303;0.037330;0.000000;,
0.999303;0.037330;0.000000;,
-0.999317;-0.036954;0.000000;,
-0.999317;-0.036954;0.000000;,
-0.999317;-0.036954;0.000000;,
-0.999317;-0.036954;0.000000;,
0.999304;0.037292;0.000000;,
0.999304;0.037292;0.000000;,
0.999304;0.037292;0.000000;,
0.999304;0.037292;0.000000;,
-0.010767;0.999942;0.000000;,
-0.010767;0.999942;0.000000;,
-0.100146;0.994973;0.000000;,
-0.189438;0.981893;0.000000;,
-0.276487;0.961018;0.000000;,
-0.276487;0.961018;0.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;,
0.000000;0.000000;1.000000;;

 115;
3;0,1,2;,
3;1,3,2;,
3;4,5,6;,
3;5,7,6;,
3;8,9,10;,
3;9,11,10;,
3;12,13,14;,
3;13,15,14;,
3;16,17,18;,
3;17,19,18;,
3;20,21,22;,
3;21,23,22;,
3;24,25,26;,
3;25,27,26;,
3;28,29,30;,
3;29,31,30;,
3;32,33,34;,
3;33,35,34;,
3;36,37,38;,
3;37,39,38;,
3;40,41,42;,
3;41,43,42;,
3;44,45,46;,
3;45,47,46;,
3;48,49,50;,
3;49,51,50;,
3;52,53,54;,
3;53,55,54;,
3;56,57,58;,
3;57,59,58;,
3;60,61,62;,
3;61,63,62;,
3;64,65,66;,
3;65,67,66;,
3;68,69,70;,
3;69,71,70;,
3;72,73,74;,
3;73,75,74;,
3;76,77,78;,
3;77,79,78;,
3;80,81,82;,
3;81,83,82;,
3;84,85,86;,
3;85,87,86;,
3;88,89,90;,
3;89,91,90;,
3;92,93,94;,
3;93,95,94;,
3;96,97,98;,
3;97,99,98;,
3;100,101,102;,
3;101,103,102;,
3;104,105,106;,
3;105,107,106;,
3;108,109,110;,
3;109,111,110;,
3;112,113,114;,
3;113,115,114;,
3;116,117,118;,
3;117,119,118;,
3;120,121,122;,
3;121,123,122;,
3;124,125,126;,
3;125,127,126;,
3;128,129,130;,
3;129,131,130;,
3;132,133,134;,
3;133,135,134;,
3;136,137,138;,
3;137,139,138;,
3;140,141,142;,
3;141,143,142;,
3;144,145,146;,
3;145,147,146;,
3;148,149,150;,
3;149,151,150;,
3;150,151,152;,
3;151,153,152;,
3;154,155,156;,
3;155,157,156;,
3;156,157,158;,
3;158,159,156;,
3;159,160,156;,
3;156,160,161;,
3;160,162,161;,
3;163,164,165;,
3;164,166,165;,
3;163,165,167;,
3;165,168,167;,
3;169,170,171;,
3;170,172,171;,
3;173,174,175;,
3;174,176,175;,
3;177,178,179;,
3;178,180,179;,
3;181,182,183;,
3;182,184,183;,
3;185,186,187;,
3;186,188,187;,
3;189,190,191;,
3;190,192,191;,
3;193,194,195;,
3;194,196,195;,
3;197,198,199;,
3;198,200,199;,
3;201,202,203;,
3;202,204,203;,
3;205,206,207;,
3;206,208,207;,
3;209,210,211;,
3;210,212,211;,
3;213,214,215;,
3;214,216,215;,
3;217,218,219;,
3;218,220,219;;
 }
MeshTextureCoords {
 221;
2.357100;1.785700;,
2.357100;1.000000;,
0.928600;1.785700;,
0.928600;1.000000;,
0.857100;1.000000;,
0.857100;1.785700;,
1.357100;1.000000;,
1.357100;1.785700;,
0.785700;1.000000;,
0.785700;1.007100;,
1.285700;1.000000;,
1.285700;1.007100;,
0.642900;1.007100;,
0.642900;1.000000;,
0.500000;1.007100;,
0.500000;1.000000;,
0.285700;1.000000;,
0.285700;1.007100;,
0.785700;1.000000;,
0.785700;1.007100;,
0.071400;1.000000;,
0.071400;1.007100;,
0.571400;1.000000;,
0.571400;1.007100;,
1.000000;1.007100;,
1.000000;1.000000;,
0.857100;1.007100;,
0.857100;1.000000;,
0.500000;1.007100;,
0.500000;1.000000;,
0.357100;1.007100;,
0.357100;1.000000;,
0.357100;1.007100;,
0.357100;1.000000;,
0.285700;1.007100;,
0.285700;1.000000;,
0.857100;1.000000;,
0.857100;1.007100;,
0.928600;1.000000;,
0.928600;1.007100;,
1.285700;1.007100;,
1.285700;1.000000;,
0.785700;1.007100;,
0.785700;1.000000;,
0.642900;1.007100;,
0.642900;1.000000;,
0.500000;1.007100;,
0.500000;1.000000;,
0.571400;1.007100;,
0.571400;1.000000;,
0.500000;1.007100;,
0.500000;1.000000;,
0.142900;1.000000;,
0.142900;1.007100;,
0.214300;1.000000;,
0.214300;1.007100;,
0.857100;1.000000;,
0.857100;1.007100;,
0.928600;1.000000;,
0.928600;1.007100;,
0.785700;1.007100;,
0.785700;1.000000;,
0.071400;1.007100;,
0.071400;1.000000;,
0.428600;1.785700;,
0.428600;1.000000;,
0.357100;1.785700;,
0.357100;1.000000;,
1.285700;1.007100;,
1.285700;1.000000;,
0.571400;1.007100;,
0.571400;1.000000;,
0.142900;1.000000;,
0.142900;1.007100;,
0.214300;1.000000;,
0.214300;1.007100;,
0.500000;1.007100;,
0.500000;1.000000;,
0.357100;1.007100;,
0.357100;1.000000;,
1.071400;1.007100;,
1.071400;1.000000;,
0.928600;1.007100;,
0.928600;1.000000;,
0.500000;1.000000;,
0.500000;1.007100;,
0.642900;1.000000;,
0.642900;1.007100;,
0.642900;1.007100;,
0.642900;1.000000;,
0.571400;1.007100;,
0.571400;1.000000;,
0.071400;1.000000;,
0.071400;1.007100;,
0.142900;1.000000;,
0.142900;1.007100;,
1.000000;1.007100;,
1.000000;1.000000;,
0.857100;1.007100;,
0.857100;1.000000;,
0.857100;1.785700;,
0.857100;1.000000;,
0.714300;1.785700;,
0.714300;1.000000;,
0.428600;1.785700;,
0.428600;1.000000;,
0.285700;1.785700;,
0.285700;1.000000;,
0.928600;1.000000;,
0.928600;1.007100;,
2.357100;1.000000;,
2.357100;1.007100;,
0.071400;1.000000;,
0.071400;1.007100;,
1.500000;1.000000;,
1.500000;1.007100;,
0.428600;1.000000;,
0.428600;1.785700;,
0.571400;1.000000;,
0.571400;1.785700;,
0.142900;1.000000;,
0.142900;1.785700;,
0.285700;1.000000;,
0.285700;1.785700;,
0.285700;1.000000;,
0.285700;1.785700;,
0.785700;1.000000;,
0.785700;1.785700;,
0.500000;1.000000;,
0.500000;1.785700;,
0.571400;1.000000;,
0.571400;1.785700;,
0.571400;1.007100;,
0.571400;1.000000;,
0.500000;1.007100;,
0.500000;1.000000;,
0.928600;1.007100;,
0.928600;1.000000;,
0.857100;1.007100;,
0.857100;1.000000;,
0.571400;1.785700;,
0.571400;1.000000;,
0.500000;1.785700;,
0.500000;1.000000;,
0.428600;1.785700;,
0.428600;1.000000;,
0.357100;1.785700;,
0.357100;1.000000;,
0.142900;1.000000;,
0.142900;1.785700;,
0.857100;1.000000;,
0.857100;1.785700;,
0.928600;1.000000;,
0.928600;1.785700;,
0.301300;1.000000;,
0.138700;1.000000;,
0.301300;0.894700;,
0.138700;0.930400;,
0.000000;0.930400;,
0.000000;0.001100;,
1.387800;0.001100;,
0.377100;0.930400;,
1.086900;0.894700;,
0.086900;0.894700;,
0.387800;0.001100;,
0.245200;0.930400;,
0.387800;0.930400;,
0.086900;1.000000;,
0.245200;1.000000;,
0.053300;2.000000;,
0.000000;1.000000;,
1.000000;2.000000;,
0.946700;1.000000;,
0.179900;2.000000;,
0.000000;1.000000;,
1.000000;2.000000;,
0.820100;1.000000;,
0.987700;1.000000;,
1.000000;2.000000;,
0.000000;1.000000;,
0.116100;2.000000;,
1.100300;1.000000;,
1.087700;2.000000;,
0.001700;1.000000;,
0.000000;2.000000;,
0.873800;1.000000;,
1.000000;2.000000;,
0.000000;1.000000;,
0.129500;2.000000;,
0.017300;2.000000;,
0.000000;1.000000;,
1.035800;2.000000;,
1.053100;1.000000;,
0.049400;2.000000;,
0.000000;1.000000;,
0.950600;2.000000;,
1.000000;1.000000;,
0.000000;2.000000;,
0.179900;1.000000;,
0.820100;2.000000;,
1.000000;1.000000;,
0.012100;2.000000;,
0.000000;1.000000;,
0.722400;2.000000;,
0.734400;1.000000;,
1.095200;1.000000;,
1.088800;2.000000;,
0.000000;1.000000;,
0.006300;2.000000;,
1.000000;1.000000;,
0.949300;2.000000;,
0.000000;1.000000;,
0.050700;2.000000;,
0.000000;2.000000;,
0.054700;1.000000;,
0.945300;2.000000;,
1.000000;1.000000;,
1.000000;1.000000;,
0.843700;2.000000;,
0.122300;1.000000;,
0.000000;2.000000;;
}
}
 }
