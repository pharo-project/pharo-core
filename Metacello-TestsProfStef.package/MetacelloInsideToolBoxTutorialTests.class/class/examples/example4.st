example4
	"release version 1.0"

	"self example4"

	(MetacelloToolBox configurationNamed: 'Example')
		modifyVersionMethodForVersion: '1.0'
			versionSpecsDo: [ :attribute :versionSpec | 
					attribute == #common
						ifTrue: [ versionSpec blessing: #release ].
					true ];
		commitMethod;
		modifySymbolicVersionMethodFor: #development
			symbolicVersionSpecsDo: [ :symbolicVersionSpec | symbolicVersionSpec versionString ~= '1.0' ];
		commitMethod;
		symbolicVersionMethod: #stable;
		addSymbolicSection: #common version: '1.0';
		commitMethod