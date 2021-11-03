unit averageLib;


interface
  function average(a, b: integer):real;  
  function averageGeom(a, b: integer):real;
  
 
implementation
  function average(a, b: integer):real;
    var tmp:real;
    begin
      tmp:= (a+b)/2;
      average := tmp;
    end;
  
  function averageGeom(a, b: integer):real;
  var tmpr:real;
    begin
      tmpr:= sqrt(a * b);
      averageGeom := tmpr
    end;
end.   