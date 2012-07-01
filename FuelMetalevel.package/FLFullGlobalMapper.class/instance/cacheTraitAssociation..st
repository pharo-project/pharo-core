initialize-release
cacheTraitAssociation: anAssociation

	clusterByObject
		at: anAssociation put: globalAssociationCluster;
		at: anAssociation value put: instanceSideCluster;
		at: anAssociation value classSide put: classSideCluster.