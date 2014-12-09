replaceMCInstances
	"self replaceMCInstances"
	| oldSet newSet newSize oldSize |
	oldSet := MCDefinition classPool at: #Instances.
	newSet := HashSet new.
	oldSize := oldSet size.
	newSize := oldSet inject: 0 into: [ :s :each | s + 1].
	self inform: ' old size: ' , oldSize asString , ' new size: ' , newSize asString , ' '.
	"oldSet do: [ :each | newSet add: each ] displayingProgress: 'copying MCDefinition Instances'.
	 MCDefinition classPool at: #Instances put: newSet."