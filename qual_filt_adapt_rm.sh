for f1 in *.fastq; 
    do f2=${f1%%R1_001.fastq}"R2_001.fastq"; ./fastp -i $f1 -I $f2 -o ${f1/R1_001.fastq/R1_noadapt_001.fastq} -O ${f2/R2_001.fastq/R2_noadapt _001.fastq} --detect_adapter_for_pe; 
done
