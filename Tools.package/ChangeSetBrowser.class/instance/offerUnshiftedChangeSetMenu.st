menu
offerUnshiftedChangeSetMenu
	"The user chose 'more' from the shifted window menu; go back to the regular window menu"

	self containingWindow ifNotNil: [self containingWindow offerWindowMenu] 