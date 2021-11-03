unit practiceLib;


interface
  function average(a, b: integer):real;  
  function averageGeom(a, b: integer):real;
  
 
implementation
  function average(a, b: integer):real;
    var tmp:real;
    begin
      tmp:= sqrt(sqr(a)+sqr(b));
      average := tmp;
    end;
  
  function averageGeom(a, b: integer):real;
  var tmpr:real;
    begin
      tmpr:= (a*b)/2;
      averageGeom := tmpr
    end;
end.   