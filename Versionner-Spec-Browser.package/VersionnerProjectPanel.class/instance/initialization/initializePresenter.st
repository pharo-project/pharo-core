initializePresenter
	"Initialize widgets behavior"

	projectList whenSelectedItemsChanged: [ :selection | 
					removeProjectButton enabled: selection notEmpty.
					projectList menu: [ :aMenu | self requiredProjectMenu: aMenu] ].
	addProjectButton action: [ self addDependentProject ].
	removeProjectButton
		action: [ projectList selectedItem ifNotNilDo: [ :selectedItem | self removeDependentProject: selectedItem content ] ].
	groupList whenSelectedItemsChanged: [ :selection | removeGroupButton enabled: selection notEmpty ].
	addGroupButton action: [ self addGroup ].
	removeGroupButton
		action: [ 
			groupList selectedItem
				ifNotNilDo: [ :selectedItem | self remove: selectedItem fromGroup: groupList selectedNode parentNode item ] ]