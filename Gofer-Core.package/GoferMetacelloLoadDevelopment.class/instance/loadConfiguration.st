running
loadConfiguration
	| configuration metacelloVersion |
	configuration := self configuration project.
	metacelloVersion := version 
		ifNil: [ configuration stableVersion ] 
		ifNotNil: [ configuration latestVersion: self version ].
	metacelloVersion load