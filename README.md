# batch_query_allele_count
This is used for query the joint (WES+WGS) allele counts and total number in gnomAD, and for querying small number of variants.

If you have a huge number of variants to query, this process will take a long time (about 4 seconds for quering one variant). In this case, please downloaded the allele count data from the gnomAD. 

The usage is **./batch_query.sh variant_list.txt results_directory**

You can try the test variant list by using command: **./batch_query.sh test_variant_list.txt test_dir**

Make sure you have R and the package tidyverse installed
