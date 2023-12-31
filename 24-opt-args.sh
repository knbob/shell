#!/bin/bash


name=""
wishes="Good Day"

USAGE(){
    echo "Command Usage:: $(basename $0) -n <name> -w <wishes>"
    echo "Options: "
    echo " -n: Specify the name (mandatory argument)"
    echo " -w: Specify the wishes. (optional argument). Default is Good morning"
    echo " -h: Display Help and exit"
}


while getopts ":n:w:h" opt;
do
    case $opt in
        n) name="$OPTARG";;
        w) wishes="$OPTARG";;
        h) USAGE; exit;;
        \?) echo "invalid options: -"$OPTARG"" >&2; USAGE; exit;;
    esac
done

if [ -z "$name" ]
then
    echo "ERROR: -n is mandatory"
    USAGE
    exit 1
fi

echo "Hello $name. $wishes. I have been learning shell script"
