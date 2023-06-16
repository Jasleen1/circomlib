#!/bin/bash

# Setup the needed files
circom ../circuits/voting_check.circom --r1cs --wasm --sym    

# Generate the prover and verifier key
snarkjs groth16 setup voting_check.r1cs pot12_final.ptau voting_check.zkey