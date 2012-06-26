generating
newVersion: versionString description: descriptionString preLoad: preLoadString postLoad: postLoadString fromBaseline: baselineString
	| template |
	
	self 
		generateVersion: 'Kernel'
		fromBaseline: baselineString
		version: versionString 
		groups: self groupsKernel.
	self 
		generateVersion: 'Core'
		fromBaseline: baselineString
		version: versionString 
		groups: self groupsCore.
	self 
		generateVersion: 'Environment'
		fromBaseline: baselineString
		version: versionString 
		groups: self groupsEnvironment.
		
	template  := self templateVersion 
		format: {
			self versionForMethodName: versionString.
			versionString.
			'''', baselineString, ''''.
			TimeStamp now.
			descriptionString ifNil: [ '' ].
			String streamContents: [ :stream | 
				#('Kernel' 'Core' 'Environment') 
				do: [ :each | stream << (self createIncluded: versionString with: each) ]
				separatedBy: [ stream << $. << String cr ] ].
			preLoadString isEmptyOrNil not
				ifTrue: [ 
					self generateDoIt: 'PreLoad' version: versionString with: preLoadString.
					String streamContents: [ :stream | stream << String tab << ('spec preLoadDoIt: #version{1}PreLoad' format: {self versionForMethodName: versionString}) << $. ] ] 
				ifFalse: [ '' ].
			postLoadString isEmptyOrNil not
				ifTrue: [ 
					self generateDoIt: 'PostLoad' version: versionString with: postLoadString.
					String streamContents: [ :stream | stream << String tab << ('spec postLoadDoIt: #version{1}PostLoad' format: {self versionForMethodName: versionString}) << $. ] ] 
				ifFalse: [ '' ]. }.
	
	self	 class 
		compile: template 
		classified: 'versions'
