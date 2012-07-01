processing
processNamingTable: entry
"copyright         CHARPTR     The font's copyright notice.
familyName        CHARPTR     The font's family name.
subfamilyName     CHARPTR     The font's subfamily name.
uniqueName        CHARPTR     A unique identifier for this font.
fullName          CHARPTR     The font's full name (a combination of
                                          familyName and subfamilyName).
versionName       CHARPTR     The font's version string.
"	| nRecords initialOffset storageOffset pID sID lID nID length offset multiBytes string strings |
	strings := Array new: 8.
	strings atAllPut:''.
	initialOffset := entry offset.
	entry skip: 2. "Skip format selector"
	"Get the number of name records"
	nRecords := entry nextUShort.
	"Offset from the beginning of this table"
	storageOffset := entry nextUShort + initialOffset.
	1 to: nRecords do:[:i|
		pID := entry nextUShort.
		sID := entry nextUShort.
		lID := entry nextUShort.
		nID := entry nextUShort.
		length := entry nextUShort.
		offset := entry nextUShort.
		"Read only Macintosh or Microsoft strings"
		(pID = 1 or:[pID = 3 and:[sID = 1]]) ifTrue:[
			"MS uses Unicode all others single byte"
			multiBytes := pID = 3.
			string := entry stringAt: storageOffset + offset length: length multiByte: multiBytes.
			"Put the name at the right location.
			Note: We prefer Macintosh strings about everything else."
			nID < strings size ifTrue:[
				(pID = 1 or:[(strings at: nID+1) = ''])
					ifTrue:[strings at: nID+1 put: string].
			].
		].
	].
	fontDescription setStrings: strings.