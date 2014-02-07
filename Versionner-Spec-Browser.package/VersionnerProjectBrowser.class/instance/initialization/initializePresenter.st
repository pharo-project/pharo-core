initializePresenter
	"Initialize widgets behavior"

	versionList
		whenSelectedItemChanged: [ :selection | 
			selection ifNotNil: [ versionList menu: [ :aMenu | self loadMenuFor: selection in: aMenu ] ].
			self update ];
		displayBlock: [ :item | VSVersionMorph withVersion: item ];
		yourself.
	allVersionsCheckBox whenChangedDo: [ :selector | self versionList: configuration versions ].
	
	repository acceptBlock: [ project repository: repository text ].
	
	repositoryAddButton action: [ self updateRepository  ]