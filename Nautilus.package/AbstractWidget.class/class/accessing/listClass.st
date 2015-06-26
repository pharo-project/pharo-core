listClass
	^ Nautilus useExperimentalFastTable 
		ifTrue: [ FTPluggableIconListMorphAdaptor ]
		ifFalse: [ PluggableIconListMorph ]