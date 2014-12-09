asFileSizeString: bytes
    | units exp |
    units := #(' B'  ' KB' ' MB' ' GB' ' TB' ' PB').
    exp := bytes floorLog: 1024.
    ^((bytes asFloat / (1024 raisedTo: exp))
        printShowingDecimalPlaces: 1) , (units at: exp + 1)