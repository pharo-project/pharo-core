*Tools-FileList
fileReaderServicesForFile: fullName suffix: suffix
	"Answer services for the given file"

	^ ((self isSourceFileSuffix: suffix) or: [ suffix = '*' ])
		ifTrue:
			[{self serviceRemoveLineFeeds.
			self serviceFileIn}]
		ifFalse:
			[#()]