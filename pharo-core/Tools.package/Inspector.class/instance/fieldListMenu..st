menu commands
fieldListMenu: aMenu
	"Arm the supplied menu with items for the field-list of the receiver"

	aMenu addStayUpItemSpecial.

	aMenu addList: #(
		('Inspect (i)'						inspectSelection nil #smallInspectItIcon)
		('Explore (I)'						exploreSelection nil #smallInspectItIcon)).

	self addCollectionItemsTo: aMenu.

	aMenu addList: #(
		-
		('Method refs to this inst var'		referencesToSelection)
		('Methods storing into this inst var'	defsOfSelection)
		('Objects pointing to this value'		objectReferencesToSelection)
		('Explore pointers'					explorePointers)
		-
		('Browse full (b)'					browseMethodFull)
		('Browse class'						browseClass)
		('Browse hierarchy (h)'				classHierarchy)
		-
		('Inst var refs...'					browseInstVarRefs)
		('Inst var defs...'					browseInstVarDefs)
		('Class var refs...'					classVarRefs)
		('Class variables'					browseClassVariables)
		('Class refs (N)'						browseClassRefs)
		-
		('Copy name (c)'					copyName)		
		('Basic inspect'						inspectBasic)
		).
	^ aMenu


