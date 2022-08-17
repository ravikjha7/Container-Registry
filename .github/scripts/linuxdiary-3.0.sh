for dir in $1
do
    dir=${dir%*/}      # remove the trailing "/"
    echo "${dir##*/}"    # print everything after the final "/"
done
