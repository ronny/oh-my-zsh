# get the name of the rvm ruby we are on
function rvm_prompt_info() {
  ruby_version=$(~/.rvm/bin/rvm-prompt 2> /dev/null) || return
  echo "($ruby_version)"
}
