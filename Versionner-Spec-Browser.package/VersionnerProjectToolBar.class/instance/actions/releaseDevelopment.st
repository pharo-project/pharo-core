releaseDevelopment
	browser projectPanel project
		ifNotNilDo: [ :project | | cmd |
			 cmd := VSReleaseDevelopmentVersionCommand 
						target: project	devWorkflow
						for: self.
			cmd execute ]