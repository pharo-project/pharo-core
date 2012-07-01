accessing
addPreMaterializationAction: aCleanBlockClosure
	"The closure can (or not) to have one parameter and it will be the package."
	aCleanBlockClosure isClean ifFalse: [ self error: 'Pre materializaton actions have to be clean closures. For more details see method BlocKClosure >> #isClean' ].
	preMaterializationActions add: aCleanBlockClosure 