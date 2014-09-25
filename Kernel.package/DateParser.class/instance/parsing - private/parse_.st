parse: aTimeUnitName
	^ Integer readFrom: inputStream ifFail: [ DateError signal: 'Expecting a ',aTimeUnitName ]