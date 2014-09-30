buttonCenterByIndex: aNumber
	|left width|
	width := pagerModel circleButtonSize.
	left := self bounds left.
	^ left + ( ( aNumber - 1 ) * ( width ) ) + ( width / 2 ).