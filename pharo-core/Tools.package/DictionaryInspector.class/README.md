I provide a custom inspector for classes of type Dictionary.
These customizations are tools to interactively manipulate the Dictionary I'm inspecting and they are accessed in the context menu of the currently selected association.

The customizations that I provide are as follows:
inspect -> Create and schedule an Inspector on my currently selected association
copy name -> copy the name of my currently selected association so that it can be pasted somewhere else
references -> Create a browser on all references to the association of the current selection
objects pointing to this value -> Open a list inspector on all the objects that point to the value of the selected instance variable, if any.
senders of this key -> Create a browser on all senders of the selected key
refresh view
add key
rename key
remove
basic inspect -> Bring up a non-special inspector
