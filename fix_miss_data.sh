##fixes the missing data format output from GATK / vcftools that beagle can't handle.
fileIn=simple_microbiome_95_GATK_singleCopy_biallelic_minQ100_maxM0.9_maf0.05.recode.vcf

sed 's/\t\.:\./\t\.|\.:\./g' ${fileIn} |  sed 's/\t\.:0,0,0/\t\.|\.:0,0,0/g' | sed 's/\t\.:0,0,1/\t\.|\.:0,0,0/g' | sed 's/\t\.:1,0,0/\t\.|\.:0,0,0/g' | sed 's/\t\.:0,1,0/\t\.|\.:0,0,0/g' > temp123

mv temp123 ${fileIn}

