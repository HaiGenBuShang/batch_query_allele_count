#!/bin/bash

target_variant=${1}

curl https://gnomad.broadinstitute.org/api -H 'Content-Type: application/graphql; charset=utf-8' --data-binary @- << END_OF_QUERY

query {
  variant(variantId: "${target_variant}", dataset: gnomad_r4) {
    variantId
    pos
    rsids
    flags
    joint {
      populations {
        id
        ac
        an
      }
      filters
    }
  }
}

END_OF_QUERY
