contents: input notifying: aController 
	"The retrieved information has changed and its source must now be
	 updated. The information can be a variety of things, depending on
	 the list selections (such as templates for class or message definition,
	 methods) or the user menu commands (such as definition, comment,
	 hierarchy).  Answer the result of updating the source."

	| aString aText theClass |
	self changed: #annotation.
	aString := input asString.
	aText := input asText.
	editSelection == #newTrait ifTrue: [^self defineTrait: input asString notifying: aController].
	editSelection == #editSystemCategories ifTrue: [^ self changeSystemCategories: aString].
	editSelection == #editClass | (editSelection == #newClass) ifTrue: [^ self defineClass: aString notifying: aController].
	editSelection == #editComment
		ifTrue: 
			[theClass := self selectedClass.
			theClass
				ifNil: 
					[self inform: 'You must select a class
before giving it a comment.'.
					^ false].
			theClass comment: aText stamp: Author changeStamp.
			self changed: #classCommentText.
			^ true].
	editSelection == #hierarchy ifTrue: [^ true].
	editSelection == #editMessageCategories ifTrue: [^ self changeMessageCategories: aString].
	editSelection == #editMessage | (editSelection == #newMessage)
		ifTrue:
			[^ self okayToAccept
				ifFalse:
					[false]
				ifTrue:
					[self compileMessage: aText notifying: aController]].
	editSelection == #none
		ifTrue: 
			[self inform: 'This text cannot be accepted
in this part of the browser.'.
			^ false].
	self error: 'unacceptable accept'