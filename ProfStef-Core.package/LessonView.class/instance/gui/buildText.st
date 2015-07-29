buildText

	| scrolledText |
	scrolledText := self sourceTextModel newScrolledText
		beForSmalltalkScripting;
		beWrapped;
		yourself.
	^ scrolledText