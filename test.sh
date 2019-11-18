# tar xvpf $HOME/.piwin/ms-office-2013.tar.gz -C $HOME/.piwin/ 2>&1 |
# while read line; do
#     x=$((x+1))
#     echo -en "$x extracted\r"
# done

# tar -xf $HOME/.piwin/ms-office-2013.tar.gz -C $HOME/.piwin/ --checkpoint=.100
# archive="$1"

# originalsize=$(file $archive | rev | cut -d' ' -f1 | rev)
# step=100
# blocks=$(echo "$originalsize / 512 / 20 / $step" | bc)

# tar -xz --checkpoint=$step --totals \
# --checkpoint-action="exec='p=\$(echo "\$TAR_CHECKPOINT/$blocks" | bc -l);printf \"Extracting package: %.4f%%\r\" \$p'" \
# -f $archive

#ping 10.1.23.234
ping $1 -c2 > /dev/null 2>&1
if [ $? -eq 0 ];
then
    echo 1;
else
    echo 0;
fi