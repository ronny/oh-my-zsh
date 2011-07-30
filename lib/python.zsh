# which python?
function python_prompt_info() {
  python_version=$(python --version 2>&1) || return
  echo "($python_version)"
}
