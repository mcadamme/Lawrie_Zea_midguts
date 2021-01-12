#!/bin/bash

#Script to count uniquely aligned reads
#M.Fritz 01-11-20

#gff to gtf annotation conversion
/home/megan/src/cufflinks-2.2.1.Linux_x86_64/gffread /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gff3 -T -o /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf


#HTSeq version 0.11.1

cd /media/megan/easystore/Roe/DGE_GenAligned_Samfiles

mkdir highQual_exon

#highQual_exon
htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Res-1_S6.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Res-1_S6_htseq

htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Res-2_S7.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Res-2_S7_htseq

htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Res-3_S8.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Res-3_S8_htseq

htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Res-4_S9.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Res-4_S9_htseq

htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Sus-1_S1.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Sus-1_S1_htseq

htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Sus-2_S2.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Sus-2_S2_htseq

htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Sus-3_S3.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Sus-3_S3_htseq

htseq-count -f sam -a 20 -r pos -s reverse --idattr=transcript_id -t CDS Sus-4_S4.sam  /home/megan/Genomes/HzOGS2-15205-fixed_note-added.gtf > ./highQual_exon/Sus-4_S4_htseq
