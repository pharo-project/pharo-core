private
setBalloonTextFrom: aMethod
	| string |
	
	string := String streamContents: [:s | 
					s << aMethod methodClass name << '>>#' << aMethod selector ].
	self setBalloonText: string