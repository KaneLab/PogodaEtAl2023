#imputation
file=simple_microbiome_95_GATK_singleCopy_biallelic_minQ100_maxM0.9_maf0.05.recode.vcf
#file=microbiome_95_GATK.vcf.gz
java -Xmx144g -jar /home/pogoda/software/BEAGLE/beagle.03Jul19.b33.jar gt=${file} nthreads=36  out=IMPUTED_${file}

#java -Xmx144g -jar /home/pogoda/software/beagle.21Apr21.304.jar gt=${file} nthreads=36  out=IMPUTED_${file}

