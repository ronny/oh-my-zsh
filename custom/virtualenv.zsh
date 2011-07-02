# Python virtualenv.
venvwrapper_path=`which virtualenvwrapper.sh`
[[ -s "$venvwrapper_path" ]] && source "$venvwrapper_path"
function has_virtualenv() {
    if [ -e .venv ]; then
        workon `cat .venv`
    fi
}
venv_cd () {
    cd "$@" && has_virtualenv
}
alias cd='venv_cd'
