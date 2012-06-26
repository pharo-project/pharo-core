message list
decompiledSourceIntoContents
	"Obtain a source string by decompiling the method's code, and place 
	that source string into my contents. Also return the string.
	Get temps from source file if shift key is pressed."
	
	|  class |
	class := self selectedClassOrMetaClass.
	"Was method deleted while in another project?"
	currentCompiledMethod := (class compiledMethodAt: self selectedMessageName ifAbsent: [^ '']).

	contents := (World activeHand shiftPressed not) 
		ifTrue: [[currentCompiledMethod decompileWithTemps] ifError: [currentCompiledMethod decompile]]
		ifFalse: [currentCompiledMethod decompile].
	contents := contents decompileString asText makeSelectorBoldIn: class.
	^ contents copy