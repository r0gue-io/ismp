// Copyright (C) Polytope Labs Ltd.
// SPDX-License-Identifier: Apache-2.0

// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// 	http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
pragma solidity 0.8.17;

import "forge-std/Test.sol";
import {KusamaVerifier} from "../src/consensus/verifiers/KusamaVerifier.sol";
import {PolkadotVerifier} from "../src/consensus/verifiers/PolkadotVerifier.sol";

contract UltraPlonkTest is Test {
    KusamaVerifier internal kusama;
    PolkadotVerifier internal polkadot;

    function setUp() public virtual {
        kusama = new KusamaVerifier();
        polkadot = new PolkadotVerifier();
    }

    function testKusamaVerifier() public view {
        bytes
            memory proof = hex"1df9452144aa7b7d66c55bae5bd5eab85ee066acabbd4d2c8b0827188407aa0527d806c08671968e4462a856e6aa668ae3d945419c49dc113534c47e4284fd8e206b54ac92c850ad33d3000417827da20b53c7d74d506ad3ece5cf752a69cc4b029511fdf73fdcc45e13821abb8d74da38a5e55ce52eeb781958109cb5042b50212d66680e7f0da498967c3e0d87ae6ec3b9efa1993c05ed3986b98a5b93ad6f07a59886044c1a82b7a220e0f99f965a10afabe60e3464416e580ba3d2ec18e61bdf48f16665ca9db54254554abe9b896943d630f46adf2fa9ffebaa023708e827584edcdb771402e92b18c6590363dca7fd1763aedf0c694b66cc700742cb1e1389fb2fe05cf0b670ce5712cb644d8e3098d2cd3ee5d6e014efd08c63b0db120c24a785a773b50ea9bd21511863df16efb2201e5e3db55c5493bc3746767e822a61d67f17c4b758bdeeb3bde4b384dfb890b5ab8e019de21c51f3f2816f18501ea53254fe46428d493a83f78eb350f7c838eaff870e79567dfa7ccd7f47d4602f0d9770c520576030b69a7d64d6f4fe2a47b34f5eadf349b201e21fe5718dd20287e4185990dc46b7378124a4336c1cc3eb80eef7bada17f72d744e44d838410c94fc09a3f69d7ccd3404ef352c15fb4e9e9975de20677f6fb9df9dcfc939bc1e816c7cc1c62f804c73cbe42f6bc2551dd4aa31a44d895a4aa33bdc199fe2f7057c2a9884f8490e04582f39529d618ac7e6bcbdebd8173c0ae286fdeadbbbb81dfe6ad80e3fb25848790697a46eec429732c10c54e1ab00fcffdb6768e69c6825440e19e51d791737a8bfaeb81738eece3e7d316859d9b4020792e0a77a206011263430e1f286bd25edd470b17a846fe55ad538624ed8dd5e1e7eb64157722e1cd75a7c8f2a5792293ed7dca487abc69ffd3b1e2c54fab76827a342be69491f063d704aa84ec3f869c54e85a95bd4e3b1a5c750256a32bc944383c8278ae7cc11401a7ad8dc603e6f032dd3296f5680cfe893cd55d1ea38928d781dd5dbac9c2d1577d9516c08ade4a876b5548e7db28546ab0c572ab43040ba6ee37e950d57148a872d8048e403a62ab3f490958ab34bfdef04486e17d8aa36e533218ebde303834d81ec1a8a148d7a28d5326c2d55a79752068d91914b72bf6a8c79d755b70a4686c06f4f5c9b221035070815f3184964374bffb0db1e42d15c0d4b9e397003ae19a010f9407166adb046208620a7c4ab3170356331f024f7fec9b1aa742d29a492f6697489b5b103fb047543bcab1f9d07f3176f1a08d6c075239117e4740801859151972d764e76d8857439b79e8198a5a177eaab243c5cefa402ca6ff51dafa15898b80a69b46bfdca8d9be5cd7c62637c3b9e0f1ae27976eb0e1475d31e2417d56c50b78815c56b1e6f8f47c601722e167cfbc13a7064128d624ad9891cd6fae2f4a958e8b882e0597ed11290229cfc38bd36d44de76d9edada6331a90e2b192492448b014b5842e33cf4a67c76defeffe57cfacb27a443979ace513405a5fd41d1683c98fef0a8274f10c9990e79e5ffe19316e3341c2b1310dfa3b121de8b32cc89a65dd968bfdf94c85783d55756934d92b55ac1413bc0e5d7f94220a98ff92da395460b868274bf87910e507f7ebc02fc615379ae4c6c4e0455ac08d596e12a44d5e86b99c8419f77944c406befbd7296d882f4a93af35b7030262a6556d55bef040ca123279e7fd0963d636f48a0d47fe814db3b84f919b261a41b1d61bcd284f62994a70ef950cdf74a73abb70e76b59d9aec569a09e4b46bb20a5e34d45f105277d0260e21884f98af40d9da0d1d9a3220719e60095fc83e83113e9fd549a576807cb93ea04bf9072f077c7d88b076d4dc9f0f5aaed54a5b930a63ea9d771ec2fb2aea2f95ffba37df5ba9b4be9b983d182306d4474e9c64aa0d03d2da8486832ee59c26272e3e4517964dcb334ec8309d5dce6f672cd7cb4d1dfe23a0b1662f2a2126d655abcb11005d547cd84db87f1874035b2be896fcb10dac200685494586b40f77bfbc3f6fa1aa1e6d74f2bc3f0c1ad87588a69cfcd52c68bc3058744f79a791f3ddfd7d231cf2a8292e4787a4b1cd8138140b8190a51d27f0e604923d5779cd79a0e48a0eac76b303b51523f8f38f945867f3a4ec4e1ef197deed9172f0395761e3dbbe49462e7dbe56f6964ed0c6f7cd26d920138e2dae5eb7c3cde467402c23937609b609ae7d58b5a406177109a32777ae384fd62975ed677313915843557a0129f6c075201ce4921930d770ab8c57d3e87d48b42614eed9de5c1251793784bf9eb5b547a9a08435ef9fcaf109799ff84100721600ed6cac1e8cc74b6dc3f00f813b67fefb8ecc42d11ce6b5a149a44548e2cde01e13cbd2c684c2a1638ae5a6713bf1dfa52d31cc0d944d7768662e296dcad62e2314a38e3f8b728b8ca067751ebe7b8b64610e0d1aca2f5493f0e9b9b5e2f99c1971f27891e9a734bc8606d28f31a9878a0973c50d65fcaa7df1de53568538232caee0b84a22415e6e8bd6bd40d4980de89120e4f4c319af9eab1c75d84d59d1080b8dc7bc1109b8bb124b6ca7c92d3049d3572dbc47b860bf6838d0e0e9eb2417d4bdd49bd6cf79c49d8f0faaef90151f6065e5a4249a4961446a029fd3aca30b825ad17f2cac2b9d90fedb532853070f8e227e2c29df09f961b1d323aada9410e71d245af0c24e47ef2f8056ab50e1b28b65eee25314f8d126882811ec49b4247f8a94d6a02d6ac6c8dc189057c6a7ca0d11c627e7d380ececbfc6b8f5895b0e9e851f9c6c9fc00a8516fdeefc6317ead90b78f40404c45335f07701c9f089246433b0f08f60c08a949432b443fb55d88879c54aa8385a0fa6a7042fa380a51c26bec4cc68f26d190ca24efe73dc0b3204fffa3eeca2c14fbab4230dfc80ad021b9e8c113eb417ba22469ba46f1bd328ebba08144b4d6c79b0f5995787cfaa052c22344c552863bdc45d639393088ff16af3a12945374a9b5b82bd0e5caefb";

        bytes32[] memory inputs = new bytes32[](4);

        // msg
        inputs[0] = bytes32(0x000000000000000000000000000000003d2fc8e85afd38a3b23610fae5cbcbf4);
        inputs[1] = bytes32(0x0000000000000000000000000000000024ab7ba5c4b5df37241e921e4b2fb164);

        // root
        inputs[2] = bytes32(0x00000000000000000000000000000000ad19f07c487a8497b6e4f1e9296c3634);
        inputs[3] = bytes32(0x0000000000000000000000000000000048a3f47bf8d72c875d822fc36d306d4f);

        require(kusama.verify(proof, inputs), "Plonk: Invalid Proof");
    }

    function testPolkadotVerifier() public view {
        bytes
            memory proof = hex"1b88d5c915b235986c30661ab0219e85ae949554c065d91c1965d233dce3f80c28078b27f9489911d1b548a42bb5e229cb4565f08777085cbbcc93c2b220853626084834638a083efe27a7e185044dd865ad40bc1a88502e15eae0c1c7bb182f053ebd06564bfaa4c240b0f6477849e5a0892d9be0f83a9cd41d98dc9707e8381297f13f6cdb7407afcdd93ab9bf19bb645bce7db71f136a3e36ba5b85651cac0412756ab81542e43dba828e8393fed665e8e47a54309e196c56e6de7e98e86c135890f4fdf1f2164fdf0da0d9597e3a30ad3d386d695aa87ce252d512ba735f2e4752a5b04984efc85895d7eb6b373fab0e28f03ecee3ff58a7dcce8be5b74b176fb5f67990f9b217d1139bb74eab9f5289ceb4061152c99ff767682e58cc7521af9e57dd5dc04a6ba0976611489a4bf5f536d3d2ef53696e410dc8f79b9220003782832b17fcd4d025c6f5c82b58b1a1270975c664d68c0c75369d0cc6b255016f1cc2b0afc258ea4a5040fce289a06401ff161315b50cd1b7c5516aad63bf030d404474fa44dde3adc4461917371db356ffa360ee55f1d81dd769bbc0102b26f91148fcbde6eb06a9183f6c9a726e508a23828e29cdea6a192056c72b656b069a84d6d9e989110dc5b3947d9887dd38526a4336473747d7e5fb141cf6961c033de4f60b4a37d1fcf035e27234b11fd4517d2112d3336ec71311ffafc9b4441ef9f74659a2f5944046e034ae91c1eee0d74ec2233324ad3fdb4a95ae03362e2771c166b8d65c1288d66230ae075c3bc50f1344d0f0c907aacb268b448ba44c071ccbc81ba9b285d8f19a65af6c6335d1f2ca0adb358a0294e61f379812d7112b26ebc7bcba61196d24f75eff2588a34850f68f93062208c0f85a757411d6c110df4e6b29c9ac3563978d7b94647a8f219ddba5b5eaf2c44ae6172de081e914230c0b6d054a8f2735a55ed7bb6404236deffc6cd023ea5c64fa93670553d7e40635a8d58ab4e447ec67ac90b0e0595b0d1c5bd964a60c7d323402ec5dea4ae61154080026193b071413753624359837a9497eb2bb176a46fe7cd9a2f8112fcd24bf0b9993096ad6f8decdd374aa125b63ecc91feca931c6dd523e769f8bbcc41a00ac1c7d13ecb4eb02d78eac0e0b0c4dd1851d00baf44aa8a9460a10c925c31cdccda0488952d837ea84410ee0eff35e797846e1ae0a7db21f13869d1d16141401d697340cc6850b361118819cf764df8720ccf6c1396c2e2e37eaaf5f311d02d7da0f246fa2a01e99062c09fa1515e4ccb519852147d2c07e1c0fb94caf3e2bccf5b1ebe965f327ee98023a9c4ec5042c2c57d41f44faa896f720384d529a05e4a1858214cf284fdb5e543c77e4c8aca1cce5fde50c58dd00526673b0af3d21073e90ed7aaad6fb0aaf34b04ce2095189f39f945fb3b816088b7c1a92185b1297ddd6a11679f4e62400963c2ac480b4ce00e8fd3a10c98b0f424524745fed0501e785f9028690b8fead2dfc85b4845bf8ebf031d3a8954150c1a2a1f5fe0e1436f02a90eb042e6aad31e79d11cdbd5799ff434ca681de1e58997e993335582c59e125f8c798bd7b2fb9ee96ac054b5242c69d8e7df75b430a7b8fcd4bbf9d0af611b1f4094205dc8d30d03bc4c2ec40a3488fc1f5f1fea4e58cb370498eed124bbed10044b18211154b347c61da6c3e86346873ff07f8b00951bb233570e40a69f1cfe539dc369071b1395d2372db24a1f7fd0ac441365125b3d743520b640a2fc3c188c527e9c6489741a80fee33a3d91b28faa03837195550b9a329551322e8ff4553e19e8f2f092766bccd6575a947ee33966a37a73af50e990414066e199120c4bed3789147031f3b4002b4d2b4bb068992b2d47c30c2eb38d891c698182e18b70a0c4e3396c0e859f4d87fc8387f02b82edfd700103b68cd9b9a7a0b29ec97131571167f8a4b7c80f74f29fcdd24408af338de3a66b5dec11cfd5f171db805549b52c04b64a05c92926bd342fedab78f990543dea09e7db5c1e2e42402671d9fc0c760b4fc250e36c41563cc8b80467fde74164e5bc80cf6f572268100354594716d98334b9dfa77cc78fa954c7ccab26d2657e17d4f4837608a368d17c2f4ecb60c59b04fe45c38a8e21064bb667cbe6cce07489bb0b3a5307cc2b4220aeb6df04d2a57e9d3fe2235f67903915138f6adf67917e90ad0d865cc887227f8dd96eb2f7dcd09dfe8a31268bbe02072b560ab3f7d55cac5a0bb30d73034158118569e1982b3d5d40a85f7ee2c5757a8c5415bb723e24576cbabb55f006817548c0f837549d38eb957b356e50c30c4c995821f88125a22a01302a628bc1d1f92f08bb5cec2edc423597ea0b795520b898f393aaffd13877978f5329e8fce1b0921e086090582bed783057719d1f82dd53ea2a3b05ff0615990faf92ed4dc18b375f7e6019a24d958eeb43f2a13de08b6082a091e2288e1ed4726de1b1af6227a862ec838928a5cdd55e58eed7e1c3ecaf988e32d3800f0a682e8090db8611801323ef5d2bf1343127ebbb83a7848622d166aa837da2a296a9fb868759cec06f0745c1f3341ec1de8861ae12706eb0053cf37d6ed8828af4eb3808b24df140693b0d62a50023345f459c6ce83028a3caba222a716c73a7967b3ebd4c30ca21554e800bb71405d93243ae3466348c3bb6b00ee7c7ec20ecd07273b2f7f5ad102add92e432b3b7b0cbf0a055877da91a69a6f3d4d85cddcc0354f7a750831132ac64f8047299007c6ec1d67e744e19acca6306354fb4fbac2389698488618d623aa11ad48c67470eab8b85d1d231eb16ca10a0a510f80b24f13f1c68c8fc7cf13435f21d02b9ca40814c428462c23692e07107f3facaa73284d987322b6e0ec1cc96e6ed305a0df05971fc48f457d5fcbd1e13b3f9b45f459add462315dd78d053bfb11190669c6981546d94f73720a300a2aa107461423fd0c8c875f8c2da8035e3a3469ee8280171aa94357c06e125e5774231b74d200b69c08fe007d7be4";

        bytes32[] memory inputs = new bytes32[](4);

        // msg
        inputs[0] = bytes32(0x000000000000000000000000000000004e0285e184eb97ac2bc8bc72b6962a5c);
        inputs[1] = bytes32(0x0000000000000000000000000000000044b6b668b539f69ad0df0e4c05ccb849);

        // root
        inputs[2] = bytes32(0x000000000000000000000000000000005ce423369f4fcc70001c7a6b97399f77);
        inputs[3] = bytes32(0x0000000000000000000000000000000007b3a7f973e549500b6a7ea36709e1f4);

        require(polkadot.verify(proof, inputs), "Plonk: Invalid Proof");
    }
}