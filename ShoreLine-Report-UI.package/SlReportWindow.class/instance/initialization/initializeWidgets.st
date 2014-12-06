initializeWidgets

	self instantiateModels: {
		#sendButton -> #ButtonModel.
		#cancel -> #ButtonModel.
		"#granularity -> #DropListModel."
		#autoSubmit -> #CheckBoxModel.
		#stack -> #TextModel "#SpecDebuggerStack"
	}.
	sendButton label: 'Send' translated.
	cancel label: 'Cancel' translated.
	
	"self initializeGranularity."
	self initializeAutoSubmit.
		
	"stacktrace := self newList.
	stacktrace items: Smalltalk allClasses."