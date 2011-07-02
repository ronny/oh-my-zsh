# Python virtualenv.
# See also: $WORKON_HOME/postactivate for the RPROMPT
function load_virtualenv_if_has_venv() {
    if [[ -e .venv ]]; then
        venvwrapper_path=`which virtualenvwrapper.sh`
        if [[ -s "$venvwrapper_path" ]]; then
            source "$venvwrapper_path"
            workon `cat .venv`
        fi
    fi
}
function venv_cd () {
    cd "$@" && load_virtualenv_if_has_venv
}
alias cd='venv_cd'
