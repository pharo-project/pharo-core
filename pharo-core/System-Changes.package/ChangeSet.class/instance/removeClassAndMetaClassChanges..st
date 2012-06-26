moving changes
removeClassAndMetaClassChanges: class
	"Remove all memory of changes associated with this class and its metaclass.  7/18/96 sw"

	changeRecords removeKey: class name ifAbsent: [].
	changeRecords removeKey: class class name ifAbsent: [].
