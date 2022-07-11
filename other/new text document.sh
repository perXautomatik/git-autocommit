while read p; do
 wget -qO- $p | gawk -v IGNORECASE=1 -v RS='</title>' 'RT{print;exit}'

done < asd.txt