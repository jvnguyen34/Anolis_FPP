##Anolis FPP data analysis and visualization
library(tidyr)
library(dplyr)
library(ggplot2)
library(qqman)

#Upload .csv file of plink2 output
anolisglm <- read.csv("associationoutput.csv")

#Remove NAs from data frame
anolisglm <- anolisglm[!is.na(anolisglm$P) & anolisglm$P > 0, ]

#Define variables for Manhattan plot
anolisglm$CHR <- 3
anolisglm$BP <- anolisglm$POS
anolisglm$SNP <- anolisglm$POS

#Generate Manhattan plot
manhattan(anolisglm, 
          chr = "CHR", bp = "BP", p = "P", snp = "SNP",
          col = c("blue3")) #not super informative, all log(OR) values are < 2

#Plot OR values vs. SNP position instead
or_snp <- ggplot(anolisglm, aes(x = POS, y = OR)) +
  geom_point(color = "blue", size = 1.5) +
  geom_hline(yintercept = 1, color = "red", linetype = "dashed") + #add OR = 1 line 
  labs(title = "Odds ratios along region of interest", 
       x = "Variant Position", 
       y = "Odds Ratio (OR)") +
  theme_bw()

plot(or_snp)
ggsave("or_snp.png", plot = or_snp)

#Load in allele frequency data and format it
allele_freq <- read.table("allele_frequencies.txt", header = FALSE, sep = "\t", col.names = c("chromosome", "position", "allele_frequency"))

hist(allele_freq$allele_frequency, main = "Allele Frequency Distribution", xlab = "Allele Frequency", ylab = "Count", col = "blue")

allele_plot <- ggplot(allele_freq, aes(x = position, y = allele_frequency)) +
  geom_point(alpha = 0.5, color = "blue") +
  theme_minimal() +
  labs(title = "Allele frequencies of identified variants",
       x = "SNP Position",
       y = "Allele Frequency") +
  theme_bw()

plot(allele_plot)
ggsave("allele_freq.png", plot = allele_plot)


#Load in genotype frequency data (Formatted in Excel)
genotypes <- read.csv("genotypes_final_edited.csv")

genotype_freq_long <- genotypes %>%
  select(-chromosome) %>% 
  pivot_longer(cols = -position, names_to = "sample", values_to = "genotype")

genotype_freq <- genotype_freq_long %>%
  group_by(position, genotype) %>%
  tally() %>%  
  ungroup() %>%
  group_by(position) %>%
  mutate(percentage = n / sum(n) * 100) %>%
  ungroup()

genotype_plot <- ggplot(genotype_freq, aes(x = as.factor(position), y = percentage, fill = genotype)) +
  geom_bar(stat = "identity", position = "stack") +
  labs(title = "Genotype frequencies of identified variants", 
       x = "SNP Position", 
       y = "Genotype Frequency (%)") +
  scale_fill_manual(values = c("0/0" = "#C0D6DF", "0/1" = "#FB3640", "1/1" = "#F9DC5C")) +  
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 60, hjust = 1))  

plot(genotype_plot)
ggsave("genotype_freq.png", plot = genotype_plot)






