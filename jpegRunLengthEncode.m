function encodedSymbols = runLengthEncode(inputSymbols)
    encodedSymbols = [];
    count = 1;
    symbol = inputSymbols(1);
    
    for i = 2:length(inputSymbols)
        if inputSymbols(i) == symbol
            count = count + 1;
        else
            encodedSymbols = [encodedSymbols count symbol];
            count = 1;
            symbol = inputSymbols(i);
        end
    end
    
    encodedSymbols = [encodedSymbols count symbol];
end