program p9_t8;

var
  s: set of integer;
  z,i,counter: integer;
  a: array of integer;
  
begin
  
  s:= [1,2,3,4,5];
  
  setlength(a,5);
  
  for i:= 0 to 4 do
    begin 
      read(z);
      a[i]:= z;
    end;
    
   for i:= 0 to length(a)-1 do
    if a[i] in s then
      counter:= counter + 1;
  
  if counter = length(a) then
      write('Является')
  else
      write('Не является');
  
end.