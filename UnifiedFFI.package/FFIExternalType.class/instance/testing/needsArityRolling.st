needsArityRolling
	"Regular types needs to be ''rolled'' if they are passed as pointers to its calling functions. 
	For example, executing consecutivelly this (simplified) two functions: 
	[[[
	time := self ffiCall: #(time_t time(time_t* t) ). ""this will answer a long.""
	self ffiCall: #(tm* localtime(time_t* time) ) ""this requires a pointer to time."" 
	]]]
	This mechanism allows UnifiedFFI to perform the roll of this pointers for you (it performs 
	the equivallent of ==&time== in C)." 
	^ self pointerArity > 0