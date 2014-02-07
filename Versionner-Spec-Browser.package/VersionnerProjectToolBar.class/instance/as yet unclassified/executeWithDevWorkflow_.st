executeWithDevWorkflow: aCommandClass
	browser projectPanel project
		ifNotNilDo: [ :project | | cmd |
			 cmd := aCommandClass 
						target: project	devWorkflow
						for: self.
			cmd execute ].
	browser refreshConfiguration.
	browser update