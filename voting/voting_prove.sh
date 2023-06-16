#!/bin/bash

# Setup the witnesses
node voting_check_js/generate_witness.js voting_check_js/voting_check.wasm voting_in.json voting_wits.wtns

# Generate the proof and public inputs
snarkjs groth16 prove voting_check.zkey voting_wits.wtns proof.json public.json
