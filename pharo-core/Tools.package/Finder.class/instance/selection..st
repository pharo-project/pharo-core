accessing
selection: anObject
	"anObject is a selection holder"
	"Depending of the value of currentSearchMode, I fill selectedMethod and SelectedClass with the good items."
	"Then, I update the source code text area"

	| path methodNode method classNode class |
	(anObject isNil or: [anObject selectedNodePath isNil]) ifTrue: [
		self selectedClass: nil.
		self selectedMethod: nil.
		^self].
	path := anObject selectedNodePath.
	self isSelectorsSymbol
		ifTrue: [
			path first isSingle
				ifTrue: [
					method := path first item selector.
					class := path first item methodClass ]
				ifFalse: [
					methodNode := path first.
					classNode := path at: 2 ifAbsent: [ nil ]]].
	self isClassNamesSymbol
		ifTrue: [
			classNode := path first.
			methodNode := path at: 2 ifAbsent:[nil]].
	self isSourceSymbol
		ifTrue: [
			methodNode := path first.
			classNode := path at: 2 ifAbsent:[nil]].
	self isExamplesSymbol
		ifTrue: [
			methodNode := path first.
			classNode := path at: 2 ifAbsent:[nil]].
	self isPragmasSymbol
		ifTrue: [
			methodNode := path at:2 ifAbsent: [ nil ].
			classNode := path at: 3 ifAbsent:[nil]].		

	classNode ifNotNil: [ class := classNode item ].
	self selectedClass: class.
	
	methodNode ifNotNil: [ method := methodNode item ].
	self selectedMethod: method.
	
	self triggerEvent: #updateSourceCode