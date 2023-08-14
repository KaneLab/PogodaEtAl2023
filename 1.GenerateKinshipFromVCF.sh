#Plink steps
~/plink2/plink2 --vcf IMPUTED_simple_microbiome_95_GATK_singleCopy_biallelic_minQ100_maxM0.9_maf0.05.recode.vcf --make-bed -out Micro

~/plink2/plink2 --bfile Micro --make-king


#Path-finding the multivariate GWAS analysis in GEMMA

#Create a kinship matrix in GEMMA. I tested out whether the column specified in the -n flag matters, and it doesn't appear to -- any column specified produces the exact same output. I even tried it with a different phenotype file (specified with the -p flag) and it made no difference. These values are definitely different than the ones in SAM_Kinship_new.cXX.txt produced by Markus, presumably because his VCF was transformed
~/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -p GA_oil_contents_GEMMA.csv -n 1 -gk 1 -o Kinship


#In the fam file, the columns are...
#Crookston08	2
#Crookston09	3
#Davenport08	4
#Grandin09	5
#SR_4env_mean	6
#CarrInocSR	7
#OTU_293	8
#OTU_750	9
#OTU_77		10
#OTU_908	11
