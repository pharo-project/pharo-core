list protocol
getRawItemAt: index

	^ self getItemAtIndexSelector
		ifNil: [ self list cacheAt: index ]
		ifNotNil: [:selector | self model perform: selector with: index ]