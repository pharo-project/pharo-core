checkMethod: method
	"This code should not raise any error."
	| ast |
	ast := OCDecompiler new decompileMethod: method.
	ast printString.  