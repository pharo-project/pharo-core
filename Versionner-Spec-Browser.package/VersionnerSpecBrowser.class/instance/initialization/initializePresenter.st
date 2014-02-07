initializePresenter
	"Initialize widgets behavior"
	configurationList
		whenSelectedItemChanged: [ :selection | 
			selection
				ifNotNil: [ configurationList menu: [ :aMenu | self loadMenuFor: selection in: aMenu ] ] ].