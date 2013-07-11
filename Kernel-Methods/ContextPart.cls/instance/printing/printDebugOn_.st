printDebugOn: aStream
	"print a condensed for of the stack.
		For methods simply print Class >> selector
		For blocks only print the first line"
	self printOn: aStream