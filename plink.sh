#create PLINK format file 

#VCF file
file=IMPUTED_simple_microbiome_95_GATK_singleCopy_biallelic_minQ100_maxM0.9_maf0.05.recode.vcf
#output path
oPath=/home/pogoda/GATK_microbiome_95_geno/gapit_mapping/

#file from step1 without the .map
file2=${file}_plink

##VCF file should be formatted with chr names as 01-17
##remove Ha412HOChr
#sed 's/Ha412HOChr//g' ${file} > temp123 ; mv temp123 ${file}

####run this step only once for a certain VCF file####
#vcftools --vcf ${file} --plink --out ${oPath}${file2}

###change parametrs before every run
window=100
step=5
vif=10
/home/pogoda/software/plink --file ${oPath}${file2} --indep ${window} ${step} ${vif} --out ${oPath}${file2}_win${window}_step${step}_vif${vif}

###use sed to modify prune.in file
sed 's/:/\t/g' ${oPath}${file2}_win${window}_step${step}_vif${vif}.prune.in > ${oPath}${file2}_win${window}_step${step}_vif${vif}_modified.prune.in

##run hash.py 
python hash.py  ${oPath}${file2}_win${window}_step${step}_vif${vif}_modified.prune.in ${file} > ${oPath}${file2}_win${window}_step${step}_vif${vif}.vcf

vcftools --vcf ${oPath}${file2}_win${window}_step${step}_vif${vif}.vcf  --012 --out  ${oPath}my-snps-2keep




