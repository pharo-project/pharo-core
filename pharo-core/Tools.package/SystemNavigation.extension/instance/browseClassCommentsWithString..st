*Tools-Browser
browseClassCommentsWithString: aString
	"Smalltalk browseClassCommentsWithString: 'my instances' "
	"Launch a message list browser on all class comments containing aString as a substring."

	| caseSensitive suffix list |

	suffix := (caseSensitive := Sensor shiftPressed)
		ifTrue: [' (case-sensitive)']
		ifFalse: [' (use shift for case-sensitive)'].
	list := Set new.
	Cursor wait showWhile: [
		Smalltalk allClassesDo: [:class | 
			(class organization classComment asString 
							includesSubstring: aString caseSensitive: caseSensitive) ifTrue: [
								list add: (RGCommentDefinition realClass: class)
							]
		]
	].
	^ self 
		browseMessageList: list asSortedCollection
		name: 'Class comments containing ' , aString printString , suffix
		autoSelect: aString