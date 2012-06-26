visual properties
fancyText: aString font: aFont color: aColor 
	| answer tm col |
	col := self theme currentSettings flatMenu 
				ifFalse: [aColor]
				ifTrue: [aColor negated].
	tm := TextMorph new.
	tm beAllFont: aFont;
		 color: col;
		 contents: aString.
	answer := self inAColumn: {tm}.
	self theme  currentSettings flatMenu 
		ifFalse: [""
			tm addDropShadow.
			tm shadowPoint: 5 @ 5 + tm bounds center].
	tm lock.
	^ answer