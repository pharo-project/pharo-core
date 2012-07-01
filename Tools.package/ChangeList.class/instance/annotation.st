viewing access
annotation
	"Answer the string to be shown in an annotation pane.  Make plain that the annotation is associated with the current in-image version of the code, not of the selected disk-based version, and if the corresponding method is missing from the in-image version, mention that fact."

	| annot aChange aClass |

	annot := super annotation.
	annot asString = '------' ifTrue: [^ annot].

	^ ((aChange := self currentChange) notNil and: [aChange methodSelector notNil])
		ifFalse:
			[annot]
		ifTrue:
			[((aClass := aChange methodClass) isNil or: [(aClass includesSelector: aChange methodSelector) not])
				ifTrue:
					[aChange methodClassName, ' >> ', aChange methodSelector, ' is not present in the current image.']
				ifFalse:
					['current version: ', annot]]