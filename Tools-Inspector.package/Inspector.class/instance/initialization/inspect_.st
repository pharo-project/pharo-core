inspect: anObject 
	"Initialize the receiver so that it is inspecting anObject. There is no current selection.
	
	Normally the receiver will be of the correct class (as defined by anObject inspectorClass),
	because it will have just been created by sedning inspect to anObject.   However, the
	debugger uses two embedded inspectors, which are re-targetted on the current receiver
	each time the stack frame changes.  The left-hand inspector in the debugger has its
	class changed by the code here.  Care should be taken if this method is overridden to
	ensure that the overriding code calls 'super inspect: anObject', or otherwise ensures that 
	the class of these embedded inspectors are changed back."

	| c |
	c := anObject inspectorClass.
	(self class ~= c and: [self class format = c format]) ifTrue: [
		self primitiveChangeClassTo: c basicNew].
	
	"Set 'object' before sending the initialize message, because some implementations
	of initialize (e.g., in DictionaryInspector) require 'object' to be non-nil."
	
	object := anObject. 
	self initialize