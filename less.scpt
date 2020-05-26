on run {input, parameters}
	-- Set less parameter variable
	set lessInput to ""

	-- Loop over input files
	repeat with i from 1 to count of input
		set lessInput to lessInput & " " & "'" & POSIX path of item i of input & "'"
	end repeat

	-- Open nvim
	tell application "iTerm2"
		create window with default profile
		tell current window
			tell current session
				write text "less " & lessInput & " && exit"
			end tell
		end tell
	end tell

end run

-- vim: set noexpandtab:
