# #! bin/bash
# for load in $(seq 1 100); do
#     echo -ne "$load % downloded ...\r"
#     sleep 1
# done
# echo "100"
# echo "Loaded ..."

for i in $(seq 1 50); do
  echo -ne "$i%\033[0K\r"
  sleep 0.1
done
echo "ended"

sudo pacman -Syy