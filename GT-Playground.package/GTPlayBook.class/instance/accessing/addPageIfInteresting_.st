addPageIfInteresting: aPage
	aPage content asString trimBoth isEmpty
		ifFalse: [ self addPage: aPage ]