factory
createComment: content parent: aRGObject
	"Creates a RGCommentDefinition object if content is not a RGCommentDefinition object already
	and if is not empty"

	content isEmptyOrNil
		ifTrue: [ ^nil ].

	^content isRingObject not
		ifTrue: [
			self createComment
				parent: aRGObject;
				content: content; 
				yourself ]
		ifFalse: [ content ]