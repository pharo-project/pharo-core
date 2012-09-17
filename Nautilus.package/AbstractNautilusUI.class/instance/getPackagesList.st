private
getPackagesList
	^ (self model packages gather: [:e | e classTags collect: [:t | PackageTagWrapper package: e tag: t ] ]) sort: [:a :b | a name <= b name ]