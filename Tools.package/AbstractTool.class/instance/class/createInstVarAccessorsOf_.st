createInstVarAccessorsOf: aClass
	"Create getters and setters for all inst vars defined at the level of the current class selection, except do NOT clobber or override any selectors already understood by the instances of the selected class"

	| instVars |
	aClass ifNil: [ ^ self ].
	
	instVars := (TickDialogWindow 
						itemsList: aClass instVarNames copy sort 
						itemsHeaderName: 'Inst Var Names' 
						wrapBlockOrSelector: [:e | e ]
						title: 'Getter/Setter Creator' 
						defaultValue: true) chooseFromOwner: self window.
	
	instVars ifNil: [ ^ self ].
	
	instVars do: [:aName || setter newMessage |
		(aClass canUnderstand: aName asSymbol)
			ifFalse: [
				newMessage := self buildGetterFor: aName.
				aClass compile: newMessage classified: 'accessing' notifying: nil].
		(aClass canUnderstand: (aName, ':') asSymbol)
			ifFalse:[
				newMessage :=self buildSetterFor: aName.
				aClass compile: newMessage classified: 'accessing' notifying: nil]]