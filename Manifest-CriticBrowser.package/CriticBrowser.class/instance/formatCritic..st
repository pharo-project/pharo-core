private
formatCritic: aCritic
	| ret |
	ret := aCritic isCompiledMethod
		ifTrue: [ aCritic methodClass name , '>>#' , aCritic selector ]
		ifFalse: [ aCritic name ].
	ret := ret , ' (' , (checker manifestBuilderOf: aCritic) packageName , ')'.
	^ ret