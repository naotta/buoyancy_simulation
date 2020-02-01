float v0 = 0.0f;
float v = 0.0f;
float m = 300;
float v1 = 0.0f;
float v2 ;
float g = 9.8f;
float y = 0.0f;
float y0=0.0f;
float r = 20.0f;
float dt = 0.010;
float a = 0.0f;

float V;
float rho = 997.0f;
float yw;
float dv;
void setup(){
  size(600,400);
  frameRate(100);
  V = 2*r*2*r*2*r;
}

void draw(){
  background(200);
  float t = dt*frameCount;
  float F;
  v = v0 + g*t;
  y0 = y0 + v*t + g*t*t/2;
  if(y>200){
    F = -(rho*V*g) + m*g;
    dv = F*t/m;
    y = dv*t;
    yw = y + y0;
    fill(255);
    rect(300,yw,2*r,2*r);
  }else{
    fill(255);
    rect(300,y0,2*r,2*r);
  }
  v0=v;
}
