update50078
	"self new update50078"
	self withUpdateLog: '15609 dnu RBParserErrorNode addParenthesis
	https://pharo.fogbugz.com/f/cases/15609

15625 file out broken due to refactor of adaptToNumber:andSend:
	https://pharo.fogbugz.com/f/cases/15625

15643 Remove ComposableModel>>#instantiateModels:s senders in Spec-Core
	https://pharo.fogbugz.com/f/cases/15643

15642 Remove ComposableModel>>#instantiateModels:s senders in Tool-ConfigurationBrowser
	https://pharo.fogbugz.com/f/cases/15642

15644 empty comment pane in nautilus
	https://pharo.fogbugz.com/f/cases/15644'.
	self loadTogether: self script50078 merge: false.
	
DiskStore allSubInstances do: [ :each | each instVarNamed: #maxFileNameLength  put: (each instVarNamed: #maxFileNameLength) asNumber  ].
	self flushCaches.
