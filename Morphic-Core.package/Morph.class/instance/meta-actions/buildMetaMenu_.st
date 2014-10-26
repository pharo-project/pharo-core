buildMetaMenu: evt
	"Build the morph menu. This menu has two sections. The first section contains commands that are handled by the hand; the second contains commands handled by the argument morph."
	| menu |
	menu := UIManager default newMenuIn: self for: self.
	menu addStayUpItem.
	menu add: 'grab' action: #grabMorph:.
	menu add: 'copy to paste buffer' action: #copyToPasteBuffer:.
	self maybeAddCollapseItemTo: menu.
	menu add: 'delete' action: #dismissMorph:.
	menu addLine.
	menu add: 'copy text' action: #clipText.
	menu addLine.
	menu add: 'go behind' action: #goBehind.
	menu add: 'add halo' action: #addHalo:.
	menu add: 'duplicate' action: #maybeDuplicateMorph:.

	self addEmbeddingMenuItemsTo: menu hand: evt hand.

	menu add: 'resize' action: #resizeMorph:.
	"Give the argument control over what should be done about fill styles"
	self addFillStyleMenuItems: menu hand: evt hand.
	self addDropShadowMenuItems: menu hand: evt hand.
	self addLayoutMenuItems: menu hand: evt hand.
	menu addUpdating: #hasClipSubmorphsString target: self selector: #changeClipSubmorphs argumentList: #().
	menu addLine.
	menu add: 'inspect' selector: #inspectAt:event: argument: evt position.
	menu add: 'explore' action: #explore.
	menu lastItem icon: Smalltalk ui icons smallInspectItIcon.
	menu addLine..
	menu add: 'show actions' action: #showActions.
	menu addLine.
	self addDebuggingItemsTo: menu hand: evt hand.

	self addCustomMenuItems: menu hand: evt hand.
	^ menu
