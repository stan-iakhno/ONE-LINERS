for f in *.fastq.gz; do
    mv -- "$f" "${f/PATTERN/}"
done
