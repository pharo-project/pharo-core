running
loadConfiguration
	| configuration |
	configuration := self configuration project.
	version ifNotNil: [ configuration latestVersion: self version ].
	configuration load