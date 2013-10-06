instSize
	"Answer the number of named instance variables
	(as opposed to indexed variables) of the receiver."

	self flag: #instSizeChange.  "Smalltalk browseAllCallsOn: #instSizeChange"
"
	NOTE: This code supports the backward-compatible extension to 8 bits of instSize.
	When we revise the image format, it should become...
	^ ((format bitShift: -1) bitAnd: 16rFF) - 1
	Note also that every other method in this category will require
	2 bits more of right shift after the change.
"
	^ ((self format bitShift: -10) bitAnd: 16rC0) + ((self format bitShift: -1) bitAnd: 16r3F) - 1