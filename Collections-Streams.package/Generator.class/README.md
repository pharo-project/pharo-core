A Generator transforms callback interfaces into stream interfaces. 

When a producer algorithm provide results as callbacks (blocks) and a consumer algorithm expects streamable input, a Generator transforms one into the other, for example:

	| generator |
	generator := Generator on: [:g| Integer primesUpTo: 100 do:[:prime| g yield: prime]].
	[generator atEnd] whileFalse:[Transcript show: generator next].

Instance Variables
	block:		<BlockClosure> The block associated with the generator.
	continue:	<MethodContext>	The continuation to return to.
	home:		<MethodContext>	The home (root) context of the activated block
	next:		<Object>		The next object to return from the Generator.
