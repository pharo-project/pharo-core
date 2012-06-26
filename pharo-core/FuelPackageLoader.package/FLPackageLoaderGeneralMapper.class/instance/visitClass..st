visiting
visitClass: aClass  

	((self clusterKeyedByClusterName: FLSubstitutionCluster) isSubstitute: aClass )
		ifTrue:  [ super visitClass: aClass ]
		ifFalse: [ self visitSubstitution: aClass by: aClass copyWithLocalProtocol ]
		
" The other possibility is to do the following, but this is slower
	(Smalltalk globals identityIncludes: aClass)
		ifTrue: [ self visitSubstitution: aClass by: aClass copyWithLocalProtocol ]
		ifFalse: [ super visitClass: aClass ]"