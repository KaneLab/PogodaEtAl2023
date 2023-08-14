cat RG_bams_list.txt |while read line; do
	samtools index -@ 32 ${line}
done
