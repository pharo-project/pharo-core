package
fileOutPackages: aCollection

	Cursor write 
		showWhile:[
			aCollection
				ifNotEmpty: [
					aCollection do: [:package | package fileOut ]]]