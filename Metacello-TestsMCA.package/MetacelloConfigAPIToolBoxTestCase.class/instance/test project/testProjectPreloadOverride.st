testProjectPreloadOverride

	| project versionSpec version |
	project := self project.

	versionSpec := (version := project version: '1.2.8-baseline') spec.
	self deny: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result').
	self deny: (Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result').
	version load: 'Example Project'.
	self deny: (Smalltalk at: #'Metacello_Configuration_Test_DoIt_Result').
	self deny: (Smalltalk at: #'Metacello_Configuration_Test_POST_DoIt_Result').