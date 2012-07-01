compiling
moveInstVarNamed: instVarName to: anotherClass after: prevInstVarName
	"Move the given instance variable to another class."
	self == anotherClass ifFalse:[
		self notify:'Warning:' asText allBold,' moving ', instVarName printString,' from ', self name,' to ', anotherClass name,' will not be recorded in the change set correctly.
Proceed to do it anyways.'].
	^(ClassBuilder new)
		moveInstVarNamed: instVarName 
		from: self 
		to: anotherClass 
		after: prevInstVarName