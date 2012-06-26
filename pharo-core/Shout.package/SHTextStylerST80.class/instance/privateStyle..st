private
privateStyle: aText 
	
	(self rangesIn: aText setWorkspace: true)
		ifNotNilDo: [ :ranges|
			self setAttributesIn: aText fromRanges: ranges]