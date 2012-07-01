Instances of this morph get used by SystemProgressMoprh to quickly display a progress bar.

Here is an example of how to use me:

| p |
p := ProgressBarMorph from: 0 to: 200.
p extent: 200@20.
p openInWorld.

[
	(1 to: 200) do: [ :i | p value: i.  (Delay forMilliseconds: 10) wait ].
	p delete ] fork