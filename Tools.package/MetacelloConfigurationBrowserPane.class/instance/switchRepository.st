actions
switchRepository
	| dialog |
	dialog := ListDialogWindow new
			getList: [ :r| self availableRepositories ];
			displayBlock: [:e | e ];
			title: 'Repository Search';
			yourself.
	dialog browseBlock: [ :el |
		el ifNotNil: [ NBWin32Shell shellBrowse: el ]].
	
	(dialog openModal) cancelled ifFalse: [
		dialog listIndex > 0 ifTrue: [ self repository: (self availableRepositories at: dialog listIndex) ]]