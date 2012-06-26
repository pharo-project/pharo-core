menu spec
packageMenuSpec

	^ #(#('Add required package' #addRequiredPackage)
		#('Add all dirty packages as required' #addRequiredDirtyPackage)
		#('Remove required package' #removeRequiredPackage)
		#('Clear required packages' #clearRequiredPackages))
