program Hello;
type
    baggage = record
        items: array of integer;
        avrWeight: real;
    end;
var
    baggages, result: array of baggage;
    i, a, amountOfBaggages, amountOfItems, weight, amountOfItemsGlobal: integer;
    avrWeight: real;
begin
    writeln();
    randomize();
    write('set amount of baggages = ');
    read(amountOfBaggages);
    
    write('set range of amount of items in baggage = ');
    read(amountOfItems);
    
    write('set range of weight = ');
    read(weight);
    
    setlength(baggages, amountOfBaggages);
    
    avrWeight := 0;
    amountOfItemsGlobal := 0;
    
    writeln();
     writeln();
    
    
    for i := 0 to length(baggages) - 1 do
        begin
            writeln('baggade ', i + 1,' items :');
            setlength(baggages[i].items, random(amountOfItems) + 1);
            
            for a := 0 to length(baggages[i].items) - 1 do
                begin
                    baggages[i].items[a] := random(weight) + 1;
                    writeln('item weight = ', baggages[i].items[a]);
                    baggages[i].avrWeight := baggages[i].avrWeight + baggages[i].items[a];
                    avrWeight := avrWeight + baggages[i].items[a];
                end;
            
            amountOfItemsGlobal := amountOfItemsGlobal + length(baggages[i].items);
            baggages[i].avrWeight := baggages[i].avrWeight / length(baggages[i].items);
            writeln('average weight = ', baggages[i].avrWeight:0:2);
            writeln();
        end;
   
    writeln();
    
    avrWeight := avrWeight / amountOfItemsGlobal;
     
    write('average global weight = ', avrWeight:0:2);
    writeln();
    writeln();
    
    for i := 0 to length(baggages) - 1 do
        if ((avrWeight + 0.3) >= baggages[i].avrWeight)
        and ((avrWeight - 0.3) <= baggages[i].avrWeight) then
            begin
                writeln('baggade ', i + 1,' items is meat terms:');
                
                for a := 0 to length(baggages[i].items) - 1 do
                    writeln('item weight = ', baggages[i].items[a]);
                    
                writeln('average weight = ', baggages[i].avrWeight:0:2);
                writeln();
            end; 

end.