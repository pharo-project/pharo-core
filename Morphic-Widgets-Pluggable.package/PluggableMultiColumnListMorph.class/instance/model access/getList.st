getList
	"fetch and answer the lists to be displayed"
	getListSelector == nil ifTrue: [^ #()].
	list := model perform: getListSelector.
	list == nil ifTrue: [^ #()].
	list := list collectWithIndex: [ :each :index | self wrapItem: each index: index].
	^ list