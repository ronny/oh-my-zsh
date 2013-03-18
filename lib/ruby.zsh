# which ruby?
function ruby_prompt_info() {
  #ruby_version=$(ruby --version 2>&1) || return
  ruby_version=$(rbenv version-name) || return
  echo "($ruby_version)"
}

