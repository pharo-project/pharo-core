My instances are methods suitable for interpretation by the virtual machine.  This is the only class in the system whose instances intermix both indexable pointer fields and indexable integer fields.

	
The current format of a CompiledMethod is as follows:

	header (4 bytes)
	literals (4 bytes each)
	bytecodes  (variable)
	trailer (variable)

The header is a 30-bit integer with the following format:

(index 0)	9 bits:	main part of primitive number   (#primitive)
(index 9)	8 bits:	number of literals (#numLiterals)
(index 17)	1 bit:	whether a large frame size is needed (#frameSize)
(index 18)	6 bits:	number of temporary variables (#numTemps)
(index 24)	4 bits:	number of arguments to the method (#numArgs)
(index 28)	1 bit:	high-bit of primitive number (#primitive)
(index 29)	1 bit:	flag bit, ignored by the VM  (#flag)


The trailer has two variant formats.  In the first variant, the last byte is at least 252 and the last four bytes represent a source pointer into one of the sources files (see #sourcePointer).  In the second variant, the last byte is less than 252, and the last several bytes are a compressed version of the names of the method's temporary variables.  The number of bytes used for this purpose is the value of the last byte in the method.
