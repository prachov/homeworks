uses crt,graph;
var b,b1,g,z,d,d1,i,j,a,ok,c,x,y:integer;
procedure fill(x,y:integer);
var i:integer;
begin
SetFillStyle(1,15);
for i:=0 to 7 do
begin
x:=x+50;
if i mod 2 =0 then
FloodFill(x,y,15);
end;
end;
procedure fill1(x,y:integer);
var i:integer;
begin
SetFillStyle(1,15);
x:=x-100;
for i:=0 to 7 do
begin
x:=x+50;
if i mod 2 <> 0 then
FloodFill(x,y,15);
end;
end;
begin
initgraph(d,d1,'');
x:=getmaxx;
y:=getmaxy;
i:=400;
g:=11;
ok:=1;
rectangle(10,10,400,400);
repeat
a:=a+1;
i:=i-50;
rectangle(10,10,i,i);
until a=7;
a:=0;
i:=400;
repeat
a:=a+1;
i:=i-50;
j:=j+50;
rectangle(10,400,i,10);
rectangle(10,400,400,j);
until a=7;
x:=25;
y:=25;
a:=0;
b:=50;
b1:=0;
fill(x,y+50);
fill1(x,y    );
repeat
a:=a+1;
b:=b+100;
b1:=b1+100;
fill(x,y+b);
fill1(x,y+b1);

until a=3;
readkey;

closegraph;
end.