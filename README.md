Welcome! This following text outlines the contents of the ANOLIS_FPP repository. 

#FOLDER - bcftools-1.21: build folder for the bcftools software 
#FOLDER - samtools-1.21: build folder for the samtools software

#FOLDER - figures: contains project results and deliverables
allele_freq.png - graph of allele freq vs. variant position 
genotype_freq.png - graph of genotype frequencies for each indentified variant
or_snp.png - graph of odds ratio vs. variant position

#FOLDER - processed_data
SQK-RBK114-96_barcode*.m.bam.bai - indexed .bam files (barcode 01 - barcode 20)
SQK-RBK114-96_barcode*.m.sorted.bam - sorted .bam files (barcode 01 - barcode 20)
Scaffold_3_exon1_4.fasta.fai - indexed reference sequence
allele_frequencies.txt - allele frequencies for R visualization 
anolis_raw.bcf - combined .bam files
anolis_variants.vcf - original variant call output file
anolis_variants_AF0.5DP20.vcf - filtered variants for MAF = 0.05, DP > 20
anolis_variants_Q20DP20.vcf - filtered variants for QUAL > 20, DP > 20
anolis_with_af.vcf - modified original variant call output file but added AF tag to INFO
anolis_with_af_biallelic.vcf - filtered for biallelic only, includes AF 
anolis_with_af_biallelic_DP.vcf - " with DP > 20
anolis_with_af_biallelic_DPMD.vcf - " with MD <= 20
anolis_with_af_biallelic_DPMDQU.vcf - " with QUAL > 20
calls.bcf - test file; ignore
genotypes_final.csv - genotypes of each individual at each variant for R visualization
out.log - log file; ignore
  #SUBFOLDER - glm 
  anolisplink.pgen - vcf to plink formatted file for GLM analysis
  anolisplink.psam - vcf to plink formatted file for GLM analysis
  anolisplink.pvar - vcf to plink formatted file for GLM analysis
  association.Phenotype.glm.logistic - plink GLM output
  association.log - log file; ignore
  associationoutput.csv - plink GLM output formatted for R visualization/analysis

#FOLDER - raw_data
exon2_fpp.fasta - sequence of just the exon2 region; did not use
phenotype.phe - phenotype list 
  #SUBFOLDER - john_data_20barcodes_hq
  SQK-RBK114-96_barcode*.b.bam - raw .bam files for barcode (samples) 01 - 20
  Scaffold_3_exon1_4.fasta - reference sequence

#FOLDER - scripts
Project_Script - final script for the project, all code/commands are here
anolis.glm.sh - script for plink GLM analysis
fpp_bioinformatics - R script for figures and analysis
  

  
