initializeWidgets

	self instantiateModels: {
		#sendButton -> #ButtonModel.
		#cancel -> #ButtonModel.
		"#granularity -> #DropListModel."
		#autoSubmit -> #CheckBoxModel.
		#help -> #ImageModel.
		#stack -> #TextModel "#SpecDebuggerStack"
	}.
	
	self initializeControls.
	
	"stacktrace := self newList.
	stacktrace items: Smalltalk allClasses."