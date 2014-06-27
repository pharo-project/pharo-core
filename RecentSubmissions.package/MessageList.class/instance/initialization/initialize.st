initialize 
	"Initialization"
	
	super initialize.
	useAsASet := false.
	methodReferenceList := OrderedCollection new.
	self clearAll.
	versionsHistoryList := SortedCollection new sortBlock: [:a :b | a value < b value].
	self addFirstVersion.
	sortedMethodReferencesList := OrderedCollection new.