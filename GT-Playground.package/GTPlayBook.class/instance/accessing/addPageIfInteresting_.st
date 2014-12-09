addPageIfInteresting: aPage
	aPage content asString trimBoth isEmpty ifTrue: [ ^ self ].
	self addPage: aPage