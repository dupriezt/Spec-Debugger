running
setUp
	stack := Stack new.
	stack push: 3; push: 'b'; push: $a.
	expected := Stack new.
	expected push: $3; push: 'b'; push: 'a'.