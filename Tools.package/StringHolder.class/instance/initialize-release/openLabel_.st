openLabel: labelString 
	"Create a standard system view of the model, me, a StringHolder and open it.  If in mvc, terminate the active controller so that the new window will immediately be activated."
	^(self embeddedInMorphicWindowLabeled: labelString) openInWorld