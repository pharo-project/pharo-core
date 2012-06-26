protocol
removeClass: aClass 

	self blocks copy do: [:b |
		(b value allSatisfy: [:m | m methodClass = aClass theNonMetaClass or: [ m methodClass = aClass theMetaClass ]])
			ifTrue: [ blocks remove: b ]]