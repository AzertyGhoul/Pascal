program p9_t13;
 
const
  D = [' '];
  Da = ['а', 'я', 'о', 'ё', 'ы', 'и', 'э', 'е', 'у', 'ю'];
var
  S : String;
  Dw, Dra : set of Char;
  Ch : Char;
  i, Len : Integer;
  F : Boolean;
begin
  repeat
    Writeln('Задайте текст:');
    Readln(S);
    Dw := []; 
    Dra := []; 
    F := True; 
    for i := 1 to Length(S)do
      if not (S[i] in D) then 
      begin
        Dw := Dw + [S[i]]; 
        if (i = Length(S)) or (S[i + 1] in D) then 
        begin
          if F then 
          begin
            Dra := Dw * Da;
            F := False;
          end
          else 
            Dra := Dw * Da * Dra; 
          if Dra = [] then 
            Break;
          Dw := []; 
        end;
      end;
    if Dra = [] then
      Writeln('Нет ни одной гласной буквы, которая бы входила в каждое слово.')
    else
    begin
      Writeln('Множество гласных букв, которые входят в каждое слово:');
      for Ch := 'а' to 'ё' do
        if Ch in Dra then
          Write(Ch, ' ');
      Writeln;
    end;
 
    Writeln('Повторить - Enter. Выход - любой символ + Enter.');
    Readln(S);
  until S <> '';
end.