testAddSection2
	"Add section as addition to existing version"

	| toolbox |
	self create10Baseline.
	(toolbox := MetacelloToolBox configurationNamed: self configurationName asString)
		createVersionMethod: 'baseline11:' inCategory: 'baselines' forVersion: '1.1-baseline';
		addSectionsFrom: '1.0-baseline'
			forBaseline: true
			updateProjects: false
			updatePackages: false
			versionSpecsDo: [ :attribute :versionSpec | true ];
		commitMethod.
	toolbox
		modifyVersionMethodForVersion: '1.1-baseline';
		addSection: #pharo
			repository: nil
			requiredProjects: #()
			packages: #('GoferFoo' 'GoferBar')
			dependencies: {('GoferBar' -> #('GoferFoo'))}
			groups: {('UI' -> #('GoferBar'))}
			versionSpecsDo: [ :versionSpec |  ];
		commitMethod.
	self assert: ((Smalltalk at: self configurationName) sourceCodeAt: #'baseline11:') = self baseline11SourceString