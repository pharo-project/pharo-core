add: anObject traceWith: aAnalysis
	"Add an object to the cluster and trace references."

	objects addIfNotPresent: anObject ifPresentDo: [ ^self ].

	self referencesOf: anObject do: [ :aChild | aAnalysis trace: aChild ].