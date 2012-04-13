# Python virtualenv.
# See also: $WORKON_HOME/postactivate for the RPROMPT
venvwrapper_path="/usr/local/bin/virtualenvwrapper.sh"
if [[ -s "$venvwrapper_path" ]]; then
  [[ -z $VIRTUALENVWRAPPER_LOG_DIR ]] && source "$venvwrapper_path"
fi

function load_virtualenv_if_has_venv() {
  if [[ -e .venv ]]; then
    workon `cat .venv`
  fi
}
function venv_cd () {
  cd "$@" && load_virtualenv_if_has_venv
}
alias cd='venv_cd'
