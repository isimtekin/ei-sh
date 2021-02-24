
red=`tput setaf 1`
green=`tput setaf 2`
reset=`tput sgr0`

ei_echo(){
    local color=$2
    echo "${color}${1}${reset}"
}

ei_get_color(){
    local color=$reset
    case $1 in
        red)
            color=$red
            ;;
        green)
            color=$green
            ;;
        *)
            color=$reset
            ;;
    esac
    echo $color
}

ei_log() {
    local color=$(ei_get_color $2)
    ei_echo "|> $1" $color
}


ei_log_seperator() {
    local color=$(ei_get_color $2)

    case $1 in
        top)
            ei_echo "|⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻⎻" $color
            ;;
        bottom)
            ei_echo "|_____________________________________________________________" $color
            ;;
        *)
            ei_echo "|-------------------------------------------------------------" $color
            ;;
    esac
}

ei_fail() {
    ei_log_seperator top red
    ei_log "$1" red # message
    ei_log_seperator bottom red
    exit 1
}