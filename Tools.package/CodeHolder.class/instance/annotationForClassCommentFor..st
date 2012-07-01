annotation
annotationForClassCommentFor: aClass
	"Provide a line of content for an annotation pane, given that the receiver is pointing at the clas comment of the given class."

	| aStamp nonMeta |
	aStamp :=  (nonMeta := aClass theNonMetaClass) organization commentStamp.
	^ aStamp
		ifNil:
			[nonMeta name, ' has no class comment']
		ifNotNil:
			['class comment for ', nonMeta name,
				(aStamp = '<historical>'
					ifFalse:
						[' - ', aStamp]
					ifTrue:
						[''])]