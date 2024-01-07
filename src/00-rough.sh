#!/bin/bash
clone_project() {
    cd ${1}
    git clone ${2}
}


REPO_URL="https://github.com/kodekloudhub/solar-system-9.git"
WORKDIR="/home/bob/git"



clone_project ${WORKDIR} ${REPO_URL}