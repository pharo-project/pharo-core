private generating
generateVersion: nameString fromBaseline: baselineString version: versionString groups: groups
	| template groupsAndPackages packages |
	
	groupsAndPackages := self groupsAndPackages select: [ :each | groups includes: each key ].
	packages := (groupsAndPackages collect: #value)
		inject: #()
		into: [ :all :each | all, each ].	

	template := self templateVersionSplit format: {
		self versionForMethodName: versionString.
		nameString asLowercase capitalized.
		String streamContents: [ :stream |
			((self project version: baselineString) packages
				select: [ :each | packages includes: each name ])
				do: [ :each | stream << (self createPackage: each name with: each currentVersionInfo name) ]
				separatedBy: [ stream << $; << String cr ] ] }.
			
	self class 
		compile: template 
		classified: 'versions'.