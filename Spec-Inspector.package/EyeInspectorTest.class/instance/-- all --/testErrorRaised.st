testErrorRaised
	| inspector morphsBefore morphsAfter |
	morphsBefore := World submorphs. 
	self instancesToTry do: [ :each | inspector := each inspector ].
	morphsAfter := World submorphs. 
	(morphsAfter copyWithoutAll: morphsBefore) do: [ :morph | morph delete ].