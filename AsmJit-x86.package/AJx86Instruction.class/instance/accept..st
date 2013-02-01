visitor
accept: anObject
	"generic instruction"
	^ anObject visitInstruction: self
	