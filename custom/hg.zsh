# http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#mercurial-repository-information
function hg_prompt_info {
    hg prompt --angle-brackets "\
%F{yellow}[<branch><:<tags|, >>]%F{normal}\
%F{magenta}<status|modified|unknown><update>%F{normal}" 2>/dev/null
}
