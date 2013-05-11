size(910, 550);
colorMode(RGB, 255);
background(#9B9B9B);
noStroke();

int a = 0;
int b = 0;
int c = 0;
int d = 0;
float _cos = 0;
float _sin = 0;
float x1, x2, y1, y2;
float w = width/2;
float h = height/2;

while(a < 1000 && b < 1000 && c > -1000 && d > -1000){
    a = a + 1;
    b = b + 1;
    c = c - 1;
    d = d - 1;
    _cos = cos(millis() / 30.f);
    _sin = sin(millis() / 30.f);
    x1 = a * _cos;
    y1 = b * _sin;
    x2 = c * _cos;
    y2 = d * _sin;
    line(x1 + w, y2 + h, y2 + w, x2 + h);
    line(x2 + w, y1 + h, y2 + w, x2 + h);
    line(-x1 + w, -y2 + h, -y2 + w, -x2 + h);
    line(-x2 + w, -y1 + h, -y2 + w, -x2 + h);
    stroke(255);
}
save("meishi_2013.jpeg");
