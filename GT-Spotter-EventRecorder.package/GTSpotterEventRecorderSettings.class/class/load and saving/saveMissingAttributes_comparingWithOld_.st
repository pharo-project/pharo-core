saveMissingAttributes: imageDictionary comparingWithOld: diskDictionary
	"It saves to the disk items that are included in imageDictionary,
	but are missing in diskDictionary. Useful when a new version of the event
	recorder adds new configuration values that should be saved too."
	| difference newDiskDictionary |
	difference := imageDictionary keys difference: diskDictionary keys.
	difference ifEmpty: [ ^ self ].
	newDiskDictionary := diskDictionary copy.
	difference do: [ :eachKey |
		newDiskDictionary at: eachKey put: (imageDictionary at: eachKey) ].
	self savePreferences: newDiskDictionary.