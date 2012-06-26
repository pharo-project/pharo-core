private
saveAsNewImageWithCurrentReleaseNameToPublish
	"If the reload failed and you do not want to lose time reload all the cs and packages... you can now restart from the image saved now"
	
	| file |
	file := FileSystem workingDirectory  / (self shortImageName, '-releasePharoToPublish'), Smalltalk imageSuffix.
	
	SmalltalkImage current saveAs: file nextVersion basename.