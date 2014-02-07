baselines 
	baselines ifNotNil: [ ^baselines ].
	baselines := self baselinesFor: self project.
	^baselines 