function fish_title
    set -l git_ps1 (__git_ps1)
    if [ -n "$git_ps1" ]
        printf '%s' $git_ps1
        if git_dirty
           echo '*'
        end
    else
        printf '%s' (prompt_pwd)
    end
end