protocol
isDisplayed

	^ self window
		ifNil: [ false ]
		ifNotNil: [:w | w isDisplayed ]