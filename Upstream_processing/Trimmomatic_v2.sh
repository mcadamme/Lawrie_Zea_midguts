#!/bin/bash
#This is the script that I used to trim adapter sequences from my reads
#When I extracted the raw read files from the tarball, I got an error on the 5th rep of the resistant samples
#Therefore, I just went ahead and deleted the 5th resistant rep, as well as the 5th susceptible rep to keep a balanced design.

cd /media/megan/easystore/Roe

#resistant
java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Resistant_1_S6_R1_001.fastq.gz Roe-Resistant_1_S6_R2_001.fastq.gz Roe-Resistant_1_S6_R1_001_paired.fastq.gz Roe-Resistant_1_S6_R1_001_unpaired.fastq.gz Roe-Resistant_1_S6_R2_001_paired.fastq.gz Roe-Resistant_1_S6_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50

java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Resistant_2_S7_R1_001.fastq.gz Roe-Resistant_2_S7_R2_001.fastq.gz Roe-Resistant_2_S7_R1_001_paired.fastq.gz Roe-Resistant_2_S7_R1_001_unpaired.fastq.gz Roe-Resistant_2_S7_R2_001_paired.fastq.gz Roe-Resistant_2_S7_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50

java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Resistant_3_S8_R1_001.fastq.gz Roe-Resistant_3_S8_R2_001.fastq.gz Roe-Resistant_3_S8_R1_001_paired.fastq.gz Roe-Resistant_3_S8_R1_001_unpaired.fastq.gz Roe-Resistant_3_S8_R2_001_paired.fastq.gz Roe-Resistant_3_S8_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50

java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Resistant_4_S9_R1_001.fastq.gz Roe-Resistant_4_S9_R2_001.fastq.gz Roe-Resistant_4_S9_R1_001_paired.fastq.gz Roe-Resistant_4_S9_R1_001_unpaired.fastq.gz Roe-Resistant_4_S9_R2_001_paired.fastq.gz Roe-Resistant_4_S9_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50

#susceptible
java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Suseptible_1_S1_R1_001.fastq.gz Roe-Suseptible_1_S1_R2_001.fastq.gz Roe-Suseptible_1_S1_R1_001_paired.fastq.gz Roe-Suseptible_1_S1_R1_001_unpaired.fastq.gz Roe-Suseptible_1_S1_R2_001_paired.fastq.gz Roe-Suseptible_1_S1_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50

java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Suseptible_2_S2_R1_001.fastq.gz Roe-Suseptible_2_S2_R2_001.fastq.gz Roe-Suseptible_2_S2_R1_001_paired.fastq.gz Roe-Suseptible_2_S2_R1_001_unpaired.fastq.gz Roe-Suseptible_2_S2_R2_001_paired.fastq.gz Roe-Suseptible_2_S2_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50

java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Suseptible_3_S3_R1_001.fastq.gz Roe-Suseptible_3_S3_R2_001.fastq.gz Roe-Suseptible_3_S3_R1_001_paired.fastq.gz Roe-Suseptible_3_S3_R1_001_unpaired.fastq.gz Roe-Suseptible_3_S3_R2_001_paired.fastq.gz Roe-Suseptible_3_S3_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50

java -jar /home/megan/src/Trimmomatic-0.38/trimmomatic-0.38.jar PE -threads 4 Roe-Suseptible_4_S4_R1_001.fastq.gz Roe-Suseptible_4_S4_R2_001.fastq.gz Roe-Suseptible_4_S4_R1_001_paired.fastq.gz Roe-Suseptible_4_S4_R1_001_unpaired.fastq.gz Roe-Suseptible_4_S4_R2_001_paired.fastq.gz Roe-Suseptible_4_S4_R2_001_unpaired.fastq.gz ILLUMINACLIP:/home/megan/src/Trimmomatic-0.38/adapters/TruSeq3-PE-2.fa:2:30:10:8:true SLIDINGWINDOW:5:20 MINLEN:50


#moving trimmed pairs and trimmed unpaired files to separate folders.

mkdir trimmed_pairs trimmed_unpaired

mv *_paired.fastq.gz ./trimmed_pairs
mv *_unpaired.fastq.gz ./trimmed_unpaired


