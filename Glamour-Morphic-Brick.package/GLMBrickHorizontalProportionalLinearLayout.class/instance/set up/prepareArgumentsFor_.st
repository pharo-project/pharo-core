prepareArgumentsFor: aBrick
	|allowedWidth maxPercent ownerWidth|
	
	ownerWidth := aBrick innerBounds width.
	allowedWidth := ownerWidth.
	maxPercent := 100.
	
	aBrick subbricks do: [ :each |	|minWidth requestedWidth|
		minWidth := self minWidthOf: each.
		requestedWidth := self widthOf: each allowed: allowedWidth percents: maxPercent.
			
		requestedWidth < minWidth ifTrue: [ 
			allowedWidth := allowedWidth - minWidth.
			maxPercent := maxPercent - each layoutProperties horizontalPercent ] ].

	^ Dictionary new
		add: (#distributableWidth -> allowedWidth);
		add: (#distributablePercents -> maxPercent);
		yourself