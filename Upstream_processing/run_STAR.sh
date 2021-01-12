#!/bin/bash

##Generate Genome Index
/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --runMode genomeGenerate --genomeDir /home/megan/Genomes --genomeFastaFiles /home/megan/Genomes/hz5p5_CSIRO_download03172020.fas --sjdbGTFfile /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gff3 --sjdbGTFfeatureExon CDS --sjdbOverhang 150 --sjdbGTFtagExonParentTranscript Parent --genomeSAindexNbases 13.5


mkdir /media/megan/easystore/Roe/DGE_GenAligned_Samfiles

##Run Mapping Job with ENCODE standard options

#Resistant
/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_1_S6_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_1_S6_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Res-1_S6.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary

/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_2_S7_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_2_S7_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Res-2_S7.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary

/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_3_S8_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_3_S8_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Res-3_S8.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary

/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_4_S9_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Resistant_4_S9_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Res-4_S9.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary


#Susceptible
/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_1_S1_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_1_S1_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Sus-1_S1.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary

/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_2_S2_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_2_S2_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Sus-2_S2.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary

/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_3_S3_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_3_S3_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Sus-3_S3.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary


/home/megan/src/STAR-2.7.6a/source/STAR --runThreadN 7 --genomeDir /home/megan/Genomes --readFilesCommand gunzip -c --readFilesIn /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_4_S4_R1_001_paired.fastq.gz /media/megan/easystore/Roe/trimmed_pairs/Roe-Suseptible_4_S4_R2_001_paired.fastq.gz --outFilterType BySJout --outFilterMultimapNmax 20 --alignSJoverhangMin 8 --alignSJDBoverhangMin 1 --outFilterMismatchNmax 999 --outFilterMismatchNoverReadLmax 0.04 --alignIntronMin 20 --alignIntronMax 1000000 --alignMatesGapMax 1000000

mv Aligned.out.sam /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Sus-4_S4.sam
cat Log.final.out >> /media/megan/easystore/Roe/DGE_GenAligned_Samfiles/Log_summary


