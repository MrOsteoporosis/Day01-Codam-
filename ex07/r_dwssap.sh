cat /etc/passwd | grep -v "#" |  awk 'NR%2==0' | cut -d ":" -f 1 | rev | sort -r | awk "FNR>=$FT_LINE1 && FNR<=$FT_LINE2" | tr "\n" "," | sed 's/.$/./'