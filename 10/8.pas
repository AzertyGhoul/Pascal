program p10_t8;
type
    bibl = record
        Author: string;
        Name: string;
        Year: integer;
    end;
var
    books: array of bibl;
    i, amountOfBooks, counter,bookYear: integer;
    Authorname,bookName,tmp:string;
    avrWeight: real;
begin
    write('Введите желаемо количество книг = ');
    read(amountOfBooks);
            
    setlength(books, amountOfBooks);
    
    writeln();
    writeln();
    
    
    for i := 0 to length(books) - 1 do
        begin
            if i = 0 then readln();
            writeln('Введите имя автора :');
            readln(Authorname);
            books[i].Author:= Authorname;  
            writeln();
            
            writeln('Введите название книги :');
            readln(bookName);
            books[i].Name:= bookName;            
            writeln();

            writeln('Введите год издания книги :');
            readln(bookYear);
            books[i].Year:= bookYear;
        end;
    
    writeln();
    writeln('Введите имя автора которого хотите проверить');
    readln(tmp);
    
      for i:= 0 to length(books) - 1 do
        writeln();
        if tmp = books[i].Author then
          if books[i].Year > 1960 then
            writeln('Название книги автора изданного с 1960 года ',books[i].Name);
          
         
      writeln();   
          
      for i:= 0 to length(books) - 1 do
        if books[i].Name = 'Информатика' then
          begin
            writeln(); 
            writeln('Имя автора с книгой информатика ',books[i].Author);
            writeln('Год издания ',books[i].Year);
          end;
                   
end.
