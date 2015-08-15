initialize
	enabled := caseSensitive := smartCharacters := false.
	expandPrefixes := false.
	captureNavigationKeys := false.
	useEnterToAccept := false.
	smartCharactersMapping := Dictionary new.
	smartCharactersMapping
		at: $( put: $);
		at: $[ put: $];
		at: ${ put: $};
		at: $" put: $";
		at: $' put: $'.
	smartCharactersWithSingleSpace := ''.
	smartCharactersWithDoubleSpace := '[]'.
	backgroundColor := Smalltalk ui theme settings menuColor ifNil: [ Color white ].
	popupShowAutomatic := self defaultPopupShowAutomatic.
	popupAutomaticDelay := self defaultPopupDelay.
	popupShowWithShortcut := self defaultPopupShortcut.
	spaceAfterCompletion := true