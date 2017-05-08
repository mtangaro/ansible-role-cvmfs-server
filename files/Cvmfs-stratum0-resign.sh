#!/bin/bash

# Source: https://wiki.nikhef.nl/grid/Adding_a_new_cvmfs_repository

CVMFS_ETC=/etc/cvmfs
CVMFS_REPO_DIR=${CVMFS_ETC}/repositories.d
CVMFS_SERVER_EXE=/usr/bin/cvmfs_server

verb=0
while getopts 'v' option ; do
    case $option in
        v)  verb=$(( $verb + 1 ));;
    esac
done

# health checks
if [ ! -d ${CVFSM_ETC} ]; then
    echo ${CVFSM_ETC}: $! >&2
    exit 1
elif [ ! -d ${CVMFS_REPO_DIR} ]; then
    echo ${CVMFS_REPO_DIR}: $! >&2
    exit 1
fi

if [ ! -x ${CVMFS_SERVER_EXE} ]; then
    echo ${CVMFS_SERVER_EXE}: $! >&2
    exit 2
fi


# iterate over repositories, sourcing the server file to get definitions
for repo in $( ls -1d ${CVMFS_REPO_DIR}/* ) ; do
    [ $verb -gt 0 ] && echo Repository $repo

    reponame=$(grep CVMFS_REPOSITORY_NAME $repo/server.conf | cut -f2 -d=)
    repotype=$(grep CVMFS_REPOSITORY_TYPE $repo/server.conf | cut -f2 -d=)

    case $repotype in
        stratum0)
            ${CVMFS_SERVER_EXE} resign $reponame
            res=$?
            ;;
        *)
            [ $verb -gt 0 ] && echo $reponame is a ${repotype} repository, not resigning
            res=4
            ;;
    esac

done

exit $res
