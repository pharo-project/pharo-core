testVariablesAndOffsetsDo

	"ContextCompilationTest new testVariablesAndOffsetsDo"
	| contextClasses |
	contextClasses := Context withAllSuperclasses, Context allSubclasses asArray.
	contextClasses do:
		[:class|
		class variablesAndOffsetsDo:
			[:var :offset|
			self assert: offset < 0.
			self assert: (class instVarNameForIndex: offset negated) == var]].

	InstructionStream withAllSuperclasses, InstructionStream allSubclasses asArray do:
		[:class|
		(contextClasses includes: class) ifFalse:
			[class variablesAndOffsetsDo:
				[:var :offset|
				(InstructionStream instVarNames includes: var) ifFalse:
					[self assert: offset > 0.
					 self assert: (class instVarNameForIndex: offset) == var]]]]