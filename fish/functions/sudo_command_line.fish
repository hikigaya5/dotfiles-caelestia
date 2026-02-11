function sudo_command_line
    set -l cmd (commandline)

    if string match -q "sudo *" -- $cmd
        commandline (string replace -r "^sudo\s+" "" -- $cmd)
    else
        commandline "sudo $cmd"
    end
end
