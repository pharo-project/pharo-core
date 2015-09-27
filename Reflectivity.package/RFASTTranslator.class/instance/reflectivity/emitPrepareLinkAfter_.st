emitPrepareLinkAfter: aNode
	"We need to emit the first part of the block for the ensure: wrap here"
	| copied |
	copied := #().
	aNode hasMetalinkAfter ifTrue: [ 
		self emitPreamble: aNode.
		aNode isMethod ifTrue: [ copied := aNode argumentNames, aNode tempNames ].
		methodBuilder
			pushClosureCopyCopiedValues: copied
			args: #()
			jumpTo: #block]