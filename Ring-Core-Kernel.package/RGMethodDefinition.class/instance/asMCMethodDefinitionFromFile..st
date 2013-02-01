*Ring-Monticello
asMCMethodDefinitionFromFile: file
	"Creates a MCMethodDefinition from a source file assuming the current metod isActive.
	This is significantly faster than the asMCMethodDefinition as it does not open the source file pointer twice; for the sourceCode and the timeStamp"
	| compiledMethod methodClass|
	compiledMethod := self compiledMethod.
	methodClass := compiledMethod methodClass.
	
   ^ MCMethodDefinition
		className: methodClass theNonMetaClass name
 	   	classIsMeta: methodClass isMeta
		selector: compiledMethod selector
		category: compiledMethod category
		timeStamp:( compiledMethod timeStampFromFile: file)
		source: (compiledMethod getSourceFromFile: file)