example2
	"open version 1.0 for development"

	"self example2"

	| message |
	message := '- fixed a bug'.
	(MetacelloToolBox configurationNamed: 'Example')
		createVersionMethod: 'version10:' inCategory: 'versions' forVersion: '1.0';
		importFrom: '1.0-baseline'
			updateProjects: true
			updatePackages: true
			versionSpecsDo: [ :attribute :versionSpec | 
				attribute == #common
					ifTrue: [ 
						"update the author, blessing and timeStamp"
						versionSpec
							author: MetacelloPlatform current authorName;
							blessing: #development;
							description: message;
							timestamp: MetacelloPlatform current timestamp ].
				true ];
		commitMethod;
		symbolicVersionMethod: #development;
		addSymbolicSection: #common version: '1.0';
		commitMethod