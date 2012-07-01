RBFormatter formats a parse tree. It is an example of a Visitor. This is rarely called directly. Sending 'formattedCode' to a parse tree uses this algorithm to return a pretty-printed version.

Instance Variables:
	codeStream	<PositionableStream>	The buffer where the output is accumulated.
	firstLineLength	<Integer>	The length of the first line of a message send.
	lineStart	<Integer>	The position of the current line's start.
	tabs	<Integer>	The number of tabs currently indented.

