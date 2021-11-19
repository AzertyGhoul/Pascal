unit practiceLib;


interface
  function hypotenuse(a, b: integer):real;  
  function squareTriangle(a, b: integer):real;
  
 
implementation
  function hypotenuse(a, b: integer):real;
    var tmp:real;
    begin
      tmp:= sqrt(sqr(a)+sqr(b));
      average := tmp;
    end;
  
  function squareTriangle(a, b: integer):real;
  var tmpr:real;
    begin
      tmpr:= (a*b)/2;
      averageGeom := tmpr
    end;
end.   
