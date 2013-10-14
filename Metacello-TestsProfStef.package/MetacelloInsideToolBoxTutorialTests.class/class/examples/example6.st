example6
	"add new baseline version 1.1 with #pharo section, update version 1.1 dev method"

	"self example6"

	| message |
	message := ''.
	(MetacelloToolBox configurationNamed: 'Example')
		createVersionMethod: 'baseline11:' inCategory: 'baselines' forVersion: '1.1-baseline';
		addSectionsFrom: '1.0-baseline'
			forBaseline: true
			updateProjects: false
			updatePackages: false
			versionSpecsDo: [ :attribute :versionSpec | true ];
		addSection: #pharo
			repository: nil
			requiredProjects: #()
			packages: #('ProfStefBrowser')
			dependencies: {('ProfStefBrowser' -> #('ProfStef-Core'))}
			groups: {('UI' -> #('ProfStefBrowser'))}
			versionSpecsDo: [ :versionSpec |  ];
		commitMethod;
		modifyVersionMethodForVersion: '1.1' versionSpecsDo: [ :attribute :versionSpec | false ];
		importFrom: '1.1-baseline'
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
		modifySymbolicVersionMethodFor: #development symbolicVersionSpecsDo: [ :symbolicVersionSpec | true ];
		addSymbolicSection: #pharo version: '1.1';
		commitMethod