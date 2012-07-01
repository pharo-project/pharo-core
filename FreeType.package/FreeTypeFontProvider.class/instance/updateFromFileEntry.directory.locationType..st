loading and updating
updateFromFileEntry: aDirectoryEntry directory: aFileDirectory locationType: aSymbol
	| i face numFaces cachedInfo info cachedNumFaces path |
	"(path findString: '\\') > 0 ifTrue:[self halt]."
	i:= 0.
	[(cachedInfo := self validCachedInfoFor: aDirectoryEntry directory: aFileDirectory index: i) notNil]
		whileTrue:[
			i = 0 ifTrue:[cachedNumFaces := cachedInfo numFaces].
			self addFileInfo: cachedInfo index: i.
			i := i + 1.].
	(cachedNumFaces notNil and:[i >= cachedNumFaces]) ifTrue:[^self].
	path := aDirectoryEntry reference fullName .
	[face := FreeTypeFace basicNew filename: path; index:  i.
	["we use the primNewFaceFromFile:index: method because we want to do this as fast as possible and we don't need the face registered because it will be explicitly destroyed later"
	face primNewFaceFromFile: path index: i.
	face loadFields] 
		on: FT2Error 
		do:[:e | ^self failedToOpen:face from: path index: i].
	(face height notNil  and:[face hasFamilyName and:[face hasStyleName and:[face isValid]]])
		ifFalse:[^self failedToOpen:face from: path index: i]
		ifTrue:[
			numFaces isNil ifTrue:[numFaces := face numFaces].
			info :=FreeTypeFileInfo new
				absoluteOrRelativePath: (self absoluteOrRelativePathFor: path locationType: aSymbol);
				absolutePath: path; "used for quick lookup on same platform"
				locationType: aSymbol;
				index: i;
				fileSize:  aDirectoryEntry size;
				modificationTime: aDirectoryEntry modification;
				familyName: face familyName;
				styleName: face styleName;
				postscriptName: face postscriptName;
				bold: face isBold;
				italic: face isItalic;
				fixedWidth: face isFixedWidth;
				numFaces: numFaces;
				extractAttributesFromNames;
				yourself.
			self addFileInfo: info index: i.
			self cacheFileInfo: info index: i.
			"Transcript show: 'from file : ', info asString."
			face destroyHandle].
	i := i + 1.
	i < numFaces "note, we use < rather than <= , because i is zero based"] whileTrue:[].
	
	
		
	
	
	
			
	
	