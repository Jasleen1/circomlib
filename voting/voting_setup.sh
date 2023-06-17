#!/bin/bash

# Generate general powers of Tau
snarkjs powersoftau new bn128 12 pot12_0000.ptau -v
snarkjs powersoftau contribute pot12_0000.ptau pot12_0001.ptau --name="First contribution" -v
snarkjs powersoftau contribute pot12_0001.ptau pot12_0002.ptau --name="More contribution" -v
snarkjs powersoftau contribute pot12_0002.ptau pot12_0003.ptau --name="More contribution" -v
snarkjs powersoftau contribute pot12_0003.ptau pot12_0004.ptau --name="More contribution" -v
snarkjs powersoftau contribute pot12_0004.ptau pot12_0005.ptau --name="More contribution" -v

snarkjs powersoftau prepare phase2 pot12_0005.ptau pot12_final.ptau -v
