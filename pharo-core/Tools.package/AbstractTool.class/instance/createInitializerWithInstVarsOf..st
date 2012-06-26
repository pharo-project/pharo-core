class
createInitializerWithInstVarsOf: aClass
	"Create a default initializer on the class side for a chosen list of instance variables"
	
	| newMessage instVars|

	aClass ifNil: [ ^ self ].
	
	instVars := (TickDialogWindow itemsList: aClass instVarNames sort itemsHeaderName: 'Inst Var Names' title: 'Create entry point') chooseFromOwner: self window.
	
	instVars ifNil: [ ^ self ].
	
	instVars do: [ :aVariable|
		(aClass canUnderstand: (aVariable, ':') asSymbol)
			ifFalse: [
				newMessage :=self buildSetterFor: aVariable.
				aClass compile: newMessage classified: 'accessing' notifying: nil ]].
		
		
	(aClass theMetaClass canUnderstand: (($: join: instVars), ':') asSymbol)
		ifFalse: [
			newMessage := self buildInitializerFor: instVars.
			aClass theMetaClass compile: newMessage classified: 'instance creation' notifying: nil ]