#!/bin/bash

echo "To use this scirpt, use this command ${0} variant_list.txt results_directory"
echo "you can try this: ${0} test_variant_list.txt test_dir"

variants_list=${1}

out_dir=${2}

mkdir -p ${out_dir}

for v in $(cat ${variants_list})
do
	./query_variants.sh ${v} > ${out_dir}/${v}_allele_count.txt

	sleep 4
done

R --vanilla -f arrange_allele_count.R --no-echo --args ${out_dir}

