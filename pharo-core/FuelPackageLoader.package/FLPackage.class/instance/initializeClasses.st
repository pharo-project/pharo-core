loading
initializeClasses
	"We should not send #initialize to traits"
	(self classes sort: [:a :b | a allSuperclasses size < b allSuperclasses size ])
 		do: [:aClass | aClass initializeOnLoad].