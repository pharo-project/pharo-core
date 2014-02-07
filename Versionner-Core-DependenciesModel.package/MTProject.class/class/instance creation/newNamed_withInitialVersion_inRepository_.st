newNamed: projectName withInitialVersion: version inRepository: repositoryURL
	"Create the skeleton of a new project (alos known as configuration)"
	| project |

	project := self new.
	project name: projectName.
	project configurationClass: project devWorkflow createInitialDevelopment.
	^ project.
	