initialize
	super initialize.

	childrenBlockHolder := [ {} ] asReactiveVariable.
	rootsHolder := {} asReactiveVariable.
	selectionHolder := {} asReactiveVariable.
	menuBlockHolder := [] asReactiveVariable.
	displayBlock := [:item | item asString ] asReactiveVariable.
	
	removeOnlyLastSelected := false asReactiveVariable.
	autoDeselection := true asReactiveVariable.
	autoMultiSelection := false asReactiveVariable.
	columnInset := 5 asReactiveVariable.
	doubleClick := [] asReactiveVariable.
	allowMenuOnNoItem := false asReactiveVariable.
	evenRowColor := Color veryLightGray muchLighter asReactiveVariable.
	isCheckList := false asReactiveVariable.
	keyStroke := [ :key | ] asReactiveVariable.
	multiSelection := false asReactiveVariable.
	oddRowColor := Color white asReactiveVariable.
	preferedPaneColor := Color white asReactiveVariable.
	resizerWidth := 2 asReactiveVariable.
	rowInset := 2 asReactiveVariable.
	iconBlock := [ :each : node | node icon ] asReactiveVariable.
	highlightedItem := nil asReactiveVariable.
	rootNodeHolder := [ :item |
		TreeNodeModel new 
			content: item;
			children: [ self childrenFor: item ] ] asReactiveVariable.
	
	columns := { TreeColumnModel new
		displayBlock: [:node | (self wrapItem: node content) ] } asReactiveVariable.
	
	"Since my nodes are already morphs, dragging them will actually extract them from their owner"
	dragTransformationBlock := [ :item :source | item complexContents ] asReactiveVariable.

	treeUpdated := nil asReactiveVariable.

	self registerEvents