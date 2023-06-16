pragma circom 2.0.0;

include "mimc.circom";
include "eddsa.circom";
include "mimc_commitment.circom";


template VotingCheck() {
    signal input voter_PK;
    signal input voter_r;
    signal input A[256];
    signal input R8[256];
    signal input S[256];
    signal com;
    signal out;

    component commitment = MiMCCom();
    commitment.x <== voter_PK;
    commitment.r <== voter_r;

    com <-- commitment.com;
    
    component sig_verify = EdDSAVerifier(1);
    
    sig_verify.msg <== [com];
    sig_verify.A <== A;
    sig_verify.R8 <== R8;
    sig_verify.S <== S;

}

component main = VotingCheck();