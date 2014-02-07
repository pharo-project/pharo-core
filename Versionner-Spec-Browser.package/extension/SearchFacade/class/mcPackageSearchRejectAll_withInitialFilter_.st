mcPackageSearchRejectAll: aRejectBlock withInitialFilter: filter
	| workingCopies |
	
	workingCopies := MCWorkingCopy allManagers asSortedCollection: [ :a :b | a name <= b name].
	workingCopies := workingCopies reject: aRejectBlock.
	
	^ ListDialogWindow new
				getList: [ :regex | workingCopies select: [ :workingCopy | regex search: workingCopy name] ];
				displayBlock: [ :workingCopy | workingCopy package name ];
				title: 'Monticello packages';
				initialFilter: (filter ifNil: [ '' ] ifNotNil: [ filter]);
				yourself. 
