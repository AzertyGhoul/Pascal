program Hello;
var
    f, g: text;
    counter, sum, numberF, i: integer;
begin
    assign(f, 'f.dat');
    reset(f);
    counter := 0;
    sum := 0;

    for i := 0 to 4 do 
        begin
            read(f, numberF);

            if numberF mod 2 = 0 then
                counter := counter + 1

            else if numberF mod 2 <> 0 then
                sum := sum + numberF;
        end;

    close(f);

    assign(g, 'g.txt');
    rewrite(g);

    write(g, sum);
    write(g, counter);

    writeln('sum = ', sum);
    writeln('counter = ', counter)
end.