#creates the final vcf and tbi file based on the genomic data base

reference=/home/pogoda/Sunflower_sorted_bams/Han412-HO.fasta

/home/pogoda/software/gatk-4.1.6.0/gatk --java-options "-Xmx166g -Xms166g" GenotypeGVCFs \
-R $reference \
-V gendb://GDBI_microbiome_95_complete \
-O microbiome_95_GATK.vcf.gz \
