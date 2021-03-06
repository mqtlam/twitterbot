#!/bin/bash
# This script sets up the virtual environment.

readonly SCRIPT_NAME=$0
readonly VIRTUALENV_DIR="venv"

reset_environment() {
	rm -rf $VIRTUALENV_DIR
}

create_virtualenv() {
	virtualenv --no-site-packages $VIRTUALENV_DIR
}

install_dependencies() {
	pip install twython
	pip install ipython
}

main() {
	reset_environment

	echo
	echo "[${SCRIPT_NAME}] Creating virtual environment..."
	create_virtualenv
	source $VIRTUALENV_DIR/bin/activate

	echo
	echo "[${SCRIPT_NAME}] Installing dependencies..."
	install_dependencies

	echo
	echo "[${SCRIPT_NAME}] Cleaning up..."
	deactivate

	echo
	echo "[${SCRIPT_NAME}] Done."
}
main
