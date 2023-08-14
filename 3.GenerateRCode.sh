#Automate the creation of the R commands needed to generate the Manhattan plots and QQ plots for the output of each GEMMA command. The input is a list of file prefixes called "TestList", and the output is a block of R code for each test that generates the Manhattan plot and QQ plot with the correct output file names. The values for pthresh and pthresh2 are generated elsewhere in the final script, based on the number of variants in the input VCF.

mkdir RFiles

echo "

QQQQQ <- read.table(SSSQQQQQ.assoc.txtSSS, header=T)

QQQQQ <- QQQQQ[,c(1,2,3,13)]
XXXXX\$SNP <- paste(XXXXX\$ps, XXXXX\$rs)
XXXXX\$SNP <- paste(XXXXX\$SNP, XXXXX\$chr)
QQQQQ <- QQQQQ[,c(5, 1, 3, 4)]
QQQQQ <- QQQQQ %>% rename(Chromosome = chr)
QQQQQ <- QQQQQ %>% rename(Position = ps)
QQQQQ <- QQQQQ %>% rename(QQQQQ = p_wald)

#Each plot should take a few minutes to generate on a standard laptop. Manhattan plot, two different thresholds
MVP.Report(QQQQQ, plot.type=SSSmSSS, col=c(SSSgrey60SSS,SSSgrey30SSS), LOG10=TRUE, ylim=NULL,
           threshold=c(pthresh,pthresh2), threshold.lty=c(1,2), threshold.lwd=c(1,1), threshold.col=c(SSSblackSSS,SSSgreySSS),
           amplify=TRUE,chr.den.col=NULL, signal.col=c(SSSredSSS,SSSgreenSSS), signal.cex=c(1,1),
           signal.pch=c(19,19),file.type=SSSjpgSSS,memo=SSSQQQQQSSS,dpi=300)

#QQplot
MVP.Report(QQQQQ, plot.type=SSSqSSS, box=TRUE, file.type=SSSjpgSSS, memo=SSSQQQQQSSS,dpi=300)

" > TemplateRCode

#Instantiate the master R script that will be populated with the block code for each individual test
>MVPReportForAllTests.R

#Low tech implementation of a loop to generate relevant plots...We loop over the individual test prefixes and substitute relevant identifying info in the TemplateRCode by substituting placeholder strings (QQQQQ, XXXXX, SSS) with test-specific identifiers.
cat TestList | while read test; do

	sed "s/QQQQQ/$test/g" TemplateRCode > RFiles/CodeFor${test}
	sed -i "s/XXXXX/$test/g" RFiles/CodeFor${test}
	sed -i "s/SSS/\"/g" RFiles/CodeFor${test}

	cat MVPReportForAllTests.R RFiles/CodeFor${test} > tmp; mv tmp MVPReportForAllTests.R

done

#Final output "MVPReportForAllTests.R" is imported into RStudio to be used in conjunction with the packages rMVP and tidyverse to generate those plots.
sed -i 's/4Mean/FourMean/g' MVPReportForAllTests.R
