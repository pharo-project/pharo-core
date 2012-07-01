private accessing
calculateBaselineForVersion: aString
	"For now, just check lastest baseline available"
	
	^(((self project versions 
		select: [ :each | '*-baseline' match: each name ])
		sort: [ :a :b | b < a ])
		first)
		name