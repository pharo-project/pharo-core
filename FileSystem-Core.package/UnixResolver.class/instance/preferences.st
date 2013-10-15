origins
preferences
	"Value of $XDG_CONFIG_HOME or, if unset, $HOME/.config"
	"http://standards.freedesktop.org/basedir-spec/basedir-spec-latest.html"
	
	^[ (self nbGetEnv: 'XDG_CONFIG_HOME')
		ifNotNil: [ :home | self resolveString: home ]
		ifNil: [ self home / '.config' ]]
		on: Error
		do: [ (self resolveString: self class primitiveGetUntrustedUserDirectory, '.config' )
					parent parent parent "don't know any better default" ]

	