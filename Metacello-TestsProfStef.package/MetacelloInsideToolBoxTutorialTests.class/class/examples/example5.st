example5
	"open version 1.1 for development"

	"self example5"

	| message |
	message := ''.
	(MetacelloToolBox configurationNamed: 'Example')
		createVersionMethod: 'version11:' inCategory: 'versions' forVersion: '1.1';
		addSectionsFrom: '1.0'
			forBaseline: false
			updateProjects: true
			updatePackages: true
			versionSpecsDo: [ :attribute :versionSpec | 
				attribute == #common
					ifTrue: [ 
						"update the author, blessing and timeStamp"
						versionSpec
							author: MetacelloPlatform current authorName;
							description: message;
							blessing: #development;
							timestamp: MetacelloPlatform current timestamp ].
				true ];
		commitMethod;
		modifySymbolicVersionMethodFor: #development symbolicVersionSpecsDo: [ :symbolicVersionSpec | true ];
		addSymbolicSection: #common version: '1.1';
		commitMethod