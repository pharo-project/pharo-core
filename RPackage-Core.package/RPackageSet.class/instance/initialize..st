initialization
initialize: aString
	"We fill RPackageSet with a collection of matching RPackage. 
	 Since this is accessed a lot of times, we optimized the code for speed on resolution, and now 
	we have what you see.  
	This code should be something like this: 
	
	packageName := aString.
	packages := RPackageOrganizer default packages 
		select: [ :each | each name = packageName or: [ each name beginsWith: packageName, '-' ] ]
	
	sadly, that's incredible slow, so, we changed. 
	BEWARE: Don't change this code without paying attention to speed. 
	"
	| size separatorIndex first |
	
	self initialize.
		
	packageName := aString asSymbol.
	size := packageName size.
	first := packageName at: 1.
	separatorIndex := size + 1.
	packages := RPackageOrganizer default packages 
		select: [ :each | | eachSize |
			eachSize := each name size.
			(size == eachSize and: [ packageName == each name ]) 
				or: [ 
					eachSize > size 
						and: [ 
							(((each name at: separatorIndex) == $-)
							and: [ (each name at: 1) == first ])							
							and: [ (each name beginsWith: packageName) ] ] ] ]