#!/bin/bash
echo "Disliked name"
read VAR1
echo "New Name"
read VAR2
grep -rli $VAR1 ./* | xargs -i@ sed -i s/$VAR1/$VAR2/g @
rename s/$VAR1/$VAR2/ **