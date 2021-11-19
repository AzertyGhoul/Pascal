program p8;

uses practiceLib;

var a,b,z,x:integer;
  
begin
write('Введите 2 катета прямоугольного треугольника');
readln(a,b);

  writeln();
  writeln(hypotenuse(a,b):0:2); 
  writeln();
  writeln(squareTriangle(a,b):0:2);
end.
