mapBytesTo: instr
	"Associate the current byte offset with instr. We fix this later to have the correct offset,
	see #bytecodes"

	instrMap add: instr -> bytes size