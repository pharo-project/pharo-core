public
filesAt: aResolvable
	^ Array streamContents: [ :out | 
		self filesAt: aResolvable do: [ :path|
			out nextPut: path ]].