# **Welcome, lizards! The following text outlines the contents of the Anolis_FPP repository** <br />
### *Are you team chevron or team stripe?*


# **figures** <br />
- allele_freq.png - graph of allele freq vs. variant position <br />
- genotype_freq.png - graph of genotype frequencies for each indentified variant <br />
- or_snp.png - graph of odds ratio vs. variant position <br />

# **processed_data** <br />
- SQK-RBK114-96_barcode*.m.bam.bai - indexed .bam files (barcode 01 - barcode 20) <br />
- SQK-RBK114-96_barcode*.m.sorted.bam - sorted .bam files (barcode 01 - barcode 20) <br />
- Scaffold_3_exon1_4.fasta.fai - indexed reference sequence <br />
- allele_frequencies.txt - allele frequencies for R visualization <br />
- anolis_raw.bcf - combined .bam files <br />
- anolis_variants.vcf - original variant call output file <br />
- anolis_variants_AF0.5DP20.vcf - filtered variants for MAF = 0.05, DP > 20 <br />
- anolis_variants_Q20DP20.vcf - filtered variants for QUAL > 20, DP > 20 <br />
- anolis_with_af.vcf - modified original variant call output file but added AF tag to INFO <br />
- anolis_with_af_biallelic.vcf - filtered for biallelic only, includes AF <br />
- anolis_with_af_biallelic_DP.vcf - " with DP > 20 <br />
- anolis_with_af_biallelic_DPMD.vcf - " with MD <= 20 <br />
- anolis_with_af_biallelic_DPMDQU.vcf - " with QUAL > 20 <br />
- calls.bcf - test file; ignore <br />
- genotypes_final.csv - genotypes of each individual at each variant for R visualization <br />
- out.log - log file; ignore <br />
### **glm** <br />
- anolisplink.pgen - vcf to plink formatted file for GLM analysis <br />
- anolisplink.psam - vcf to plink formatted file for GLM analysis <br />
- anolisplink.pvar - vcf to plink formatted file for GLM analysis <br />
- association.Phenotype.glm.logistic - plink GLM output <br />
- association.log - log file; ignore <br />
- associationoutput.csv - plink GLM output formatted for R visualization/analysis <br />

# **raw_data** <br />
- exon2_fpp.fasta - sequence of just the exon2 region; did not use <br />
- phenotype.phe - phenotype list <br />
### **john_data_20barcodes_hq** <br />
- SQK-RBK114-96_barcode*.b.bam - raw .bam files for barcode (samples) 01 - 20 <br />
- Scaffold_3_exon1_4.fasta - reference sequence <br />

# **scripts** <br />
- Project_Script - final script for the project, all code/commands are here <br />
- anolis.glm.sh - script for plink GLM analysis <br />
- fpp_bioinformatics - R script for figures and analysis <br />

# **bcftools-1.21** <br />
- build folder for the bcftools software <br />
# **samtools-1.21** <br />
- build folder for the samtools software <br />

  
