classOrMetaClass: aBehavior
	"set the classOrMetaClass in the receiver's styler to aBehavior"
	self textArea shoutStyler ifNotNil: [ :s | s classOrMetaClass: aBehavior]