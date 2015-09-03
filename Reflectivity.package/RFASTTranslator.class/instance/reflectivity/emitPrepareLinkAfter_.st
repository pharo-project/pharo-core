emitPrepareLinkAfter: aNode
	"We need to emit the first part of the block for the ensure: wrap here"
	aNode hasMetalinkAfter ifTrue: [
		methodBuilder
			pushClosureCopyCopiedValues: #()
			args: #()
			jumpTo: #block]