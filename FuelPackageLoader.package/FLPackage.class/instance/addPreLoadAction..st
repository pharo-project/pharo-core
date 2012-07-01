accessing
addPreLoadAction: aCleanBlockClosure
	"The closure can (or not) to have one parameter and it will be the package."
	aCleanBlockClosure isClean ifFalse: [ self error: 'Pre load actions have to be clean closures. For more details see method BlocKClosure >> #isClean' ].
	preLoadActions add: aCleanBlockClosure 