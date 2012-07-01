compiling
recompileChanges
	"Compile all the methods that are in the changes file.
	This validates sourceCode and variable references and forces
	methods to use the current bytecode set"

	self selectorsAndMethodsDo:
		[:sel :meth | meth fileIndex > 1 ifTrue:
			[self recompile: sel from: self]]