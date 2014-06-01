function fish_prompt
   echo

   set_color red --bold
   printf '%s@%s' (whoami) (hostname|cut -d . -f 1)

   set_color normal
   printf ' in '

   set_color magenta --bold
   printf '%s' (prompt_pwd)
   set_color normal

   # Line 2
   echo
   if test $VIRTUAL_ENV
       printf "(%s) " (set_color blue)(basename $VIRTUAL_ENV)(set_color normal)
   end
   printf '› '
   set_color normal
end
