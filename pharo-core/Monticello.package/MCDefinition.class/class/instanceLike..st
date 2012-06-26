as yet unclassified
instanceLike: aDefinition
	Instances ifNil: [Instances := WeakSet new].
	^ (Instances like: aDefinition) ifNil: [Instances add: aDefinition]