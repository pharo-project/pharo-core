savePreferences: aDictionary
	"self savePreferences: Dictionary new."
	self deletePreferences.
	[ FLSerializer serialize: aDictionary toFileNamed: self preferences ]
		on: Error do: [ "ignore" ]