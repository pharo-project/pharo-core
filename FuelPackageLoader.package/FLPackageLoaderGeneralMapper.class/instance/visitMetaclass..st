visiting
visitMetaclass: aMetaclass

	"We should find a better way of doing this"
	self flag: #fixIt.
	
	((self clusterKeyedByClusterName: FLSubstitutionCluster) isSubstitute:  aMetaclass theNonMetaClass)
		ifTrue: [ super visitMetaclass: aMetaclass ]
		ifFalse:  [ self visitSubstitution: aMetaclass by: ((self clusterKeyedByClusterName: FLSubstitutionCluster) substitutions at: aMetaclass theNonMetaClass ) class].		
	
	"  The other possibility is to do the following, but this is slower
	(Smalltalk globals identityIncludes: aMetaclass theNonMetaClass)
		ifTrue: [ self visitSubstitution: aMetaclass by: ((self clusterKeyedByClusterName: FLClassCluster) objects detect: [:each | each name =  aMetaclass theNonMetaClass name]) class ]
		ifFalse: [ super visitMetaclass: aMetaclass ]"