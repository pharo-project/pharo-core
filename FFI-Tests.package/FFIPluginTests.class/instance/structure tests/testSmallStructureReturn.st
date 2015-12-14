testSmallStructureReturn
	"Test returning small structures (<4 bytes) which are returned in a register on some platforms."
	| pt1 |

	pt1 := FFITestLibrary ffiTestSmallStructReturn.
	self assert: pt1 x = 3.
	self assert: pt1 y = 4.