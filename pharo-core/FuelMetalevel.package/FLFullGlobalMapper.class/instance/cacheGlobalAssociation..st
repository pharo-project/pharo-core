initialize-release
cacheGlobalAssociation: anAssociation
	clusterByObject at: anAssociation put: globalAssociationCluster.	
	"Some globals, like ActiveHand have a nil value in the Smalltalk globals. Therefore, we cannot map nil to globalCluster. We could filter before in #defaultGlobalSymbols but that means that not even the Association will be consider global."
	anAssociation value isNil
		ifFalse: [ clusterByObject at: anAssociation value put: globalsCluster ]