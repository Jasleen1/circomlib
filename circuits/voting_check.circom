pragma circom 2.0.0;

include "mimc.circom";
include "eddsamimc.circom";
include "mimc_commitment.circom";


template VotingCheck() {
    signal input voter_PK;
    signal input voter_r;
    signal input enabled;
    signal input Ax;
    signal input Ay;

    signal input S;
    signal input R8x;
    signal input R8y;

    signal input M;
    signal com;
    // signal out;

    component commitment = MiMCCom();
    commitment.x <== voter_PK;
    commitment.r <== voter_r;

    com <-- commitment.com;
    // com === M;
    component test_multi = MultiMiMC7(2, 2);
    test_multi.in <== [1, 1];
    test_multi.k <== 0;
    log(100001);
    log(test_multi.out);

    // component sig_verify = EdDSAMiMCVerifier();
    // log(com);
    // sig_verify.enabled <== enabled;
    // sig_verify.M <== M;
    // sig_verify.Ax <== Ax;
    // sig_verify.Ay <== Ay;
    // sig_verify.R8x <== R8x;
    // sig_verify.R8y <== R8y;
    // sig_verify.S <== S;

}

component main = VotingCheck();