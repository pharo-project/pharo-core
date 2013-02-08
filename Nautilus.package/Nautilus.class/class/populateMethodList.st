settings
populateMethodList

	^ populateMethodList ifNil: [ populateMethodList := self defaultPopulateMethodList ]