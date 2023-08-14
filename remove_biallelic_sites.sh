#keep only biallelic site in VCF
##remeber to delete .vcf from the file name##
file=simple_SAM_GATK
path=~/GATK_SAM_population

grep "#" ${path}/${file}.vcf > ${path}/Header
grep -v "#" ${path}/${file}.vcf | awk '$5 !~ ","' > ${path}/tmp; cat ${path}/Header ${path}/tmp > ${path}/${file}_biallelic.vcf

rm ${path}/Header
rm ${path}/tmp
