collectAllVersionsFromVersionPragmasInto: versionMap using: executionBlock
	| defined versionPragmaDict |
	versionPragmaDict := self extractVersionPragmas.
	versionPragmaDict
		keysAndValuesDo: [ :versionString :pragmaColl | 
			| versionSpec |
			versionSpec := self project versionSpec.
			versionSpec versionString: versionString.
			defined := false.
			pragmaColl
				do: [ :pragma | 
					defined := true.
					executionBlock value: versionSpec value: pragma ].
			defined
				ifTrue: [ 
					self validateVersionString: versionString againstSpec: versionSpec.
					versionMap at: versionSpec versionString put: versionSpec createVersion ].
			self reset ]