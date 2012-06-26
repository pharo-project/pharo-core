initialize
initialize 
	"Initialization"
	
	super initialize.
	useAsASet := false.
	methodReferenceList := OrderedCollection new.
	self clearAll.
	environment := self environment.
	versionsHistoryList := SortedCollection new sortBlock: [:a :b | a value < b value].
	self addFirstVersion.
	sortedMethodReferencesList := OrderedCollection new.