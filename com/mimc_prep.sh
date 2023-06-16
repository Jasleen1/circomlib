#!/bin/bash

# Setup the needed files
circom ../circuits/mimc_commitment.circom --r1cs --wasm --sym    

# Setup the witnesses
node generate_witness.js mimc_commitment_js/mimc_commitment.wasm com_in.json com_wits.wtns

# Generate the prover and verifier key
snarkjs groth16 setup mimc_commitment.r1cs pot12_final.ptau mimc_commitment_0.zkey