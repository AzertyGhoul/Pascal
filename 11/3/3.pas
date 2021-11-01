program zxc;

var 
  f:file of char;
  x:char;
  z: set of char;
  i,counter,tmp,tmpr:integer;
  proverka:string;
  
begin
  counter:=0;
  
  z:= ['0'..'9'];
  assign(f, 'f.txt');
  reset(f);
  
  for i:= 1 to 2 do
    begin
      read(f, x);
      if x in z then
        counter:= counter + 1;
    end;
    
    close(f);
    assign(f, 'f.txt');
    reset(f);
    
  if counter = 2 then
    begin  
      for i:= 1 to 2 do
        begin 
          read(f,x);
          proverka:= proverka + x;
        end;
    end;
    
    close(f);
    
   for i:=1 to length(proverka) do
     val(proverka,tmp,tmpr);
  
  if (tmp mod 2 = 0) and (tmp <> 0) then
    begin
      write(tmp);
      writeln();
      writeln('+');
    end
  else
    write('-');
  
end.