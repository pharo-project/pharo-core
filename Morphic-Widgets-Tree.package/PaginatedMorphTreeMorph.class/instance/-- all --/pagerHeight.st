pagerHeight
	^ self pager
		ifNil: [0]
		ifNotNil: [pager computedHeight]