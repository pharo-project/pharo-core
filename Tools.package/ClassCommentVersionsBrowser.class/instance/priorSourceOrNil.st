misc
priorSourceOrNil
	"If the currently-selected method has a previous version, return its source, else return nil"
	| aClass aSelector  changeRecords |
	(aClass := self selectedClass) ifNil: [^ nil].
	(aSelector := self selectedMessageName) ifNil: [^ nil].
	changeRecords :=  self class commentRecordsOf: self selectedClass.
	(changeRecords == nil or: [changeRecords size <= 1]) ifTrue: [^ nil].
	^ (changeRecords at: 2) string 
