program p3;

uses averageLib;

var a,b,z,x:integer;
  
begin
write('Введите a и b ');
readln(a,b);

  writeln();
  writeln(average(a,b):0:2); 
  writeln();
  writeln(averageGeom(a,b):0:2);
end.
