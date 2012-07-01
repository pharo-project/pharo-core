initialization
initialize
	"Initialization code for ClassMethodBrowser"

	super initialize.

	listModel := self instantiate: ListComposableModel.
	methodModel := self instantiate: MethodBrowser.
	
	self focusOrder
		add: listModel;
		add: methodModel.
	
	listModel whenSelectedItemChanged: [:selection |
		selection 
			ifNotNil: [:class | 
				methodModel methods: (class methodDict values sort: [:a :b | a selector < b selector]).
				methodModel listModel resetSelection ]].
	
	methodModel wrapWith: [:method | method selector ].