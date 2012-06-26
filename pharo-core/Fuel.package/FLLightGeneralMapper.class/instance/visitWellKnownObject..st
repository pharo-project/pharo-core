visiting
visitWellKnownObject: anObject

	wellKnownObjectCluster ifNil: [
		wellKnownObjectCluster := self clusterKeyedByClusterName: FLWellKnownObjectsCluster ]
	"Note: It is not necessary to explicitly add objects to this cluster"
