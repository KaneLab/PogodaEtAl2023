##Test script to run GATK on multiple .sorted.bam files

cat RG4_aas |while read file; do 
	/home/pogoda/software/gatk-4.1.6.0/gatk  --java-options "-Xmx24g" HaplotypeCaller  \
   		-R /home/pogoda/Sunflower_sorted_bams/Han412-HO.fasta \
   		-I ${file} \
   		-O /home/pogoda/GATK_microbiome_95_geno/${file}.g.vcf.gz \
		-ERC GVCF
rm ${file}
rm ${file}.bai
done
