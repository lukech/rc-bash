#!/bin/bash
#
# rc (remote command) in bash - to run commands on a cluster/list of remote nodes through ssh.
#

usage() {
    echo
    echo "Usage: $(basename $0) [-h] [-f filename] -c command"
    echo 
    echo "  -h, show help text"
    echo "  -f, set the file which contains the node list"
    echo
    exit 1
}

while getopts ":hf:c:" opt; do
    case $opt in 
        h)
            usage
            ;;
        f)
            echo -e "[file contains the node list]:\n\t'$OPTARG'" >&2
            filename=$OPTARG
            ;;
        c)
            echo -e "[command to execute]:\n\t'$OPTARG'" >&2
            command=$OPTARG
            ;;
        \?)
            echo "Invalid option: -$OPTARG" >&2
            usage
            ;;
        :)
            echo "Option -$OPTARG requires an argument" >&2
            usage
            ;;
    esac
done

for f in $(cat $filename); do echo $f; ssh $f "$command"; done 

