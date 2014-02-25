addTo: aMenu fromMenuModelOf: element
	"adapt elements menuModel items as menu morph items "

	| menuModel |
	menuModel := MenuModel new.
	element inspectionMenu: menuModel.
	menuModel menuGroups
		do: [ :group | 
			| items |
			items := group buildWithSpec.
			items do: [ :item | aMenu addMenuItem: item ] ]
		separatedBy: [ aMenu addLine ]