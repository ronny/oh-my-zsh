function git_prompt_combined {
  echo " $(git_prompt_info)$(git_prompt_status)"
}

function hg_prompt_combined {
  echo " $(hg_prompt_info)"
}

# Based on http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/
function vcs_prompt_info {
    git branch >/dev/null 2>/dev/null && git_prompt_combined
    hg root >/dev/null 2>/dev/null && hg_prompt_combined
}
