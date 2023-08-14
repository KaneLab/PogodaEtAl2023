# Remove all fields and all FORMAT fields except for GT and PL
# http://samtools.github.io/bcftools/bcftools.html
# file should be gzipped
inVCF=microbiome_95_GATK.vcf.gz 
outVCF=simple_microbiome_95_GATK.vcf
bcftools annotate -x ^FORMAT/GT,^FORMAT/PL ${inVCF} --threads 66 -o ${outVCF}

bcftools view --types snps ${outVCF} --threads 66 -o temp123

mv temp123 ${outVCF}

