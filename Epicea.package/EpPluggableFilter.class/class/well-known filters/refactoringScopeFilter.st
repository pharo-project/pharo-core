refactoringScopeFilter
	^ self
		title: 'refactoring'
		condition: [ :e | e content isKindOf: EpRefactoring ]