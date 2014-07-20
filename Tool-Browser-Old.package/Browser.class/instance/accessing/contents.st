contents
	"Depending on the current selection, different information is retrieved.
	Answer a string description of that information. This information is the
	method of the currently selected class and message."

	| comment theClass latestCompiledMethod |
	latestCompiledMethod := currentCompiledMethod.
	currentCompiledMethod := nil.

	editSelection == #newTrait
		ifTrue: [^Trait newTemplateIn: self selectedSystemCategoryName].
	editSelection == #none ifTrue: [^ ''].
	editSelection == #editSystemCategories 
		ifTrue: [^ systemOrganizer printString].
	editSelection == #newClass 
		ifTrue: [^ (theClass := self selectedClass)
			ifNil:
				[Class template: self selectedSystemCategoryName]
			ifNotNil:
				[Class templateForSubclassOf: theClass category: self selectedSystemCategoryName]].
	editSelection == #editClass 
		ifTrue: [^self classDefinitionText].
	editSelection == #editComment 
		ifTrue:
			[(theClass := self selectedClass) ifNil: [^ ''].
			comment := theClass comment.
			currentCompiledMethod := theClass organization commentRemoteString.
			^ comment size = 0
				ifTrue: ['This class has not yet been commented.']
				ifFalse: [comment]].
	editSelection == #hierarchy 
		ifTrue: [
			self selectedClassOrMetaClass isTrait
				ifTrue: [^'']
				ifFalse: [^self selectedClassOrMetaClass printHierarchy]].
	editSelection == #editMessageCategories 
		ifTrue: [^ self classOrMetaClassOrganizer printString].
	editSelection == #newMessage
		ifTrue:
			[^ (theClass := self selectedClassOrMetaClass) 
				ifNil: ['']
				ifNotNil: [theClass sourceCodeTemplate]].
	editSelection == #editMessage
		ifTrue:
			[self showingByteCodes ifTrue: [^ self selectedBytecodes].
			currentCompiledMethod := latestCompiledMethod.
			^ self selectedMessage].

	self error: 'Browser internal error: unknown edit selection.'