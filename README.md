# batch_query_allele_count
This is used for query the joint (WES+WGS) allele counts and total number in gnomAD, and for small number of variants to query

If you have a huge number of variants to query, please downloaded the allele frequency data of the gnomAD. The file size for WES data is 1.07GB, and for WGS data 11.19GB.

The usage is **./batch_query.sh variant_list.txt results_directory**

You can try the test variant list by using command: **./batch_query.sh test_variant_list.txt test_dir**

Make sure you have R and the package tidyverse installed
