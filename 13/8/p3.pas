program p8;

uses practiceLib;

var a,b,z,x:integer;
  
begin
write('Введите 2 переменные для среднегоарефметического ');
readln(a,b);

write('Введите 2 переменные для среднегеометрического ');
readln(z,x);

  writeln();
  writeln(average(a,b):0:2); 
  writeln();
  writeln(averageGeom(z,x):0:2);
end.