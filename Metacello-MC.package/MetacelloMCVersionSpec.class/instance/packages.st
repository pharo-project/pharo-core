accessing
packages

	packages == nil ifTrue: [ packages := self project packagesSpec ].
	^ packages