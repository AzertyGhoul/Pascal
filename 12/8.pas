uses graphABC;
var c,d,z,v,b,n :color;
  i:integer;
begin
  

c:=clrandom;
d:=clrandom;
z:=clrandom;
v:=clrandom;
b:=clrandom;
n:=clrandom;

setwindowwidth(1500);
setwindowheight(1000);
setpenwidth(3);
setbrushstyle(bsClear);
setpencolor(c);
Circle(200,200,180);
setpenstyle(psDot);

Pie(200,200,180,360,36);
Pie(200,200,180,324,36);
Pie(200,200,180,288,36);
Pie(200,200,180,252,36);
Pie(200,200,180,216,36);
Pie(200,200,180,180,36);
Pie(200,200,180,144,36);
Pie(200,200,180,108,36);
Pie(200,200,180,72,36);
Pie(200,200,180,36,36);
floodfill(210,211,d);

setpenstyle(psSolid);
setbrushstyle(bsClear);
setpencolor(z);
Circle(600,200,180);
setpenstyle(psDashDot);

Pie(600,200,180,360,36);
Pie(600,200,180,324,36);
Pie(600,200,180,288,36);
Pie(600,200,180,252,36);
Pie(600,200,180,216,36);
Pie(600,200,180,180,36);
Pie(600,200,180,144,36);
Pie(600,200,180,108,36);
Pie(600,200,180,72,36);
Pie(600,200,180,36,36);
floodfill(610,211,v);

setpenstyle(psSolid);
setbrushstyle(bsClear);
setpencolor(b);
Circle(1000,200,180);
setpenstyle(psDashDotDot);

Pie(1000,200,180,360,36);
Pie(1000,200,180,324,36);
Pie(1000,200,180,288,36);
Pie(1000,200,180,252,36);
Pie(1000,200,180,216,36);
Pie(1000,200,180,180,36);
Pie(1000,200,180,144,36);
Pie(1000,200,180,108,36);
Pie(1000,200,180,72,36);
Pie(1000,200,180,36,36);
floodfill(1000,211,n);

end.