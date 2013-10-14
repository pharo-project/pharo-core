testNullLoaderLoadedRepositories

	| project version loader repositories |
	project := self project.

	version := project version: '1.2.1-baseline'.
	loader := version load.
	repositories := loader loadedRepositories.
	self assert: repositories size = 2.
	repositories do: [:repo |
		self assert: repo class == MCHttpRepository.
		self assert: (#('http://www.example.com/vor' 'http://www.example.com/or') includes: repo description) ].