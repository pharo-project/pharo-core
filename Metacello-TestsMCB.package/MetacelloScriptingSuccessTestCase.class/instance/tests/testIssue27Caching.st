testIssue27Caching
	| repoDescription githubRepo platform |
	repoDescription := 'github://dalehenrich/external:' , MetacelloScriptingResource externalCustomSHA , '/repository'.
	Metacello new
		baseline: 'External';
		repository: repoDescription;
		get.
	githubRepo := MCRepositoryGroup default repositories detect: [ :repo | repo description = repoDescription ].
	platform := MetacelloPlatform current.
	platform
		recursiveDelete:
			(platform parentDirectoryOf: (platform parentDirectoryOf: (platform parentDirectoryOf: githubRepo directory))).
	githubRepo flushCache.
	Metacello new
		baseline: 'External';
		repository: repoDescription;
		get