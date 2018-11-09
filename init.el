
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
;; (package-initialize)

(org-babel-load-file "~/.emacs.d/configuration.org")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(Linum-format "%7i ")
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-map (ansi-color-make-color-map) t)
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(ansi-term-color-vector
   [unspecified "#1e1e1e" "#cf6a4c" "#8f9d6a" "#f9ee98" "#7587a6" "#9b859d" "#7587a6" "#a7a7a7"] t)
 '(background-color "#202020")
 '(background-mode dark)
 '(beacon-color "#ec4780")
 '(compilation-message-face 'default)
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-color "#cccccc")
 '(custom-enabled-themes '(darktooth))
 '(custom-safe-themes
   '("ae3a3bed17b28585ce84266893fa3a4ef0d7d721451c887df5ef3e24a9efef8c" "45f7fec480eb3bdf364cbfcbc8d11ed0228bcf586ce7370fc30a6ce5770f181a" "6124d0d4205ae5ab279b35ac6bc6a180fbb5ca594616e1e9a22097024c0a8a99" "bf390ecb203806cbe351b966a88fc3036f3ff68cd2547db6ee3676e87327b311" "0d456bc74e0ffa4bf5b69b0b54dac5104512c324199e96fc9f3a1db10dfa31f3" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" "0574ebcddc942ac17a864d1cf1093de5b4f1ff5b0fc68ad1cfe1aff28f732ba2" "f71859eae71f7f795e734e6e7d178728525008a28c325913f564a42f74042c31" "7559ac0083d1f08a46f65920303f970898a3d80f05905d01e81d49bb4c7f9e39" "f984e2f9765a69f7394527b44eaa28052ff3664a505f9ec9c60c088ca4e9fc0b" "3be1f5387122b935a26e02795196bc90860c57a62940f768f138b02383d9a257" "e6a9337674f6c967311b939bb4f81aefb65a96908c3749f4dd8d4500f6d79242" "44961a9303c92926740fc4121829c32abca38ba3a91897a4eab2aa3b7634bed4" "1025e775a6d93981454680ddef169b6c51cc14cea8cb02d1872f9d3ce7a1da66" "264b639ee1d01cd81f6ab49a63b6354d902c7f7ed17ecf6e8c2bd5eb6d8ca09c" "f153e8ed90e4d79cf2c61560da2b3091d2f3b94da42aaddc707012be4608cf52" "6ee6f99dc6219b65f67e04149c79ea316ca4bcd769a9e904030d38908fd7ccf9" "06ffa2bf4e891580bfe6a5ce68d0909ed9c4278e5234ede6b3ba459ef35d9a1b" "726dd9a188747664fbbff1cd9ab3c29a3f690a7b861f6e6a1c64462b64b306de" "b79104a19e95f10698badb711bd4ab25565af3ffcf18fa7d3c7db4de7d759ac8" "0c387e27a3dd040b33c6711ff92e13bd952369a788eee97e4e4ea2335ac5528f" "d79ece4768dfc4bab488475b85c2a8748dcdc3690e11a922f6be5e526a20b485" "3448e3f5d01b39ce75962328a5310438e4a19e76e4b691c21c8e04ca318a5f62" "18a33cdb764e4baf99b23dcd5abdbf1249670d412c6d3a8092ae1a7b211613d5" "82b67c7e21c3b12be7b569af7c84ec0fb2d62105629a173e2479e1053cff94bd" "71b9b4c5d2a5126586d204e20c3fb4797f70d3d057a0c8b03bac2c51893007a2" "889a93331bc657c0f05a04b8665b78b3c94a12ca76771342cee27d6605abcd0e" "4486ade2acbf630e78658cd6235a5c6801090c2694469a2a2b4b0e12227a64b9" "3ff96689086ebc06f5f813a804f7114195b7c703ed2f19b51e10026723711e33" "bff3bf3adad639ec87c15766758ba3ae5492722fb77932ab5bfd9f232e911c2f" "d5cdb20cc31dfd701ee4ac5fed09d0e1898ee828c6036c4ee00fdc1e50eb7558" "aae95fc700f9f7ff70efbc294fc7367376aa9456356ae36ec234751040ed9168" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "55d31108a7dc4a268a1432cd60a7558824223684afecefa6fae327212c40f8d3" "28ec8ccf6190f6a73812df9bc91df54ce1d6132f18b4c8fcc85d45298569eb53" "88181ee5c706189948fa90e92cc84ff18b0007ce59fb878d626da8ba291c8943" "01ce486c3a7c8b37cf13f8c95ca4bb3c11413228b35676025fdf239e77019ea1" "8bb8a5b27776c39b3c7bf9da1e711ac794e4dc9d43e32a075d8aa72d6b5b3f59" "62408b3adcd05f887b6357e5bd9221652984a389e9b015f87bbc596aba62ba48" "bc40f613df8e0d8f31c5eb3380b61f587e1b5bc439212e03d4ea44b26b4f408a" "7ef8e5ca28fa635396e37569b75772d07157e93a044987538186e9048b301151" "7997e0765add4bfcdecb5ac3ee7f64bbb03018fb1ac5597c64ccca8c88b1262f" "cc60d17db31a53adf93ec6fad5a9cfff6e177664994a52346f81f62840fe8e23" "89531935dc9c4620a06579e525d5365f94639cb4c5c328bcabbd22bc39a862ed" "1bd383f15ee7345c270b82c5e41554754b2a56e14c2ddaa2127c3590d0303b95" "2cf7f9d1d8e4d735ba53facdc3c6f3271086b6906c4165b12e4fd8e3865469a6" "7f5837a7dbf54c2b7c41d94f5eb1373cf63274847d1971037faa24d7f2231eea" "f782ed87369a7d568cee28d14922aa6d639f49dd676124d817dd82c8208985d0" "1012cf33e0152751078e9529a915da52ec742dabf22143530e86451ae8378c1a" "60e09d2e58343186a59d9ed52a9b13d822a174b33f20bdc1d4abb86e6b17f45b" "0e0c37ee89f0213ce31205e9ae8bce1f93c9bcd81b1bcda0233061bb02c357a8" "086970da368bb95e42fd4ddac3149e84ce5f165e90dfc6ce6baceae30cf581ef" "af23b37b52abc61b78373a47767df9e35c42c63d80be6c0f2d2ed8fc6175d50f" "308eb04bfba22cd158a0927362d3a138653755eb7e82d626088df845c77b59c6" "b825687675ea2644d1c017f246077cdd725d4326a1c11d84871308573d019f67" "47744f6c8133824bdd104acc4280dbed4b34b85faa05ac2600f716b0226fb3f6" "cedd3b4295ac0a41ef48376e16b4745c25fa8e7b4f706173083f16d5792bb379" "907bacbe973888e44b057b32439bd51795d38034dceb71876958ffccc808a010" "4605ce6e798971d215b01844ea39e993d683aa2fa118e02e263539298f9f3921" "ccde32eaf485eb7579412cd756d10b0f20f89bff07696972d7ee46cb2e10b89d" "52741e091463c2217af9327e2b2d74d0df861ecc3ad6131b6cbcb8d76b7a4d3d" "5f99055206ed6a1b9958f7dd5eaa9f884f8b5a8678bd0c5e2622aced5c4a1be7" "5228973368d5a1ac0cbea0564d0cd724937f52cc06a8fd81fc65a4fa72ff837b" "8578750fb94f908249a98dc14c3847d11863196f54de87a037b1374f2ae1f534" "159aab698b9d3fb03b495ce3af2d298f4c6dfdf21b53c27cd7f472ee5a1a1de3" "9955cc54cc64d6c051616dce7050c1ba34efc2b0613d89a70a68328f34e22c8f" "e04cdda50908b116031c09d7b316fff5d8f9bc6e2126411c9316969461bfd8b6" "16dd114a84d0aeccc5ad6fd64752a11ea2e841e3853234f19dc02a7b91f5d661" "2a998a3b66a0a6068bcb8b53cd3b519d230dd1527b07232e54c8b9d84061d48d" "b8929cff63ffc759e436b0f0575d15a8ad7658932f4b2c99415f3dde09b32e97" "9be1d34d961a40d94ef94d0d08a364c3d27201f3c98c9d38e36f10588469ea57" "93268bf5365f22c685550a3cbb8c687a1211e827edc76ce7be3c4bd764054bad" "1263771faf6967879c3ab8b577c6c31020222ac6d3bac31f331a74275385a452" "36746ad57649893434c443567cb3831828df33232a7790d232df6f5908263692" "12670281275ea7c1b42d0a548a584e23b9c4e1d2dabb747fd5e2d692bcd0d39b" "8cf1002c7f805360115700144c0031b9cfa4d03edc6a0f38718cef7b7cabe382" "fec45178b55ad0258c5f68f61c9c8fd1a47d73b08fb7a51c15558d42c376083d" "4bf5c18667c48f2979ead0f0bdaaa12c2b52014a6abaa38558a207a65caeb8ad" "dd4628d6c2d1f84ad7908c859797b24cc6239dfe7d71b3363ccdd2b88963f336" "9c4acf7b5801f25501f0db26ac3eee3dc263ed51afd01f9dcfda706a15234733" "85d609b07346d3220e7da1e0b87f66d11b2eeddad945cac775e80d2c1adb0066" "2f0a552a9d14fe8ddaaacdb7b82a0eee1ea1f7f5d0850789915e5b04a1b9669f" "8be07a2c1b3a7300860c7a65c0ad148be6d127671be04d3d2120f1ac541ac103" "a85e40c7d2df4a5e993742929dfd903899b66a667547f740872797198778d7b5" "3de3f36a398d2c8a4796360bfce1fa515292e9f76b655bb9a377289a6a80a132" "aded4ec996e438a5e002439d58f09610b330bbc18f580c83ebaba026bbef6c82" "0c3b1358ea01895e56d1c0193f72559449462e5952bded28c81a8e09b53f103f" "25c242b3c808f38b0389879b9cba325fb1fa81a0a5e61ac7cae8da9a32e2811b" "50b64810ed1c36dfb72d74a61ae08e5869edc554102f20e078b21f84209c08d1" "ffe80c88e3129b2cddadaaf78263a7f896d833a77c96349052ad5b7753c0c5a5" "eae831de756bb480240479794e85f1da0789c6f2f7746e5cc999370bbc8d9c8a" "df21cdadd3f0648e3106338649d9fea510121807c907e2fd15565dde6409d6e9" "cbd8e65d2452dfaed789f79c92d230aa8bdf413601b261dbb1291fb88605110c" "6145e62774a589c074a31a05dfa5efdf8789cf869104e905956f0cbd7eda9d0e" "5a7830712d709a4fc128a7998b7fa963f37e960fd2e8aa75c76f692b36e6cf3c" "78c1c89192e172436dbf892bd90562bc89e2cc3811b5f9506226e735a953a9c6" "c968804189e0fc963c641f5c9ad64bca431d41af2fb7e1d01a2a6666376f819c" "85e6bb2425cbfeed2f2b367246ad11a62fb0f6d525c157038a0d0eaaabc1bfee" "d9850d120be9d94dd7ae69053630e89af8767c36b131a3aa7b06f14007a24656" "5b8eccff13d79fc9b26c544ee20e1b0c499587d6c4bfc38cabe34beaf2c2fc77" "3f67aee8f8d8eedad7f547a346803be4cc47c420602e19d88bdcccc66dba033b" "8543b328ed10bc7c16a8a35c523699befac0de00753824d7e90148bca583f986" "73ad471d5ae9355a7fa28675014ae45a0589c14492f52c32a4e9b393fcc333fd" "aea30125ef2e48831f46695418677b9d676c3babf43959c8e978c0ad672a7329" "6271fc9740379f8e2722f1510d481c1df1fcc43e48fa6641a5c19e954c21cc8f" "ad16a1bf1fd86bfbedae4b32c269b19f8d20d416bd52a87cd50e355bf13c2f23" "d83e34e28680f2ed99fe50fea79f441ca3fddd90167a72b796455e791c90dc49" "100eeb65d336e3d8f419c0f09170f9fd30f688849c5e60a801a1e6addd8216cb" "fee4e306d9070a55dce4d8e9d92d28bd9efe92625d2ba9d4d654fc9cd8113b7f" "50d07ab55e2b5322b2a8b13bc15ddf76d7f5985268833762c500a90e2a09e7aa" "4feee83c4fbbe8b827650d0f9af4ba7da903a5d117d849a3ccee88262805f40d" "6daa09c8c2c68de3ff1b83694115231faa7e650fdbb668bc76275f0f2ce2a437" "4a91a64af7ff1182ed04f7453bb5a4b0c3d82148d27db699df89a5f1d449e2a4" "3eb2b5607b41ad8a6da75fe04d5f92a46d1b9a95a202e3f5369e2cdefb7aac5c" "24685b60b28b071596be6ba715f92ed5e51856fb87114cbdd67775301acf090d" "f66edc956ad84fd071604c402c8582549d8d3823ef21b578e93771768ef8adff" "2d16a5d1921feb826a6a9b344837c1ab3910f9636022fa6dc1577948694b7d84" "f23a961abba42fc5d75bf94c46b5688c52683c02b3a81313dd0738b4d48afd1d" "5673c365c8679addfb44f3d91d6b880c3266766b605c99f2d9b00745202e75f6" "8d3c5e9ba9dcd05020ccebb3cc615e40e7623b267b69314bdb70fe473dd9c7a8" "235dc2dd925f492667232ead701c450d5c6fce978d5676e54ef9ca6dd37f6ceb" "ef04dd1e33f7cbd5aa3187981b18652b8d5ac9e680997b45dc5d00443e6a46e3" "87d46d0ad89557c616d04bef34afd191234992c4eb955ff3c60c6aa3afc2e5cc" "986e7e8e428decd5df9e8548a3f3b42afc8176ce6171e69658ae083f3c06211c" "f869a5d068a371532c82027cdf1feefdc5768757c78c48a7e0177e90651503ad" "527df6ab42b54d2e5f4eec8b091bd79b2fa9a1da38f5addd297d1c91aa19b616" "d9dab332207600e49400d798ed05f38372ec32132b3f7d2ba697e59088021555" "250268d5c0b4877cc2b7c439687f8145a2c85a48981f7070a72c7f47a2d2dc13" "d96587ec2c7bf278269b8ec2b800c7d9af9e22d816827639b332b0e613314dfd" "92192ea8f0bf04421f5b245d906701abaa7bb3b0d2b3b14fca2ee5ebb1da38d8" "70f5a47eb08fe7a4ccb88e2550d377ce085fedce81cf30c56e3077f95a2909f2" "f08f5c0e451eda067664053c27284b59ace22a4ab3d7f2392be925b5494bc159" "9d7e517b49068e9fef941fe4083ad3d2a4b040895dca5175b84be48739689707" "9e147cee63e1a2a6b16021e0645bc66c633c42b849e78b8e295df4b7fe55c56a" "748d0e2ffdaf95015a539dcc95ab888283284ad7b076963760422cbe5e21903a" "a919383f8ebc3c15fc6fd564efe651ed3d3f251feb597d3bb249f61f381fffdf" "2bed8550c6f0a5ce635373176d5f0e079fb4fb5919005bfa743c71b5eed29d81" "4980e5ddaae985e4bae004280bd343721271ebb28f22b3e3b2427443e748cd3f" "4a51697271e3fd202d3da73bad80d0ec5cab7e0bb1db30f79fd1d6dd6a7812dc" "8062d7fd259d3232d69b38db3b15d4ac44a70bf620cbc5b3926a6e16c74d6a5a" "1e67765ecb4e53df20a96fb708a8601f6d7c8f02edb09d16c838e465ebe7f51b" "5cd0afd0ca01648e1fff95a7a7f8abec925bd654915153fb39ee8e72a8b56a1f" "c3e6b52caa77cb09c049d3c973798bc64b5c43cc437d449eacf35b3e776bf85c" "5a0eee1070a4fc64268f008a4c7abfda32d912118e080e18c3c865ef864d1bea" "7bef2d39bac784626f1635bd83693fae091f04ccac6b362e0405abf16a32230c" "722e1cd0dad601ec6567c32520126e42a8031cd72e05d2221ff511b58545b108" "cea3ec09c821b7eaf235882e6555c3ffa2fd23de92459751e18f26ad035d2142" "3380a2766cf0590d50d6366c5a91e976bdc3c413df963a0ab9952314b4577299" "e1498b2416922aa561076edc5c9b0ad7b34d8ff849f335c13364c8f4276904f0" "5a39d2a29906ab273f7900a2ae843e9aa29ed5d205873e1199af4c9ec921aaab" "840db7f67ce92c39deb38f38fbc5a990b8f89b0f47b77b96d98e4bf400ee590a" "a62f0662e6aa7b05d0b4493a8e245ab31492765561b08192df61c9d1c7e1ddee" "04790c9929eacf32d508b84d34e80ad2ee233f13f17767190531b8b350b9ef22" "f5f3a6fb685fe5e1587bafd07db3bf25a0655f3ddc579ed9d331b6b19827ea46" "542e6fee85eea8e47243a5647358c344111aa9c04510394720a3108803c8ddd1" "ffac21ab88a0f4603969a24b96993bd73a13fe0989db7ed76d94c305891fad64" "45a8b89e995faa5c69aa79920acff5d7cb14978fbf140cdd53621b09d782edcf" "41eb3fe4c6b80c7ad156a8c52e9dd6093e8856c7bbf2b92cc3a4108ceb385087" "fc7fd2530b82a722ceb5b211f9e732d15ad41d5306c011253a0ba43aaf93dccc" "3e34e9bf818cf6301fcabae2005bba8e61b1caba97d95509c8da78cff5f2ec8e" "cabc32838ccceea97404f6fcb7ce791c6e38491fd19baa0fcfb336dcc5f6e23c" "1d079355c721b517fdc9891f0fda927fe3f87288f2e6cc3b8566655a64ca5453" "760ce657e710a77bcf6df51d97e51aae2ee7db1fba21bbad07aab0fa0f42f834" "34ed3e2fa4a1cb2ce7400c7f1a6c8f12931d8021435bad841fdc1192bd1cc7da" "b3bcf1b12ef2a7606c7697d71b934ca0bdd495d52f901e73ce008c4c9825a3aa" "9c974d916c00ef8ce269666bbd9a4a6cc2b97cd73a5ccc6cdca439cfc54d9d17" "77bd459212c0176bdf63c1904c4ba20fce015f730f0343776a1a14432de80990" "c1fb68aa00235766461c7e31ecfc759aa2dd905899ae6d95097061faeb72f9ee" "7feeed063855b06836e0262f77f5c6d3f415159a98a9676d549bfeb6c49637c4" "715fdcd387af7e963abca6765bd7c2b37e76154e65401cd8d86104f22dd88404" "c158c2a9f1c5fcf27598d313eec9f9dceadf131ccd10abc6448004b14984767c" "4d80487632a0a5a72737a7fc690f1f30266668211b17ba836602a8da890c2118" "76e57e75ece4cef057baa7be711b4fbba4d4470aa41780ff992c765d26a41867" "66881e95c0eda61d34aa7f08ebacf03319d37fe202d68ecf6a1dbfd49d664bc3" "ba9be9caf9aa91eb34cf11ad9e8c61e54db68d2d474f99a52ba7e87097fa27f5" "4d98eb21cd7aacc0e7e5db895dba4c99a51b74c0a56eea63060a87f87b807461" "47ac4658d9e085ace37e7d967ea1c7d5f3dfeb2f720e5dec420034118ba84e17" "0b7ee9bac81558c11000b65100f29b09488ff9182c083fb303c7f13fd0ec8d2b" "f9574c9ede3f64d57b3aa9b9cef621d54e2e503f4d75d8613cbcc4ca1c962c21" "1db337246ebc9c083be0d728f8d20913a0f46edc0a00277746ba411c149d7fe5" "4af6fad34321a1ce23d8ab3486c662de122e8c6c1de97baed3aa4c10fe55e060" "ed1d4f68fdb738bc5c3e650fb92f75f811c596e73ff01a82caa206b75ea0ba7d" "5dd70fe6b64f3278d5b9ad3ff8f709b5e15cd153b0377d840c5281c352e8ccce" "ac5584b12254623419499c3a7a5388031a29be85a15fdef9b94df2292d3e2cbb" "a3132bd39a977ddde4c002f8bd0ef181414c3fbe9228e3643b999491192680ad" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" "d606ac41cdd7054841941455c0151c54f8bff7e4e050255dbd4ae4d60ab640c1" "ff7625ad8aa2615eae96d6b4469fcc7d3d20b2e1ebc63b761a349bebbb9d23cb" "4f2ede02b3324c2f788f4e0bad77f7ebc1874eff7971d2a2c9b9724a50fb3f65" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "82d2cac368ccdec2fcc7573f24c3f79654b78bf133096f9b40c20d97ec1d8016" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "228c0559991fb3af427a6fa4f3a3ad51f905e20f481c697c6ca978c5683ebf43" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "d21135150e22e58f8c656ec04530872831baebf5a1c3688030d119c114233c24" "d6db7498e2615025c419364764d5e9b09438dfe25b044b44e1f336501acd4f5b" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "946e871c780b159c4bb9f580537e5d2f7dba1411143194447604ecbaf01bd90c" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "9316d66f16f4c3ae9fca6c79efc5712b99a6edaf4f984ecc8ae918354fa8f03a" "4083a1c6d3e41ac37720b27d2490e6b8bd5cf0a9fb2faeeb9e9a8546b0ca82e0" default))
 '(evil-emacs-state-cursor '("#E57373" hbar) t)
 '(evil-insert-state-cursor '("#E57373" bar) t)
 '(evil-normal-state-cursor '("#FFEE58" box) t)
 '(evil-visual-state-cursor '("#C5E1A5" box) t)
 '(fci-rule-character-color "#202020")
 '(fci-rule-color "#073642")
 '(foreground-color "#cccccc")
 '(fringe-mode 6 nil (fringe))
 '(highlight-changes-colors '("#d33682" "#6c71c4"))
 '(highlight-indent-guides-auto-enabled nil)
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    '("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2")))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   '(("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100)))
 '(hl-bg-colors
   '("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00"))
 '(hl-fg-colors
   '("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36"))
 '(hl-paren-background-colors
   '("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC" "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00"))
 '(hl-paren-colors '("#B9F" "#B8D" "#B7B" "#B69" "#B57" "#B45" "#B33" "#B11"))
 '(ibuffer-deletion-face 'diredp-deletion-file-name)
 '(ibuffer-marked-face 'diredp-flag-mark)
 '(inhibit-startup-screen t)
 '(linum-format " %7d ")
 '(magit-diff-use-overlays nil)
 '(main-line-color1 "#1E1E1E")
 '(main-line-color2 "#111111")
 '(main-line-separator-style 'chamfer)
 '(nrepl-message-colors
   '("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4"))
 '(org-agenda-files '("~/org/agendas/general.org" "~/org/agendas/thesis.org"))
 '(org-capture-templates
   '(("s" "Current Spotify Song" entry
      (file+datetree "~/org/spotify.org")
      "* %(org-spotify-current)" :clock-resume t :immediate-finish t)
     ("w" "Current Chrome Link" entry
      (file+datetree "~/org/websites.org")
      "* [%<%I:%M %p>] %(grab-mac-link 'chrome 'org) %^g" :clock-resume t)
     ("m" "Templates for meetings")
     ("mm" "Meeting" entry
      (file "~/org/refile.org")
      "* Meeting with %? :meeting:" :clock-in t :clock-resume t)
     ("mc" "Capstone meeting." entry
      (file+olp "~/org/agendas/capstone.org" "Meetings")
      "* %T :meeting:
** Attending
** Notes
%?" :clock-resume t)
     ("mb" "Thesis meeting with Bazzi" entry
      (file+olp "~/org/agendas/thesis.org" "Committee Meetings" "Bazzi")
      "* %T :meeting:
" :clock-resume t)
     ("md" "Thesis meeting with Doupé" entry
      (file+olp "~/org/agendas/thesis.org" "Committee Meetings" "Doupé")
      "* %T :meeting:
" :clock-resume t)))
 '(org-modules
   '(org-bbdb org-bibtex org-docview org-gnus org-info org-irc org-mhe org-rmail org-w3m org-mac-link))
 '(package-selected-packages
   '(unfill focus dockerfile-mode docker-compose-mode yaml-mode fstar-mode solidity-mode web-server evil-indent-textobject org-bullets orgit org clang-format floobits rudel doremi osc grab-mac-link pacmacs forth-mode go-autocomplete ac-slime slime haskell-mode column-marker bubbleberry-theme caroline-theme boron-theme oceanic-theme occidental-theme obsidian-theme idea-darkula-theme firecode-theme liso-theme darkmine-theme distinguished-theme darkokai-theme darkane-theme dakrone-theme zen-and-art-theme soothe-theme soft-charcoal-theme sourcerer-theme reykjavik-theme phoenix-dark-pink-theme afternoon-theme autumn-light-theme spacegray-theme pastelmac-theme pastels-on-dark-theme phoenix-dark-mono-theme plan9-theme inkpot-theme danneskjold-theme cherry-blossom-theme calmer-forest-theme company auto-complete-exuberant-ctags cider tronesque-theme darkburn-theme purple-haze-theme quasi-monochrome-theme tao-theme darktooth-theme gruvbox-theme aggressive-indent lispyville rainbow-delimiters cyberpunk-theme clojure-mode projectile sexy-monochrome-theme paganini-theme nord-theme noctilux-theme niflheim-theme nimbus-theme metalheart-theme mbo70s-theme madhat2r-theme lavender-theme kosmos-theme firebelly-theme forest-blue-theme gotham-theme greymatters-theme green-screen-theme green-phosphor-theme hamburg-theme hemisu-theme kaolin-theme base16-theme apropospriate-theme anti-zenburn-theme abyss-theme foggy-night-theme flatland-black-theme dark-krystal-theme colonoscopy-theme challenger-deep-theme gandalf-theme ample-zen-theme dracula-theme heroku-theme color-theme-sanityinc-tomorrow flymake-ruby inf-ruby web-mode writegood-mode writeroom-mode adaptive-wrap evil-numbers flycheck-rust goto-last-change linum-relative perl6-mode matlab-mode htmlize babel evil-surround use-package solarized-theme seq racer powerline magit let-alist helm evil-visual-mark-mode evil-leader evil-commentary esup cargo))
 '(pdf-view-midnight-colors '("#232333" . "#c7c7c7"))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(powerline-color1 "#1E1E1E")
 '(powerline-color2 "#111111")
 '(projectile-mode t nil (projectile))
 '(safe-local-variable-values
   '((org-todo-keyword-faces
      ("TODO" . "#EF5350")
      ("WIP" . "#42A5F5")
      ("WAIT" . "#BA68C8")
      ("DONE" . "#9CCC65"))
     (org-todo-keyword-faces
      ("TODO" . "#EF5350")
      ("WIP" . "#42A5F5")
      ("WAIT" . "#AB47BC")
      ("DONE" . "#9CCC65"))
     (org-todo-keyword-faces
      ("TODO" . "#EF5350")
      ("WIP " . "#42A5F5")
      ("DONE" . "#9CCC65"))
     (org-todo-keyword-faces
      ("TODO" . "#EF5350")
      ("WIP" . "#42A5F5")
      ("DONE" . "#9CCC65"))
     (org-todo-keyword-faces
      ("TODO" . "#42A5F5")
      ("WIP" . "#42A5F5")
      ("DONE" . "#42A5F5"))
     (org-todo-keyword-faces
      ("TODO" . "red")
      ("WIP" . "#42A5F5")
      ("DONE" . "green"))))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
 '(tabbar-background-color "#353535")
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background nil)
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   '((20 . "#dc322f")
     (40 . "#c85d17")
     (60 . "#be730b")
     (80 . "#b58900")
     (100 . "#a58e00")
     (120 . "#9d9100")
     (140 . "#959300")
     (160 . "#8d9600")
     (180 . "#859900")
     (200 . "#669b32")
     (220 . "#579d4c")
     (240 . "#489e65")
     (260 . "#399f7e")
     (280 . "#2aa198")
     (300 . "#2898af")
     (320 . "#2793ba")
     (340 . "#268fc6")
     (360 . "#268bd2")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   '(unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83"))
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(font-lock-comment-face ((t (:slant italic :weight light))))
 '(font-lock-string-face ((t (:slant italic :weight bold))))
 '(hl-line ((t (:background "IndianRed4"))))
 '(org-ellipsis ((t (:foreground "IndianRed2" :underline nil))))
 '(org-link ((t (:foreground "cornflower blue" :underline nil :slant normal))))
 '(org-tag ((t (:foreground "IndianRed1" :slant italic :weight light)))))
