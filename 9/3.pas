program p9_t3;

var s:string;
    counterg,countersogl,i: integer;
    letters: set of char;
  
begin
  read(s);
  letters:= ['a','e','i','o','u'];
  for i:=1 to length(s) do
    if s[i] = ' ' then
    else if s[i] in letters then
      counterg := counterg + 1
    else
      countersogl:= countersogl + 1;
  if counterg < countersogl then
    writeln('sogle')
  else if counterg > countersogl then
    writeln('glasne')
    else
      writeln('=')
end.