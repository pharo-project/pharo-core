Object subclass: #BalloonEngine
	instanceVariableNames: 'workBuffer span bitBlt forms clipRect destOffset externals aaLevel edgeTransform colorTransform deferred postFlushNeeded'
	classVariableNames: 'BezierStats BufferCache CacheProtect Counts Debug Times'
	poolDictionaries: 'BalloonEngineConstants'
	category: 'Balloon-Engine'