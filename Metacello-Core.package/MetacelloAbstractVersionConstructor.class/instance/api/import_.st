import: aString
    "import names defined in baseline <aString> to be used when loading the version

		spec baseline: 'Sample' with: [ spec repository: 'github://dalehenrich/sample:master/repository' ].
		spec import: 'Sample' ]
	 "

    self root import: aString constructor: self