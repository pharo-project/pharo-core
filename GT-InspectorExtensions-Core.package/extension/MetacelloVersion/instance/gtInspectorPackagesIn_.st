gtInspectorPackagesIn: composite
	<gtInspectorPresentationOrder: 40>
	composite list
		title: 'Packages';
		display: [ self spec packages packageSpecsInLoadOrder select: [ :each | 
				each isKindOf: MetacelloPackageSpec ] ]