getPackagesList
	^ self model packages sort: [:a :b | a name <= b name ]