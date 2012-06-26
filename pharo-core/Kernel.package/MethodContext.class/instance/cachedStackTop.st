private-debugger
cachedStackTop
	"WARNING - this method depends on a very dirty trick, viz. snitching information off the variable stack of a particular CompiledMethod.  So if you add/remove a temp in BlockContext>>valueUninterruptably, this method will fail, probably with some horrible consequences I'd rather not think through just now ... assumption is that the variable declaration in that method looks like:
		| sendingContext result homeSender |"

	^self tempAt: 3