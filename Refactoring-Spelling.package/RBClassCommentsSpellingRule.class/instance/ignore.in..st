private
ignore: aString in: aContext
	^ (aContext selectedClass bindingOf: aString) notNil
		or: [ (aContext selectedClass instVarNames includes: aString)
		or: [ (aContext literals includes: aString asSymbol) ] ]