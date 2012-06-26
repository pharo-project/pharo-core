accessing
itemsForDirectory: aFileDirectory
	"Answer a list of services appropriate when no file is selected."

	| services |
	services := OrderedCollection new.
	self registeredFileReaderClasses do: [:reader |
		reader ifNotNil: [services addAll: (reader fileReaderServicesForDirectory: aFileDirectory) ]].
	^ services