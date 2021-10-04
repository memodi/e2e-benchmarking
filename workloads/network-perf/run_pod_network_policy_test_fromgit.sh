#!/usr/bin/env bash
export WORKLOAD=pod

source ./common.sh
export NETWORK_POLICY=true

for pairs in 1 2 4; do
  export pairs=${pairs}
  run_workload ripsaw-uperf-crd.yaml
  assign_uuid
  run_benchmark_comparison
done
generate_csv
