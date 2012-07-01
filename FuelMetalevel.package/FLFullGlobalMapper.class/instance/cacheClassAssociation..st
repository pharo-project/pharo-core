initialize-release
cacheClassAssociation: anAssociation

	clusterByObject
		at: anAssociation put: globalAssociationCluster;
		at: anAssociation value put: instanceSideCluster;
		at: anAssociation value class put: classSideCluster.
	anAssociation value classPool
		associationsDo: [ :aVariableAssociation | 
			classVariablesCluster 
				declare: aVariableAssociation 
				belongsTo: anAssociation value.
			clusterByObject 
				at: aVariableAssociation 
				put: classVariablesCluster ]