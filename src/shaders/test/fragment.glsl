
varying vec2 vUv;

void main()
{
    // Pattern 3
    // float strength = vUv.x;

    // Pattern4
    // float strength = vUv.y;

    // Pattern 5
    // float strength = 1.0 - vUv.y;

    // Pattern 6
    // float strength = vUv.y * 10.0;

    // Pattern 7
    // float strength = mod(vUv.y * 10.0, 1.0) ;

    // Pattern 8
    // float strength = mod(vUv.y * 10.0 , 1.0);
    // strength = step(.5, strength);

     // Pattern 9
    // float strength = mod(vUv.y * 10.0 , 1.0);
    // strength = step(0.9, strength);

     // Pattern 10
    // float strength = mod(vUv.x * 10.0 , 1.0);
    // strength = step(0.9, strength);

         // Pattern 11
    // float strength = step(0.9, mod(vUv.x * 10.0 , 1.0));
    // strength += step(0.9, mod(vUv.y * 10.0 , 1.0));

             // Pattern 12
    // float strength = step(0.9, mod(vUv.x * 10.0 , 1.0));
    // strength *= step(0.9, mod(vUv.y * 10.0 , 1.0));

               // Pattern 13
    // float strength = step(0.9, mod(vUv.y * 10.0 , 1.0));
    // strength -= step(0.4, mod(vUv.x * 10.0 , 1.0));

                   // Pattern 14
//     float barX = step(0.4, mod(vUv.x * 10.0 , 1.0));
//     barX *= step(0.8, mod(vUv.y * 10.0 , 1.0));

//     float barY = step(0.8, mod(vUv.x * 10.0 , 1.0));
//     barY *= step(0.4, mod(vUv.y * 10.0 , 1.0));

//    float strength = barX + barY;

                      // Pattern 15
//     float barX = step(0.4, mod(vUv.x * 10.0 , 1.0));
//     barX *= step(0.8, mod(vUv.y * 10.0 + .2, 1.0));

//     float barY = step(0.8, mod(vUv.x * 10.0 +.2, 1.0));
//     barY *= step(0.4, mod(vUv.y * 10.0 , 1.0));

//    float strength = barX + barY;

// Pattern 16
// float strength = abs(vUv.x - .5);

// Pattern 17
float strength = min(abs(vUv.x - .5), abs(vUv.y - .5));




    gl_FragColor = vec4(vec3(strength), 1.0);
}