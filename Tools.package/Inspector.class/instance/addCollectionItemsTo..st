menu commands
addCollectionItemsTo: aMenu
	"If the current selection is an appropriate collection, add items to aMenu that cater to that kind of selection"

	| sel |
	((((sel := self selection) isMemberOf: Array) or: [sel isMemberOf: OrderedCollection]) and: 
		[sel size > 0]) ifTrue: [
			aMenu addList: #(
				('Inspect element...'					inspectElement))].

	(sel isKindOf: MorphExtension) ifTrue: [
			aMenu addList: #(
				('Inspect property...'				inspectElement))].