prepareArgumentsFor: aBrick
	|allowedHeight maxPercent ownerHeight|
	
	ownerHeight := aBrick brickGlobalInnerBounds height.
	allowedHeight := ownerHeight.
	maxPercent := 100.
	
	aBrick subbricks do: [ :each |	|minHeight requestedHeight|
		minHeight := self minHeightOf: each.
		requestedHeight := self heightOf: each allowed: ownerHeight percents: 100.
			
		requestedHeight < minHeight ifTrue: [ 
			allowedHeight := allowedHeight - minHeight.
			maxPercent := maxPercent - each layoutProperties verticalPercent ] ].

	^ Dictionary new
		add: (#distributableHeight -> allowedHeight);
		add: (#distributablePercents -> maxPercent);
		yourself