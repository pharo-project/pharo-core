itemsForFile: file
	"Answer a list of services appropriate for a file of the given full name"

	| services suffix |
	suffix := self suffixOf: file fullName.
	services := OrderedCollection new.
	self registeredFileReaderClasses do: [:reader |
		reader ifNotNil: [
				services addAll: (reader fileReaderServicesForFile: file fullName suffix: suffix)]].
	^ services