loadAll
	"Load the #stable version defined for this platform. The #stable version is the version that is recommended to be used on this platform."

	"self load"

	<apiDocumentation>
	| config |
	config := self new
		loadAll;
		yourself.
	^ config project load: #default