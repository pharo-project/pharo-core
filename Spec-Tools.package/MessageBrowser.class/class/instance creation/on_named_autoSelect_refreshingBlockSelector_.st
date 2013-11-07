on: aList named: aString autoSelect: aSelector refreshingBlockSelector:aRefreshingBlockSelector
	|out|
	out := self new
		messages: aList;
		title: aString;
		autoSelect: aSelector;
		yourself.
		
	out refreshingBlock: (aRefreshingBlockSelector ifNil:[nil] ifNotNil:[(out perform:aRefreshingBlockSelector with:aSelector)]).
	^out