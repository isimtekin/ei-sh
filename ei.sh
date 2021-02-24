#!/bin/sh
. ei_log.sh

ei_packageJson(){
    local package=$(cat package.json |
    grep $1 |
    head -1 |
    awk -F: '{ print $2 }' |
    sed 's/[",]//g' |
    tr -d '[[:space:]]')
    echo $package
}


# echo $(ei_packageJson version)

# ei_log "Excepteur eiusmod reprehenderit culpa id irure sit et proident incididunt sint eiusmod proident tempor minim." red
# ei_log "Excepteur eiusmod reprehenderit culpa id irure sit et proident incididunt sint eiusmod proident tempor minim." green
# ei_log "Excepteur eiusmod reprehenderit culpa id irure sit et proident incididunt sint eiusmod proident tempor minim."

# ei_log_seperator
# ei_log_seperator bottom green
# ei_log_seperator top green
# ei_log_seperator center red

# ei_fail "Excepteur eiusmod reprehenderit culpa id irure sit et proident incididunt sint eiusmod proident tempor minim."

