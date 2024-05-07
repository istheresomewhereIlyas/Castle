#!/bin/sh
find -iname '*.hmm' | while read f; do
        echo "Aligning ${f}"
        #file1=`echo ${f}`
        out=${f}_out.tsv
        out1=${f}_out.txt
        echo "Running nhmmer command"
        nhmmer --cpu 18 --tblout ${out} Homo_sapiens_FGF21_sequence.fa ${f}
        echo "nhmmer command completed successfully"
done
