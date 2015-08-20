initialize
	"FileList initialize"

	((PragmaCollector filter: [ :pragma | pragma keyword = 'fileService' ]) reset collect: [ :each | each methodClass ])
		do: [ :providerMetaclass | self registerFileReader: providerMetaclass soleInstance ]