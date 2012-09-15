testing
addError: anError forFile: aFileNameString

	|index|
	
	index := 1.
	
	errors add:(String streamContents: [ :stream|
		aFileNameString ifNotNil: [ 
			stream << 'Error while loading ' << aFileNameString << ':'; lf].
		stream tab print: anError; lf.
		(anError signalerContext contextStack first: 10) do: [ :context|
			stream << (index asString padded: #left to: 2 with: $ ); << ':'; tab.
			"indent the error string"
			stream << (context asString copyReplaceAll: String cr with: String lf, String tab); lf.
			index := index + 1].
		stream tab << '...'])