authentication
mapName: nameString password: pwdString to: aPerson
	"Insert/remove the encoding per RFC1421 of the username:password combination into/from the UserMap.  DO NOT call this directly, use mapName:password:to: in your ServerAction class.  Only it knows how to record the change on the disk!"

	self mapFrom: (self encode: nameString password: pwdString) to: aPerson
