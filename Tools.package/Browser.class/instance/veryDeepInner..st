copying
veryDeepInner: deepCopier
	"Copy all of my instance variables.  Some need to be not copied at all, but shared.  See DeepCopier class comment."

super veryDeepInner: deepCopier.
"systemOrganizer := systemOrganizer. 	clone has the old value. we share it"
"classOrganizer := classOrganizer		clone has the old value. we share it"
"metaClassOrganizer 	:= metaClassOrganizer	clone has the old value. we share it"
systemCategoryListIndex := systemCategoryListIndex veryDeepCopyWith: deepCopier.
classListIndex := classListIndex veryDeepCopyWith: deepCopier.
messageCategoryListIndex := messageCategoryListIndex veryDeepCopyWith: deepCopier.
messageListIndex := messageListIndex veryDeepCopyWith: deepCopier.
editSelection := editSelection veryDeepCopyWith: deepCopier.
metaClassIndicated := metaClassIndicated veryDeepCopyWith: deepCopier.
