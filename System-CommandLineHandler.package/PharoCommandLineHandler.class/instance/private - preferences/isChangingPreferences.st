isChangingPreferences

	^ self isOverridingPreferences or: [ self isOmittingPreferences ]