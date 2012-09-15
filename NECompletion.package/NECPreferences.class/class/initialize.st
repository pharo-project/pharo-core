initialization
initialize
	enabled := caseSensitive := smartCharacters := true.
	expandPrefixes := false.
	smartCharactersMapping := Dictionary new.
	smartCharactersMapping
		at: $( put: $);
		at: $[ put: $];
		at: ${ put: $};
		at: $" put: $";
		at: $' put: $'.