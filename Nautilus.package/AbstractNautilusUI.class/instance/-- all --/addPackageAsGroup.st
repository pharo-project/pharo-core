addPackageAsGroup

	^ [ self addPackagesAsGroup: self selectedPackages ]
		on: GroupAlreadyExists 
		do: [:ex | 
			self alertGroupExisting: ex groupName.
			^ nil ]