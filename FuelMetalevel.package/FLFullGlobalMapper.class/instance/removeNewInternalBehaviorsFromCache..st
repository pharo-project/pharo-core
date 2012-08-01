resetting
removeNewInternalBehaviorsFromCache: explicitInternals

	"New internal behaviors may have been considerd as global previously. Therefore, we need to remove it from everywhere in that case."
	(explicitInternals collect: [:each | each binding ]) do: [:each |  
		each value isBehavior 
			ifTrue: [ 
				clusterByObject removeKey: each ifAbsent: [].
				clusterByObject removeKey: each value ifAbsent: [].
				clusterByObject removeKey: each value class ifAbsent: [].
				each value classPool associationsDo: [ :aVariableAssociation | 
					clusterByObject removeKey: aVariableAssociation ifAbsent: [].
					classVariablesCluster classOwnerByAssociation removeKey: aVariableAssociation ifAbsent:[].
					 ].
				].
		each value isTrait
			ifTrue: [ 
				clusterByObject removeKey: each ifAbsent: [].
				clusterByObject removeKey: each value ifAbsent: [].
				clusterByObject removeKey: each value classSide ifAbsent: [].]
	].
