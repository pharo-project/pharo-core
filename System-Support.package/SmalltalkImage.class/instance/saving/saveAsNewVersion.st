saveAsNewVersion
	"Save the image/changes using the next available version number."
	"SmalltalkImage current saveAsNewVersion"
	
	| newImageFile newChangesFile |
	newImageFile := self imageFile nextVersion.
	newChangesFile := newImageFile withExtension: self changesSuffix.

	"Check to see if there is a .changes file that would cause a problem if we saved a new .image file with the new version number"
	newChangesFile exists
		ifTrue:
			[^ self inform:
'There is already .changes file of the desired name,
', newChangesFile fullName, '
curiously already present, even though there is
no corresponding .image file.   Please remedy
manually and then repeat your request.'].

	"strip awaay the image extension"
	^self saveAs: (newImageFile fullName copyUpToLast: $.)


