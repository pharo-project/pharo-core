private
formatCritic: aCritic
	| result |
	
	result := aCritic isCompiledMethod
		ifTrue: [ String streamContents: [:s | 
				s << aCritic methodClass name << '>>#' << aCritic selector ]]
		ifFalse: [ aCritic name ].
	result := String streamContents: [:s | s << result << ' (' << (checker manifestBuilderOf: aCritic) packageName << ')' ].
	
	^ result