#!/bin/bash

# Setup the needed files
circom ../circuits/mimc_test.circom --r1cs --wasm --sym    

# Generate the prover and verifier key
snarkjs groth16 setup mimc_test.r1cs pot12_final.ptau mimc_test.zkey