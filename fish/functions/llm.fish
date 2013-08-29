function llm
	set os (uname)
	switch $os
		case Darwin
			ls	-alGp $argv | more
		case Linux
			ls	-alp --color $argv | more
	end
end
