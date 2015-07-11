buildText

	| scrolledText |
	scrolledText := self sourceTextModel newScrolledText
		beForSmalltalkCode;
		beWrapped;
		yourself.
	^ scrolledText