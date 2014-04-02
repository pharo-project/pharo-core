executeWithDevWorkflow: aCommandClass
	browser projectPanel project
		ifNotNilDo: [ :project | | cmd |
			 cmd := aCommandClass 
						target: project	devWorkflow
						for: self.
			[ cmd execute ]
				on: MetacelloValidationFailure 
				do: [ :error | (VSConfigurationValidationIssuesDisplayCommand target: error for: self) execute] ].
	browser refreshConfiguration.
	browser selectDevelopmentVersion.
	browser update