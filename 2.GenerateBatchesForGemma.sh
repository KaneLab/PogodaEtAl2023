#Low-tech parallel implementation of GEMMA by running each GEMMA command on a separate core
grep "mmfs" 2.a.AllGemmaGWASCommands.sh > Lines

split -l 1 Lines

ls x* > SplitFileNames

  echo "#!/bin/bash
  #PBS -N QQQQQ
  #PBS -l select=1:ncpus=1:mem=4gb
  #PBS -l walltime=168:00:00
  #PBS -j oe
  #PBS -M kylekeepers@nomorespam.com
  #PBS -W group_list=x-ccast-prj-hulke
  #PBS -q condo05
  #PBS -m abe
  
  cd /mmfs1/projects/brent.hulke/MolecularEcology_Microbiome_95_geno/KyleGEMMAinputs
  
  " > Template

#Loop over each analysis to create the job script and schedule it at the same time
cat SplitFileNames | while read file; do 

	name=`grep "mmfs" $file | awk '{print $NF}'`

	#Concatenate the slurm script header with each GEMMA command
	cat Template $file > ${file}TEMP

	#Give a unique name to each job
	sed "s/QQQQQ/$name/g" ${file}TEMP > ${file}.sh

	#Schedule the job
	qsub ${file}.sh

	#Housekeeping
	rm ${file}.sh
       	rm ${file}TEMP; rm $file

done

#Housekeeping
rm Lines; rm SplitFileNames
