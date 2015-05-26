retrieveConfigurationsFrom: locationString
	"
	self retrieveConfigurationsFrom:  self pharoDistribution
	"

	| repo reductionMap split configName author version last topMostItems |
	repo := MCHttpRepository location: locationString.
				
	"Reduce to display only the latest"			
	reductionMap := Dictionary new.	
	(repo allVersionNames reverse 
		select: [ :each | each beginsWith: 'ConfigurationOf' ])
		do: [:each |				 
			split := each findTokens: '-.'.
			configName := split first.
			author := split second. 
			version := Integer readFrom: split last.
			last := reductionMap at: configName ifAbsentPut: [ author -> version].
			version > last value 
				ifTrue: [ reductionMap at: configName put: (author -> version) ] ].
			topMostItems := SortedCollection sortBlock: [:e1 :e2 | e1 asString <= e2 asString ].

	reductionMap keysAndValuesDo: [:key :val | 
		topMostItems add: (key, '-', val key, '.', val value asString)
	].	

	^topMostItems