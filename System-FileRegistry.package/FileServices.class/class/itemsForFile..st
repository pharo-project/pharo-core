accessing
itemsForFile: fullName
	"Answer a list of services appropriate for a file of the given full name"

	| services suffix |
	suffix := self suffixOf: fullName.
	services := OrderedCollection new.
	self registeredFileReaderClasses do: [:reader |
		reader ifNotNil: [services addAll: (reader fileReaderServicesForFile: fullName suffix: suffix)]].
	^ services