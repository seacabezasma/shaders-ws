precision highp float;

uniform vec2 u_resolution;
uniform vec2 translate;
uniform float scale;

void main() {

  vec2 st = gl_FragCoord.xy / u_resolution.xy;
  
  st.x = (u_resolution.x / u_resolution.y) * (st.x  - (translate.x * 2) ) * scale;
  st.y = (st.y - translate.y) * scale;
  
  int m = 100;
  int n = 0;
  float a = st.x;
  float b = st.y;

  while(n < m)
  {
    float aa = a * a;
    float bb = b * b;
    float tab = 2.0 * a * b;

    a = aa - bb + st.x;
    b = tab + st.y;

    if (a*a + b*b > 4.0)
    {
      break;
    }

    n+=1;
  }

  if(n == m)
  {
    gl_FragColor = vec4(0, 0, 0, 1);
  }
  else
  {
    vec3 color1 = vec3(0, 0, 1);
    vec3 color2 = vec3(1, 1, 1);

    float pt = sqrt((n * 1.0) / m);

    vec3 col = mix(color1, color2, pt);

    gl_FragColor = vec4(col, 1.0);
  }
}