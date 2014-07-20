switchRepository
	| dialog |
	dialog := ListDialogWindow new
			getList: [ :r| self availableRepositories ];
			displayBlock: [:e | e ];
			title: 'Repository Search';
			yourself.
	dialog browseBlock: [ :el |
		el ifNotNil: [
			"only available onWin until other platforms can open a URL too"			 
			Smalltalk os isWin32 ifTrue: [ NBWin32Shell shellBrowse: el ] ]].
	
	(dialog openModal) cancelled ifFalse: [
		dialog listIndex > 0 ifTrue: [ self repository: (self availableRepositories at: dialog listIndex) ]]