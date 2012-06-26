accessing
contents: newContents 
	"This is the original StringMorph implementation of #contents:, restored down in UpdatingStringMorph because a recent 'optimization' of the StringMorph version of this method broke UpdatingStringMorphs."

	contents := newContents isText 
				ifTrue:  
					[emphasis := newContents emphasisAt: 1.
					newContents string]
				ifFalse: 
					[contents = newContents ifTrue: [^self].	"no substantive change"
					newContents].
	self fitContents.
	self changed