# Python virtualenv.
# See also: $WORKON_HOME/postactivate for the RPROMPT
VIRTUALENVWRAPPER_PYTHON="/usr/local/bin/python"
venvwrapper_path="/usr/local/share/python/virtualenvwrapper.sh"
if [[ -s "$venvwrapper_path" ]]; then
  [[ -z $VIRTUALENVWRAPPER_LOG_DIR ]] && source "$venvwrapper_path"
fi

function load_virtualenv_if_has_venv() {
  if [[ -e .venv ]]; then
    workon `cat .venv`
  fi
}

chpwd_functions+=(load_virtualenv_if_has_venv)
