utilties
defineClass: aSymbol category: aString
	| class |
	model defineClass: 'Object subclass: #' , aSymbol , '
		instanceVariableNames: '''' 
		classVariableNames: ''''
		poolDictionaries: ''''
		category: ''' , aString , ''''.
	class := model classNamed: aSymbol.
	environment 
		addClass: class;
		addClass: class theMetaClass.
	^ class