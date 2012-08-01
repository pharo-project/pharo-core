resetting
reinitializeGlobalClustersForInternalBehaviors
	"All clusters should be reinitialized because they contain status of the last serialization such as the instVar 'objects' or 'theClass'. Moreoever, in the instVar 'clusterByObject' of the analizer, we have already objects associated with instances of thee clusters. If we create new clusters, we will have different instances of the same cluster. In thise case, we want to use the same cluster instance, hence we reinitialize them'  '"
	globalsCluster initializeAnalyzing.
	instanceSideCluster initializeAnalyzing.
	classSideCluster initializeAnalyzing.
	globalAssociationCluster initializeAnalyzing.
	globalCompiledMethodCluster initializeAnalyzing.
	
	"Most #initialize do the normal initialize of a cluster, which empties 'objects'. However, for the classPool cluster, if we send #initialize we will also be cleaning what we want to cache 'classOwnerByAssociation'. So we send a specific message #reinitialize that do not clean that.  "
	classVariablesCluster reinitialize