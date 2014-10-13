jump: offset
	"Print the Unconditional Jump bytecode."

	self print: 'jumpTo: ' , (scanner pc + offset) printString.