# get the name of the ruby we are on
function ruby_prompt_info() {
  ruby_version=$(ruby -v 2> /dev/null | awk '{print $1, $2}')
  echo "($ruby_version)"
}
