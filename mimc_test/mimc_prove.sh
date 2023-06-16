#!/bin/bash

# Setup the witnesses
node mimc_test_js/generate_witness.js mimc_test_js/mimc_test.wasm mimc_test_in.json mimc_wits.wtns

# Generate the proof and public inputs
snarkjs groth16 prove mimc_test.zkey mimc_wits.wtns proof.json public.json
