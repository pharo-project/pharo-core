A MethodBrowser is a simple browser using Spec to display a list of methods and their source code

	si := MethodBrowser new.
	si openWithSpec.
	si methods: Object methodDict values