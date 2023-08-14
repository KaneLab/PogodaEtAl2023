cat FileLocations_Names_for_running_through_GATK_full.txt |while read file name; do
	java -jar /home/pogoda/software/picard/build/libs/picard.jar AddOrReplaceReadGroups \
		I=${file} \
		O=/home/pogoda/GATK_microbiome_95_geno/${name}_RG.sorted.bam \
		RGLB=lib1 \
		RGPL=illumina \
		RGPU=unit1 \
		RGSM=${name}

done
