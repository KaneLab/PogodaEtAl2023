#In the fam file, the columns are...
#Crookston08    2
#Crookston09    3
#Davenport08    4
#Grandin09      5
#SR_4env_mean   6
#CarrInocSR     7
#OTU_293        8
#OTU_750        9
#OTU_77         10
#OTU_908        11

#Crookston08,OTU_77. To fix an issue with this analysis failing due to a singlar input matrix, we added the first PC (~5% variance explained) as a covariate.
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -c OnePCA.txt -n 2 10 -lmm 1 -o Crook08_77
#Crookston08,OTU_293
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 2 8 -lmm 1 -o Crook08_293
#Crookston08,OTU_750. To fix an issue with this analysis failing due to a singlar input matrix, we added the first PC (~5% variance explained) as a covariate.
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -c OnePCA.txt -n 2 9 -lmm 1 -o Crook08_750
#Crookston08,OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 2 11 -lmm 1 -o Crook08_908

#Crookston09,OTU_77
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 3 10 -lmm 1 -o Crook09_77
#Crookston09,OTU_293
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 3 8 -lmm 1 -o Crook09_293
#Crookston09,OTU_750
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 3 9 -lmm 1 -o Crook09_750
#Crookston09,OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 3 11 -lmm 1 -o Crook09_908

#Davenport08,OTU_77
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 4 10 -lmm 1 -o Daven08_77
#Davenport08,OTU_293. To fix an issue with this analysis failing due to a singlar input matrix, we added the first PC (~5% variance explained) as a covariate.
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -c OnePCA.txt -n 4 8 -lmm 1 -o Daven08_293
#Davenport08,OTU_750. To fix an issue with this analysis failing due to a singlar input matrix, we added the first PC (~5% variance explained) as a covariate.
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -c OnePCA.txt -n 4 9 -lmm 1 -o Daven08_750
#Davenport08,OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 4 11 -lmm 1 -o Daven08_908

#Grandin09,OTU_77
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 5 10 -lmm 1 -o Grandin09_77
#Grandin09,OTU_293
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 5 8 -lmm 1 -o Grandin09_293
#Grandin09,OTU_750
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 5 9 -lmm 1 -o Grandin09_750
#Grandin09,OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 5 11 -lmm 1 -o Grandin09_908

#4envMean,OTU_77
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 6 10 -lmm 1 -o 4Mean_77
#4envMean,OTU_293
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 6 8 -lmm 1 -o 4Mean_293
#4envMean,OTU_750
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 6 9 -lmm 1 -o 4Mean_750
#4envMean,OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 6 11 -lmm 1 -o 4Mean_908

#Carrington,OTU_77
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 7 10 -lmm 1 -o Carr_77
#Carrington,OTU_293
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 7 8 -lmm 1 -o Carr_293
#Carrington,OTU_750
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 7 9 -lmm 1 -o Carr_750
#Carrington,OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 7 11 -lmm 1 -o Carr_908



MULTIVARIATE GWAS
#Crookston08, Crookston09, Davenport08, Grandin09, Carrington,OTU_77
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 2 3 4 5 7 10 -lmm 1 -o All4_77
#Crookston08, Crookston09, Davenport08, Grandin09, Carrington,OTU_293
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 2 3 4 5 7 8 -lmm 1 -o All4_293
#Crookston08, Crookston09, Davenport08, Grandin09, Carrington,OTU_750
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 2 3 4 5 7 9 -lmm 1 -o All4_750
#Crookston08, Crookston09, Davenport08, Grandin09, Carrington,OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 2 3 4 5 7 11 -lmm 1 -o All4_908

#Crookston08, OTU_77, OTU_293, OTU_750, OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 2 10 8 9 11 -lmm 1 -o Crook08_all4
#Crookston09, OTU_77, OTU_293, OTU_750, OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 3 10 8 9 11 -lmm 1 -o Crook09_all4
#Davenport08, OTU_77, OTU_293, OTU_750, OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 4 10 8 9 11 -lmm 1 -o Daven08_all4
#Grandin09, OTU_77, OTU_293, OTU_750, OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 5 10 8 9 11 -lmm 1 -o Grandin09_all4
#Carrington, OTU_77, OTU_293, OTU_750, OTU_908
/mmfs1/home/kyle.keepers/software/gemma-0.98.5-linux-static-AMD64 -bfile Micro -k output/Kinship.cXX.txt -n 7 10 8 9 11 -lmm 1 -o Carr_all4
