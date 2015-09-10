transitiveDependenciesOf: aPackageName
	| visited |
	visited := Set new.
	visited addAll: ManifestBootstrap dependenciesToRemove. "do not add noise to the analysis by adding transitive dependencies of dependencies we want to remove."
	^ self transitiveDependenciesOf: aPackageName visited: visited