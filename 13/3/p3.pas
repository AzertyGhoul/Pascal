program p3;

uses averageLib;

var a,b,z,x:integer;
  
begin
write('Введите 2 катета прямоугольного треугольника ');
readln(a,b);

  writeln();
  writeln(average(a,b):0:2); 
  writeln();
  writeln(averageGeom(a,b):0:2);
end.