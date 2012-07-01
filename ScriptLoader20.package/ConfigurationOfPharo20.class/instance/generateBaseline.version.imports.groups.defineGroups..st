private generating
generateBaseline: nameString version: versionString imports: imports groups: groups defineGroups: baseGroups
	| template groupsAndPackages packages |

	groupsAndPackages := self groupsAndPackages select: [ :each | groups includes: each key ].
	packages := (groupsAndPackages collect: #value)
		inject: #()
		into: [ :all :each | all, each ].	
	template := self templateBaseline 
		format: {
			self versionForMethodName: versionString.
			nameString asLowercase capitalized.
			versionString.
			nameString ifNotEmpty: ['-{1}' format: { nameString asLowercase } ].
			self createImports: versionString with: imports.
			String streamContents: [ :stream | 
				packages
					do: [ :each |  stream << (self createPackage: each) ]
					separatedBy: [ stream << $; << String cr ] ].
			String streamContents: [ :stream | 
				baseGroups associations, groupsAndPackages
					do: [ :each | stream << (self createGroup: each key with: each value) ] 
					separatedBy: [ stream << $. << String cr ] ] }.

	self class 
		compile: template 
		classified: 'baselines'.