initializePresenter
	"Initialize widgets behavior"

	projectList whenSelectedNodesChanged: [ :selection | 
					removeProjectButton enabled: (self isProject: selection).
					editProjectButton enabled: selection notEmpty.
					projectList menu: [ :aMenu | self requiredProjectMenu: aMenu] ].
	addProjectButton action: [ self addDependentProject ].
	removeProjectButton
		action: [ projectList selectedItem 
					ifNotNilDo: [ :selectedItem | self removeDependentProject: selectedItem content ] ].
	editProjectButton action: [ self editSelectedProjectLoads ].
	
	groupList whenSelectedItemsChanged: [ :selection | removeGroupButton enabled: selection notEmpty ].
	addGroupButton action: [ self addGroup ].
	removeGroupButton
		action: [ 
			groupList selectedItem
				ifNotNilDo: [ :selectedItem | | parentGroup |
					parentGroup :=  groupList selectedItem parentNode
											ifNil: [ nil ]
											ifNotNilDo: [ :parentNode | parentNode content ].
					self 
						remove: selectedItem content 
						fromGroup: parentGroup ] ]