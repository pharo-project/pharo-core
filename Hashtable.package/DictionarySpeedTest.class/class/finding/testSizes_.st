testSizes: oldSet
	"self testSizes: (MCDefinition classPool at: #Instances)"
	"self testSizes: (Symbol classPool at: #SymbolTable)"
	| newSize oldSize |
	oldSize := oldSet size.
	newSize := oldSet inject: 0 into: [ :s :each | s + 1].
	self inform: ' old size: ' , oldSize asString , ' new size: ' , newSize asString , ' '.