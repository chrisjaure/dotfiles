# Port of __git_ps1 for Fish shell (tested with FishFish)
#--------------------------------------------------------------------------------------------------
# https://github.com/bjeanes/dot-files/tree/294254ce2f064bbfc586e98107da1ed510898ffd/fish/functions
# via @bjeanes - https://github.com/bjeanes

function __git_ps1
  set -l g (git rev-parse --git-dir ^/dev/null)
  if [ -n "$g" ]
    set -l r ""
    set -l b ""
	
	if [ -x "(command -v readlink)" ]
      printf '%s' (readlink -m $g/../ | xargs basename)
    elseif [ -x "(command -v greadlink)" ]
      printf '%s' (greadlink -m $g/../ | xargs basename)
    end

    if [ -d "$g/../.dotest" ]
      if [ -f "$g/../.dotest/rebasing" ]
        set r "|REBASE"
      elseif [ -f "$g/../.dotest/applying" ]
        set r "|AM"
      else
        set r "|AM/REBASE"
      end

      set b (git symbolic-ref HEAD ^/dev/null)
    elseif [ -f "$g/.dotest-merge/interactive" ]
      set r "|REBASE-i"
      set b (cat "$g/.dotest-merge/head-name")
    elseif [ -d "$g/.dotest-merge" ]
      set r "|REBASE-m"
      set b (cat "$g/.dotest-merge/head-name")
    elseif [ -f "$g/MERGE_HEAD" ]
      set r "|MERGING"
      set b (git symbolic-ref HEAD ^/dev/null)
    else
      if [ -f "$g/BISECT_LOG" ]
        set r "|BISECTING"
      end

      set b (git symbolic-ref HEAD ^/dev/null)
      if [ -z $b ]
        set b (git describe --exact-match HEAD ^/dev/null)
        if [ -z $b ]
          set b (cut -c1-7 "$g/HEAD")
          set b "$b..."
        end
      end
    end

    if not test $argv
        set argv " (%s)"
    end

    set b (echo $b | sed -e 's|^refs/heads/||')

    printf $argv "$b$r" ^/dev/null
  end
end

function git_dirty
  not git diff --no-ext-diff --quiet --exit-code ^/dev/null
end
