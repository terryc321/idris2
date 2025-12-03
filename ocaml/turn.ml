
(* ocaml *)

(* 1 + 2 *)

type turn = Left of int |
            Right of int

let input = [Left 3; Right 49; Right 11; Left 18; Right 41; Left 49; Right 40;
Right 38; Right 8; Left 8; Left 14; Left 45; Right 38; Left 46; Right
45; Right 37; Right 24; Left 43; Left 45; Left 44; Left 2; Right 22;
Right 8; Right 50; Right 49; Left 25; Left 36; Right 44; Left 23; Left
22; Left 9; Right 17; Left 37; Left 44; Left 32; Left 22; Right 26;
Right 32; Right 13; Right 20; Left 23; Right 35; Left 7; Left 35; Left
28; Left 47; Left 6; Left 1; Right 38; Right 17; Right 12; Right 88;
Right 92; Left 89; Left 41; Left 76; Left 81; Right 63; Left 92; Left
69; Right 55; Left 42; Right 39; Right 70; Right 64; Left 31; Left 63;
Left 37; Left 68; Right 68; Right 62; Left 24; Left 38; Right 9; Left
5; Left 4; Right 9; Right 91; Right 93; Left 34; Right 10; Right 31;
Left 2; Left 98; Left 48; Left 2; Left 72; Left 78; Left 93; Right 93;
Left 5; Left 38; Left 84; Left 4; Left 69; Right 44; Left 78; Right
34; Right 24; Left 1; Left 37; Left 135; Right 44; Right 639; Right
19; Left 53; Left 617; Right 17; Left 4; Right 4; Right 1; Right 179;
Left 80; Left 707; Left 46; Left 29; Right 56; Left 74; Left 17; Left
983; Left 98; Right 98; Left 59; Right 65; Right 94; Right 13; Right
16; Right 79; Right 57; Left 65; Right 2; Left 502; Right 40; Left 63;
Left 37; Left 81; Right 41; Left 176; Left 78; Right 531; Right 523;
Left 76; Left 124; Right 8; Left 8; Right 37; Left 28; Left 43; Left
58; Right 75; Right 254; Left 737; Right 14; Right 29; Right 59; Right
98; Left 83; Right 85; Left 67; Right 65; Right 23; Left 95; Left 80;
Left 43; Right 95; Right 45; Right 55; Right 65; Right 43; Right 57;
Left 65; Right 62; Left 62; Left 89; Right 82; Left 93; Left 44; Right
44; Right 82; Right 5; Left 20; Left 67; Left 39; Left 61; Right 248;
Left 69; Right 614; Right 76; Left 69; Left 73; Right 73; Right 75;
Left 9; Left 66; Left 74; Right 62; Left 50; Left 94; Left 66; Right
96; Left 727; Left 71; Left 371; Left 515; Left 90; Left 946; Right
94; Left 31; Right 83; Right 23; Left 67; Right 44; Right 65; Left
565; Right 56; Left 990; Right 223; Left 489; Right 12; Right 75; Left
56; Right 69; Right 52; Right 21; Left 23; Left 71; Left 12; Right 78;
Right 55; Left 25; Left 805; Left 25; Left 725; Left 420; Left 35;
Right 49; Left 14; Right 44; Right 5; Right 8; Right 11; Right 32;
Right 32; Right 3; Left 69; Right 32; Right 902; Left 1; Right 1;
Right 43; Left 62; Right 319; Left 61; Right 52; Left 191; Left 72;
Left 95; Right 67; Right 73; Left 91; Right 706; Right 12; Left 56;
Left 59; Left 685; Left 83; Right 83; Right 15; Left 60; Left 56;
Right 1; Right 46; Left 79; Left 77; Right 10; Right 86; Right 846;
Right 568; Left 76; Right 76; Right 45; Right 55; Left 19; Right 67;
Right 81; Left 129; Right 54; Left 16; Right 46; Right 81; Left 62;
Left 61; Left 942; Right 57; Right 43; Right 6; Left 18; Right 795;
Left 786; Right 21; Left 923; Left 405; Left 75; Right 98; Left 32;
Left 778; Right 497; Left 86; Right 71; Right 94; Right 56; Left 95;
Right 53; Right 9; Left 91; Right 25; Left 536; Right 72; Left 72;
Left 88; Left 732; Right 28; Left 8; Right 577; Left 829; Left 76;
Right 76; Left 48; Left 22; Left 678; Right 679; Right 21; Left 34;
Right 63; Right 88; Right 207; Right 76; Left 59; Right 79; Right 70;
Right 1; Left 74; Left 24; Left 190; Left 89; Left 56; Right 42; Right
25; Left 81; Left 93; Right 893; Left 43; Right 64; Left 606; Right
70; Left 17; Left 60; Right 533; Left 21; Left 74; Right 337; Right
72; Left 75; Left 24; Left 85; Left 62; Right 94; Right 753; Left 657;
Left 43; Left 119; Left 57; Left 695; Left 29; Left 23; Right 2; Right
483; Left 51; Left 74; Left 637; Right 33; Right 67; Right 68; Left
21; Left 523; Right 576; Left 56; Left 44; Left 73; Left 73; Left 54;
Right 54; Right 946; Right 24; Left 24; Left 194; Left 27; Left 72;
Right 88; Left 95; Right 64; Left 28; Right 7; Right 32; Left 13;
Right 38; Right 48; Right 401; Right 84; Left 89; Right 59; Left 26;
Left 55; Right 78; Left 330; Left 295; Left 48; Right 28; Right 56;
Right 89; Left 47; Right 32; Right 17; Left 81; Left 21; Right 575;
Left 69; Left 6; Right 88; Left 88; Right 227; Left 67; Left 590; Left
15; Right 37; Right 19; Right 999; Left 85; Left 45; Right 546; Right
74; Left 26; Left 74; Right 6; Left 776; Right 70; Left 41; Left 76;
Right 66; Left 49; Left 23; Right 399; Right 67; Right 17; Left 95;
Left 23; Right 58; Right 748; Left 48; Left 65; Left 35; Right 35;
Right 65; Left 30; Left 70; Left 47; Left 953; Left 94; Left 56; Right
268; Right 82; Left 30; Right 21; Left 12; Left 42; Right 543; Left
80; Right 62; Right 18; Left 11; Right 31; Right 21; Left 7; Right 12;
Right 10; Right 21; Right 384; Right 59; Left 45; Right 95; Left 250;
Left 18; Right 711; Right 7; Right 97; Left 97; Right 4; Left 4; Left
80; Left 66; Left 54; Left 69; Right 545; Right 95; Left 8; Left 63;
Right 64; Right 36; Right 29; Left 63; Right 25; Left 5; Left 34;
Right 48; Left 65; Left 35; Right 94; Left 29; Left 67; Right 2; Left
79; Right 96; Right 74; Left 91; Left 37; Right 40; Left 3; Right 96;
Right 4; Right 349; Right 51; Left 9; Right 99; Right 10; Left 461;
Right 65; Right 81; Left 17; Right 37; Right 95; Left 53; Right 53;
Left 55; Left 45; Right 93; Left 19; Right 50; Right 14; Right 93;
Right 18; Left 949; Right 204; Left 89; Right 70; Left 503; Right 18;
Right 37; Left 37; Left 46; Left 94; Right 8; Left 45; Right 96; Right
74; Left 496; Left 62; Left 40; Left 24; Left 71; Right 69; Right 213;
Left 647; Right 391; Left 30; Right 59; Right 19; Left 24; Left 8;
Left 36; Left 870; Right 74; Left 108; Left 90; Right 158; Right 60;
Right 47; Left 677; Left 55; Right 653; Left 16; Right 18; Right 15;
Right 85; Left 78; Right 978; Right 74; Right 26; Right 26; Right 74;
Right 97; Left 44; Left 1; Right 48; Right 66; Left 66; Left 63; Right
868; Left 34; Left 71; Left 81; Right 181; Right 26; Left 16; Right
60; Left 70; Left 25; Right 99; Right 227; Left 42; Left 42; Left 33;
Right 50; Right 94; Left 859; Right 431; Left 313; Right 64; Right 69;
Right 80; Right 69; Right 31; Left 10; Right 10; Left 94; Left 1;
Right 440; Left 45; Left 66; Left 952; Right 14; Right 439; Right 65;
Right 22; Right 31; Left 219; Left 68; Left 39; Right 91; Left 18;
Left 87; Right 8; Right 92; Right 14; Right 60; Right 94; Right 3;
Right 916; Right 68; Right 62; Right 70; Right 19; Right 66; Left 85;
Right 5; Left 604; Right 64; Left 6; Right 52; Right 95; Right 78;
Left 84; Right 2; Right 98; Left 94; Right 194; Left 71; Right 310;
Right 844; Left 62; Left 42; Right 13; Left 1; Right 615; Left 6;
Right 438; Left 38; Right 142; Right 66; Left 2; Left 58; Right 66;
Left 89; Right 75; Right 54; Left 54; Left 88; Right 735; Left 32;
Left 15; Right 553; Right 476; Right 95; Left 572; Left 29; Left 23;
Right 11; Left 54; Left 57; Left 87; Right 42; Right 30; Left 85; Left
773; Left 19; Right 538; Right 54; Right 580; Right 61; Left 6; Right
65; Left 1; Left 179; Right 84; Left 39; Right 24; Left 38; Left 59;
Left 40; Left 75; Left 71; Left 506; Right 6; Right 29; Right 4; Right
861; Left 788; Left 12; Right 46; Right 75; Left 820; Left 1; Left 60;
Right 60; Left 51; Left 58; Left 91; Right 80; Right 47; Right 42;
Left 6; Right 87; Right 379; Left 80; Right 51; Right 49; Right 41;
Right 96; Left 81; Left 5; Left 78; Left 27; Right 905; Left 39; Right
49; Right 890; Left 85; Right 485; Left 82; Left 481; Left 362; Right
95; Left 14; Left 71; Right 253; Right 24; Left 17; Right 18; Left 63;
Left 96; Left 60; Right 56; Right 73; Left 73; Right 497; Left 16;
Right 63; Left 44; Left 454; Right 421; Right 81; Left 664; Left 12;
Right 28; Right 69; Right 31; Left 805; Left 33; Left 46; Right 84;
Left 281; Left 5; Left 553; Left 12; Right 76; Left 520; Left 565;
Left 650; Right 374; Left 76; Right 12; Right 141; Right 59; Right 96;
Right 91; Right 27; Left 23; Left 91; Right 5; Left 26; Left 20; Left
613; Right 61; Left 33; Right 26; Right 16; Right 84; Right 76; Right
52; Right 878; Right 43; Right 10; Left 847; Left 758; Right 43; Left
20; Left 47; Left 10; Right 80; Right 75; Right 25; Left 84; Right 84;
Right 88; Left 838; Left 250; Left 505; Right 40; Right 9; Left 33;
Left 63; Left 553; Left 87; Left 88; Left 41; Right 21; Right 443;
Left 435; Left 58; Right 86; Left 75; Right 74; Left 97; Left 38;
Right 80; Left 91; Right 511; Right 204; Right 96; Right 167; Right
33; Left 69; Left 46; Left 85; Left 88; Right 88; Left 945; Right 91;
Right 54; Left 774; Right 458; Right 857; Right 506; Left 47; Left 40;
Left 478; Left 82; Right 46; Left 46; Right 51; Left 51; Left 50;
Right 50; Left 74; Left 26; Right 12; Right 88; Left 72; Left 883;
Right 55; Left 936; Left 911; Left 53; Left 76; Left 92; Right 966;
Right 69; Right 60; Right 973; Left 19; Left 49; Left 464; Right 310;
Left 882; Right 3; Right 62; Left 25; Left 34; Left 102; Left 27;
Right 27; Right 788; Left 788; Left 90; Right 95; Left 5; Right 605;
Right 9; Right 81; Left 95; Left 74; Left 626; Right 67; Right 33;
Right 75; Left 44; Left 44; Left 87; Right 30; Left 14; Right 32;
Right 52; Right 37; Right 204; Left 69; Right 27; Right 52; Left 38;
Right 24; Left 37; Left 71; Right 2; Left 5; Right 63; Left 789; Left
75; Left 15; Right 82; Left 98; Left 24; Right 30; Right 56; Right
442; Right 88; Left 17; Right 31; Right 10; Left 18; Right 31; Right
60; Right 41; Left 24; Right 87; Right 13; Right 5; Right 16; Right
83; Left 28; Left 76; Left 58; Right 58; Right 66; Right 27; Right 28;
Left 49; Right 28; Left 17; Right 57; Left 260; Left 80; Left 64; Left
308; Right 72; Left 5; Left 40; Right 29; Right 12; Left 25; Right 45;
Left 48; Right 142; Right 897; Right 805; Left 53; Left 59; Right 3;
Left 3; Right 52; Right 48; Left 47; Right 12; Right 42; Right 93;
Left 29; Right 29; Right 19; Right 81; Right 63; Left 23; Left 40;
Right 9; Right 69; Left 79; Right 1; Left 386; Right 674; Right 56;
Right 31; Left 30; Left 97; Right 67; Left 15; Right 62; Right 38;
Right 6; Right 65; Right 29; Right 775; Left 44; Right 69; Left 661;
Right 89; Left 92; Right 50; Left 165; Left 511; Right 923; Left 122;
Left 192; Left 69; Right 19; Right 31; Left 225; Right 149; Right 76;
Left 14; Right 14; Left 593; Left 237; Right 73; Right 97; Left 185;
Right 83; Right 54; Right 49; Left 67; Right 79; Left 77; Right 8;
Right 516; Right 57; Left 1; Left 45; Left 11; Right 66; Left 65; Left
1; Right 79; Right 36; Right 41; Left 12; Left 36; Left 8; Left 97;
Right 97; Left 92; Left 17; Left 65; Left 64; Left 56; Left 19; Right
63; Right 432; Right 18; Left 49; Right 49; Left 12; Right 89; Left
46; Right 57; Left 84; Left 19; Right 40; Right 690; Left 67; Left 91;
Left 57; Right 91; Left 72; Left 70; Left 15; Left 24; Right 90; Left
9; Right 134; Left 40; Left 36; Right 251; Left 69; Left 969; Left 81;
Right 19; Right 76; Left 76; Right 13; Left 94; Left 4; Right 5; Left
948; Right 6; Right 31; Left 2; Right 59; Right 5; Right 29; Right
197; Right 173; Left 70; Left 513; Left 57; Left 34; Left 44; Left 89;
Left 63; Left 455; Left 28; Right 259; Left 76; Right 964; Left 57;
Right 9; Left 16; Left 71; Left 75; Right 43; Left 61; Left 36; Left
10; Right 10; Left 83; Left 17; Right 1; Left 95; Right 485; Right 54;
Left 56; Left 67; Right 8; Right 36; Right 89; Right 902; Left 57;
Right 352; Left 52; Right 77; Right 23; Right 45; Left 8; Right 2;
Right 19; Left 58; Left 58; Left 42; Left 4; Left 873; Right 90; Right
53; Right 34; Left 21; Right 271; Right 39; Right 11; Left 45; Right
40; Left 95; Right 246; Left 46; Left 99; Right 99; Right 192; Left
20; Right 68; Left 26; Right 86; Right 65; Left 30; Left 35; Right 51;
Left 144; Right 93; Right 258; Left 7; Right 49; Left 54; Left 872;
Left 74; Left 80; Right 80; Left 17; Right 17; Right 82; Left 82; Left
87; Right 87; Right 317; Right 82; Left 99; Right 48; Left 96; Right
48; Right 95; Right 5; Left 38; Right 38; Right 40; Right 60; Right
427; Left 1; Right 91; Left 45; Right 528; Right 94; Right 33; Right
29; Left 56; Left 247; Right 183; Left 69; Right 97; Left 32; Left 32;
Left 33; Right 33; Right 25; Right 75; Right 63; Right 37; Right 22;
Left 69; Left 53; Left 96; Left 4; Left 83; Left 17; Left 616; Left
84; Left 60; Right 60; Left 17; Right 17; Left 70; Right 50; Right 20;
Right 67; Right 85; Left 52; Left 788; Right 4; Right 79; Right 5;
Right 860; Left 53; Right 93; Left 51; Right 75; Right 76; Left 66;
Left 80; Right 47; Left 78; Right 56; Left 26; Left 953; Right 96;
Left 254; Right 58; Left 92; Right 554; Left 23; Right 80; Left 34;
Right 2; Right 213; Left 66; Left 80; Right 67; Left 12; Left 609;
Left 95; Right 895; Right 637; Right 40; Right 65; Right 932; Right
87; Left 78; Left 32; Right 49; Left 356; Right 98; Left 42; Left 790;
Left 46; Left 68; Left 96; Left 63; Left 618; Left 19; Left 13; Left
15; Left 72; Right 78; Right 69; Right 453; Right 31; Right 843; Left
37; Right 63; Right 99; Left 95; Left 4; Left 740; Left 60; Left 139;
Right 82; Right 57; Right 256; Right 644; Left 35; Left 65; Left 141;
Left 385; Left 762; Left 212; Right 38; Left 786; Right 30; Left 88;
Right 90; Left 84; Right 787; Right 30; Right 556; Left 62; Right 89;
Right 22; Right 21; Right 35; Right 22; Right 38; Right 62; Right 87;
Left 687; Left 69; Left 31; Right 71; Left 571; Left 92; Right 62;
Right 679; Right 51; Left 331; Right 331; Left 861; Left 3; Right 749;
Left 185; Left 80; Right 32; Right 87; Right 78; Right 179; Right 520;
Left 16; Left 57; Right 857; Left 611; Right 56; Left 45; Right 394;
Left 87; Left 18; Right 6; Right 5; Left 59; Left 151; Left 330; Right
30; Left 24; Left 54; Left 12; Left 193; Left 7; Right 74; Right 35;
Right 30; Left 39; Left 54; Right 66; Right 17; Left 63; Right 34;
Left 21; Left 79; Right 78; Right 10; Left 32; Right 42; Left 598;
Left 431; Right 830; Left 978; Right 79; Left 39; Right 39; Right 414;
Left 63; Right 92; Right 57; Left 135; Right 35; Left 23; Left 8; Left
69; Left 5; Right 77; Right 27; Left 894; Right 95; Left 526; Right
26; Right 88; Right 73; Right 9; Right 80; Left 50; Right 5; Left 905;
Left 71; Left 4; Right 40; Left 43; Left 22; Left 91; Left 9; Left 12;
Right 19; Left 75; Left 32; Left 68; Right 68; Left 120; Right 20;
Left 19; Left 312; Left 19; Right 50; Right 1; Right 699; Left 66;
Left 34; Right 73; Right 27; Right 90; Left 44; Right 54; Left 27;
Right 65; Left 478; Left 760; Left 35; Left 19; Right 72; Left 64;
Right 47; Right 45; Left 90; Left 56; Left 28; Right 78; Right 28;
Right 240; Right 67; Left 85; Right 2; Left 36; Left 66; Left 535;
Left 27; Right 37; Right 25; Left 94; Right 57; Left 62; Right 99;
Right 96; Right 43; Left 833; Left 93; Right 16; Right 87; Right 56;
Right 92; Right 16; Right 99; Right 21; Left 18; Right 18; Left 89;
Left 11; Left 29; Right 29; Right 91; Left 91; Right 14; Left 91;
Right 77; Left 28; Left 50; Left 162; Right 72; Right 29; Right 90;
Left 63; Left 924; Right 250; Left 560; Left 54; Right 89; Left 51;
Left 8; Right 70; Left 54; Right 75; Right 263; Left 7; Right 23; Left
87; Left 180; Left 15; Left 18; Right 372; Right 28; Left 51; Right
13; Right 3; Right 135; Left 98; Left 99; Right 97; Right 84; Right
16; Left 40; Right 67; Right 763; Left 30; Right 10; Right 70; Right
60; Right 605; Left 69; Left 536; Left 76; Left 760; Left 64; Left 4;
Left 478; Left 574; Right 62; Left 6; Right 414; Left 14; Right 48;
Left 563; Right 15; Right 77; Right 23; Left 45; Right 845; Right 44;
Right 53; Right 3; Left 69; Left 2; Left 45; Left 70; Right 86; Left
52; Right 77; Right 44; Right 67; Right 36; Right 5; Left 95; Right
18; Right 33; Right 25; Left 58; Right 95; Left 26; Right 88; Left 57;
Right 27; Left 27; Right 951; Right 76; Right 373; Left 2; Left 76;
Right 78; Left 580; Right 480; Left 1; Left 19; Left 124; Left 73;
Left 9; Left 175; Left 99; Right 49; Right 94; Right 57; Left 15; Left
69; Left 816; Right 61; Left 65; Right 225; Left 63; Left 372; Left
147; Right 61; Right 22; Left 8; Right 27; Left 34; Right 76; Right
17; Right 52; Left 52; Left 655; Right 83; Left 10; Right 48; Right
234; Left 325; Left 75; Right 88; Right 912; Left 97; Left 10; Right
7; Right 44; Right 52; Right 56; Right 48; Right 77; Right 413; Right
610; Right 25; Left 60; Right 82; Left 1; Right 30; Right 847; Right
61; Left 84; Left 93; Left 634; Right 40; Left 69; Left 639; Right 20;
Right 75; Right 50; Left 52; Right 921; Left 97; Right 78; Left 16;
Left 2; Right 56; Right 37; Right 61; Right 64; Left 42; Right 14;
Left 75; Right 78; Left 75; Right 457; Left 60; Right 53; Left 26;
Right 39; Right 337; Left 60; Left 440; Right 36; Right 61; Left 97;
Right 6; Right 821; Right 73; Left 42; Left 76; Left 26; Left 33;
Right 95; Left 18; Left 81; Right 81; Left 9; Left 11; Right 98; Left
6; Left 66; Right 63; Right 67; Left 36; Left 16; Left 67; Right 783;
Right 602; Right 18; Left 20; Left 21; Right 889; Right 32; Right 110;
Right 93; Left 74; Left 29; Right 53; Left 24; Left 63; Right 250;
Left 716; Right 68; Right 96; Right 36; Left 62; Left 38; Right 824;
Right 76; Left 64; Left 36; Left 39; Right 39; Left 44; Left 462;
Right 6; Left 84; Left 99; Left 19; Left 98; Left 12; Right 52; Right
79; Left 967; Right 48; Right 55; Right 72; Left 98; Left 125; Left
14; Left 604; Left 86; Left 41; Left 36; Right 7; Left 85; Left 12;
Left 933; Right 21; Left 81; Left 672; Left 30; Left 38; Left 8; Left
92; Right 83; Left 83; Left 429; Right 29; Left 476; Left 24; Left 4;
Right 22; Right 36; Right 749; Right 979; Left 17; Right 35; Right 54;
Right 41; Right 5; Right 130; Right 841; Left 71; Right 86; Right 61;
Left 381; Right 459; Right 75; Left 14; Left 11; Right 66; Left 41;
Right 27; Left 39; Left 88; Left 95; Right 14; Right 53; Left 43; Left
46; Right 89; Right 28; Left 33; Left 67; Left 990; Right 64; Left 94;
Left 96; Right 994; Left 78; Right 11; Right 289; Right 56; Right 644;
Left 70; Right 42; Right 128; Left 3; Left 242; Right 145; Left 14;
Right 14; Left 5; Left 86; Right 866; Right 25; Left 22; Right 22;
Right 62; Right 82; Left 33; Left 11; Left 78; Left 822; Left 15;
Right 55; Right 589; Left 94; Left 58; Right 59; Left 39; Left 46;
Right 571; Right 378; Right 15; Left 22; Left 35; Left 58; Right 839;
Left 13; Left 63; Right 146; Right 591; Left 33; Right 92; Left 59;
Left 19; Left 893; Right 85; Right 57; Left 11; Right 98; Left 19;
Right 2; Right 24; Right 970; Left 52; Left 41; Left 601; Right 49;
Right 72; Left 739; Left 937; Left 367; Right 22; Right 82; Left 387;
Left 73; Left 22; Right 94; Right 17; Left 59; Right 48; Right 65;
Right 51; Right 42; Right 66; Right 72; Left 429; Left 63; Right 896;
Left 7; Left 1; Left 79; Left 13; Right 889; Left 45; Left 88; Right
944; Right 188; Right 12; Right 85; Left 88; Left 97; Right 838; Left
38; Left 46; Left 54; Left 45; Right 45; Right 103; Left 44; Right 99;
Left 58; Right 57; Left 57; Left 40; Right 63; Right 8; Right 69; Left
383; Right 68; Right 20; Right 69; Right 13; Right 13; Right 93; Right
108; Left 79; Left 69; Right 13; Right 27; Right 50; Left 34; Left 9;
Right 50; Left 68; Right 9; Right 9; Left 75; Right 75; Left 66; Left
34; Left 37; Left 63; Left 28; Left 21; Left 2; Right 27; Right 7;
Right 5; Right 450; Left 520; Left 61; Left 57; Left 31; Right 31;
Right 24; Left 45; Right 44; Right 586; Right 50; Left 259; Right 36;
Right 770; Left 110; Right 58; Left 39; Right 185; Left 120; Left 20;
Right 40; Right 98; Left 390; Right 47; Right 62; Right 83; Right 4;
Right 27; Right 508; Right 46; Left 17; Left 68; Left 590; Left 10;
Right 781; Right 19; Right 41; Left 41; Left 816; Left 84; Left 3;
Right 93; Left 5; Right 15; Right 2; Left 102; Left 59; Left 18; Left
23; Left 395; Right 95; Right 43; Left 20; Right 36; Right 21; Right
92; Left 60; Right 88; Right 30; Right 70; Right 61; Left 619; Left
607; Right 65; Left 63; Right 53; Right 10; Right 79; Right 21; Right
31; Right 17; Left 750; Right 97; Left 22; Right 76; Right 50; Left 2;
Right 98; Left 95; Right 75; Right 25; Right 47; Right 7; Right 92;
Right 95; Left 41; Right 806; Left 57; Right 23; Left 36; Left 461;
Right 922; Left 389; Left 32; Left 84; Left 66; Right 50; Right 71;
Left 49; Right 318; Right 63; Right 21; Right 86; Right 262; Right 98;
Right 79; Right 16; Left 19; Right 76; Left 11; Left 87; Right 283;
Right 45; Left 19; Right 54; Left 63; Left 55; Right 14; Left 34; Left
25; Right 60; Left 947; Right 87; Left 26; Right 92; Right 92; Left
721; Left 37; Right 118; Left 18; Left 41; Right 95; Left 54; Right
10; Left 10; Left 39; Right 49; Right 36; Right 98; Left 1; Left 27;
Right 23; Left 76; Left 43; Left 56; Left 7; Right 11; Left 3; Right
35; Left 32; Left 34; Right 44; Left 8; Right 31; Right 19; Left 19;
Right 88; Right 705; Left 94; Left 72; Left 44; Left 54; Left 30;
Right 70; Left 66; Right 47; Right 536; Left 516; Right 29; Left 682;
Right 44; Left 6; Right 22; Right 4; Left 982; Left 381; Right 57;
Left 39; Left 637; Right 63; Right 20; Right 17; Left 25; Right 28;
Left 801; Right 640; Left 404; Left 47; Right 91; Right 18; Left 935;
Left 65; Left 63; Left 37; Right 1; Left 1; Left 23; Left 48; Left
529; Right 55; Left 715; Left 20; Right 29; Left 49; Left 84; Left 65;
Left 18; Right 67; Right 811; Right 92; Left 3; Left 59; Right 32;
Right 41; Right 86; Right 23; Right 58; Left 11; Right 30; Right 66;
Right 505; Right 15; Left 86; Right 15; Left 88; Left 33; Left 527;
Right 75; Left 11; Left 75; Right 44; Left 404; Right 8; Left 80; Left
39; Right 65; Left 309; Left 41; Right 999; Left 99; Right 40; Left
44; Left 796; Right 61; Right 11; Left 33; Right 61; Right 70; Right
30; Left 55; Right 19; Right 74; Right 5; Left 82; Right 39; Right 23;
Left 88; Right 56; Right 78; Right 8; Right 21; Right 8; Left 6; Right
396; Right 604; Left 87; Left 46; Right 733; Left 10; Right 86; Right
67; Left 643; Right 29; Right 71; Right 20; Right 749; Left 69; Right
33; Left 885; Right 52; Left 42; Right 42; Right 96; Left 96; Right
13; Left 157; Left 39; Right 297; Right 86; Right 911; Right 592;
Right 523; Left 45; Left 81; Left 810; Right 12; Right 98; Right 79;
Left 79; Right 95; Left 595; Left 17; Left 151; Left 663; Left 769;
Left 16; Left 84; Left 71; Right 71; Left 14; Left 778; Right 40;
Right 86; Left 95; Left 39; Right 27; Left 35; Left 76; Right 84;
Right 28; Right 23; Right 110; Right 20; Left 697; Right 98; Left 82;
Left 485; Right 88; Right 92; Right 992; Left 105; Left 37; Left 45;
Right 180; Right 52; Right 176; Left 52; Left 799; Left 92; Left 16;
Right 550; Left 896; Left 35; Right 72; Left 397; Right 57; Left 31;
Right 20; Left 89; Right 750; Right 74; Left 14; Left 49; Right 964;
Right 575; Left 28; Right 788; Left 35; Right 75; Right 88; Left 89;
Left 45; Right 924; Right 3; Right 19; Left 24; Right 99; Left 75;
Right 84; Right 58; Right 58; Right 366; Right 34; Right 28; Left 61;
Right 33; Right 820; Left 895; Left 79; Left 78; Right 6; Right 17;
Left 591; Right 67; Left 46; Right 326; Right 53; Left 13; Left 59;
Left 678; Right 50; Left 97; Left 3; Right 12; Right 88; Left 39; Left
44; Right 83; Right 20; Left 21; Right 428; Left 27; Right 42; Right
58; Right 44; Right 15; Right 66; Right 589; Right 60; Left 74; Left
92; Left 31; Left 77; Left 83; Left 605; Left 12; Left 42; Right 842;
Right 49; Left 64; Left 14; Right 95; Right 60; Right 74; Right 73;
Right 90; Left 326; Right 83; Left 20; Left 48; Left 216; Right 15;
Left 51; Left 70; Left 15; Left 72; Right 657; Right 10; Left 902;
Left 43; Left 711; Left 580; Left 25; Right 21; Right 908; Right 22;
Right 550; Right 150; Right 46; Left 463; Right 37; Right 92; Left 25;
Right 19; Right 48; Left 20; Left 34; Right 78; Right 422; Right 739;
Right 36; Left 805; Left 70; Left 410; Right 83; Right 1; Right 62;
Left 3; Left 33; Left 3; Left 64; Left 62; Right 96; Left 167; Left
42; Left 74; Left 29; Left 68; Right 77; Left 64; Right 65; Left 18;
Right 52; Left 115; Right 23; Left 62; Left 221; Left 86; Left 21;
Left 17; Left 57; Left 42; Right 607; Left 108; Left 36; Left 38;
Right 61; Right 64; Left 51; Left 26; Right 26; Left 44; Right 20;
Right 555; Right 69; Left 12; Left 76; Left 31; Left 5; Right 94;
Right 579; Right 28; Left 301; Left 1; Left 75; Left 37; Right 41;
Left 4; Left 64; Right 573; Left 720; Left 29; Right 40; Right 26;
Left 26; Right 67; Right 57; Right 34; Right 51; Left 9; Left 324;
Left 71; Left 5; Left 62; Right 15; Left 74; Left 4; Left 75; Left 33;
Right 97; Left 64; Right 226; Right 74; Right 78; Right 40; Right 182;
Left 31; Right 31; Right 6; Left 43; Right 89; Left 59; Right 60;
Right 47; Left 66; Right 766; Left 98; Left 360; Right 58; Right 18;
Right 73; Left 70; Right 663; Left 18; Left 66; Right 248; Right 39;
Left 8; Left 48; Right 69; Right 7; Right 93; Left 2; Right 7; Left
95; Right 90; Left 4; Right 4; Right 39; Right 34; Right 14; Right 20;
Left 292; Right 85; Left 91; Left 42; Left 943; Left 24; Right 87;
Left 87; Left 74; Right 25; Right 74; Right 72; Right 17; Right 86;
Right 92; Left 592; Right 45; Right 315; Right 40; Right 82; Left 54;
Left 74; Left 54; Right 30; Right 81; Right 68; Left 11; Right 75;
Right 57; Left 778; Right 71; Left 6; Left 25; Left 71; Right 442;
Right 967; Right 63; Left 63; Right 82; Right 418; Left 25; Left 548;
Left 27; Right 48; Left 31; Left 63; Right 34; Right 62; Right 90;
Right 60; Left 44; Left 75; Left 62; Left 19; Right 84; Left 84; Right
5; Left 98; Right 29; Right 33; Left 131; Right 62; Right 24; Left
924; Right 85; Left 23; Left 62; Right 12; Right 14; Left 38; Left 65;
Right 77; Left 19; Left 67; Right 86; Left 1; Right 16; Right 85; Left
63; Right 76; Left 613; Right 43; Left 14; Right 71; Right 30; Right
36; Right 73; Left 27; Right 66; Left 178; Right 917; Left 69; Right
52; Right 663; Right 59; Right 78; Right 81; Left 328; Left 61; Left
92; Right 34; Left 84; Right 750; Right 644; Right 37; Left 68; Right
94; Right 80; Right 75; Left 323; Left 88; Left 6; Right 55; Left 65;
Right 65; Right 717; Right 2; Right 52; Left 37; Left 5; Right 67;
Left 484; Right 88; Left 63; Left 82; Right 194; Right 76; Left 21;
Right 49; Right 844; Left 74; Left 40; Left 75; Right 59; Right 194;
Right 91; Right 48; Right 29; Left 32; Left 38; Right 141; Left 59;
Left 378; Left 63; Left 19; Left 421; Left 20; Left 86; Right 46; Left
15; Right 15; Right 72; Right 28; Left 35; Right 8; Right 21; Left 17;
Left 73; Left 43; Right 90; Right 84; Left 15; Right 12; Left 56; Left
58; Right 14; Right 68; Right 84; Left 249; Left 135; Left 10; Right
61; Right 33; Left 85; Left 799; Left 45; Right 62; Left 17; Right 39;
Right 151; Right 28; Left 886; Left 32; Right 50; Left 48; Left 302;
Left 17; Left 79; Left 4; Right 49; Left 49; Left 64; Left 36; Right
78; Left 672; Right 48; Right 353; Left 26; Left 324; Left 31; Right
274; Left 12; Left 10; Right 22; Right 64; Right 475; Left 23; Left
39; Left 777; Left 33; Left 67; Left 75; Left 25; Left 60; Right 60;
Left 57; Right 69; Left 12; Left 427; Right 26; Right 89; Right 12;
Right 12; Right 77; Left 89; Left 42; Right 726; Right 2; Right 40;
Left 567; Right 19; Right 22; Right 70; Right 30; Left 331; Left 55;
Right 86; Left 48; Left 52; Left 25; Right 25; Right 73; Left 24;
Right 618; Right 26; Left 993; Left 88; Left 12; Left 77; Right 97;
Right 444; Right 36; Right 99; Right 73; Left 34; Right 28; Right 67;
Right 67; Right 71; Left 14; Left 134; Left 48; Left 56; Left 28; Left
68; Right 73; Left 96; Left 73; Right 31; Left 127; Left 14; Right 29;
Right 2; Right 84; Right 42; Right 60; Left 34; Left 692; Left 10;
Right 67; Left 65; Left 16; Left 84; Left 81; Right 81; Right 445;
Left 354; Left 91; Right 25; Right 4; Left 29; Right 84; Left 65;
Right 358; Right 42; Left 78; Right 59; Right 37; Right 563; Right 18;
Left 18; Left 33; Right 27; Left 49; Right 828; Right 227; Right 40;
Right 23; Left 21; Right 58; Right 927; Right 73; Left 94; Right 4;
Right 68; Right 578; Right 657; Right 855; Right 32; Right 84; Left
61; Left 86; Left 53; Left 66; Left 18; Left 523; Right 23; Right 91;
Left 54; Left 40; Right 39; Left 37; Right 19; Left 16; Right 875;
Left 77; Right 37; Right 57; Right 292; Left 1; Right 87; Left 98;
Left 26; Left 90; Left 1; Right 43; Left 68; Right 75; Right 93; Left
47; Left 78; Right 25; Left 67; Left 41; Right 28; Right 620; Left 47;
Left 993; Left 22; Left 5; Right 27; Right 21; Left 21; Right 82;
Right 18; Left 78; Right 45; Right 42; Right 73; Right 18; Right 7;
Right 16; Left 23; Right 92; Right 8; Right 299; Right 83; Left 82;
Left 39; Right 67; Right 72; Right 90; Right 16; Left 420; Left 7;
Right 11; Right 692; Left 84; Right 31; Left 12; Right 55; Left 37;
Right 61; Left 55; Right 51; Right 808; Left 628; Left 72; Right 28;
Right 72; Left 7; Left 309; Right 16; Right 41; Right 765; Left 85;
Right 64; Right 15; Right 34; Right 766; Left 97; Right 97; Left 31;
Right 629; Left 98; Left 14; Right 14; Right 94; Right 3; Right 33;
Right 70; Left 75; Right 75; Right 311; Left 811; Left 184; Right 80;
Left 48; Left 35; Right 20; Left 33; Right 43; Right 1; Right 91;
Right 88; Right 62; Left 84; Right 199; Right 3; Right 2; Left 56;
Right 18; Right 40; Left 30; Left 77; Right 40; Left 40; Left 603;
Left 20; Left 77; Right 30; Right 28; Left 56; Right 66; Right 45;
Right 87; Right 18; Left 918; Left 54; Right 154; Left 15; Right 15;
Right 27; Left 9; Left 42; Left 56; Left 99; Right 879; Left 2; Left
98; Left 70; Left 89; Left 75; Left 66; Left 32; Right 125; Right 46;
Left 35; Left 316; Left 17; Left 71; Left 31; Left 169; Left 33; Right
50; Left 48; Left 16; Right 47; Right 95; Right 33; Right 35; Right
885; Right 72; Right 80; Right 35; Right 96; Right 969; Right 91; Left
3; Right 12; Left 16; Left 84; Right 43; Left 19; Left 83; Left 41;
Right 65; Right 76; Right 66; Left 70; Left 89; Left 48; Left 53; Left
47; Left 46; Left 76; Left 178; Left 33; Right 25; Right 98; Left 82;
Right 37; Right 55; Right 21; Left 21; Left 97; Left 47; Right 57;
Right 94; Left 62; Right 90; Left 35; Right 8; Left 22; Left 86; Right
457; Right 143; Right 44; Left 13; Right 44; Left 42; Left 91; Left
42; Right 7; Left 790; Right 762; Left 94; Right 89; Left 76; Right
595; Right 852; Right 11; Left 835; Right 499; Right 46; Left 66;
Right 404; Right 98; Left 2; Right 37; Left 1; Right 19; Right 866;
Left 5; Left 78; Right 62; Right 148; Left 61; Left 62; Left 46; Right
50; Left 729; Left 980; Right 906; Left 74; Left 67; Left 347; Left
38; Left 619; Left 61; Right 992; Left 12; Right 26; Left 890; Left
64; Left 72; Left 28; Right 1; Left 45; Left 383; Left 84; Left 43;
Left 73; Left 45; Right 33; Right 67; Right 31; Left 31; Left 54;
Right 54; Left 52; Right 987; Left 575; Left 74; Right 414; Right 298;
Right 78; Left 76; Left 174; Right 82; Left 77; Right 69; Right 41;
Left 16; Left 21; Left 4; Left 9; Right 9; Right 48; Right 852; Left
94; Right 2; Right 292; Left 84; Right 84; Left 41; Left 59; Right 33;
Right 85; Right 82; Right 151; Right 39; Right 55; Right 661; Left 54;
Right 48; Left 20; Right 5; Left 74; Left 11; Left 95; Left 68; Right
20; Left 79; Left 46; Left 27; Left 405; Left 544; Left 87; Left 96;
Right 175; Left 548; Right 20; Left 84; Right 5; Left 41; Right 41;
Right 84; Left 17; Right 92; Left 918; Left 782; Right 34; Right 66;
Right 85; Left 99; Left 77; Left 70; Left 8; Left 46; Left 93; Left
16; Right 95; Left 714; Right 27; Right 19; Left 3; Right 832; Right
58; Right 63; Right 96; Left 92; Left 83; Right 33; Right 9; Right 84;
Left 21; Left 29; Left 13; Left 56; Left 69; Right 88; Left 62; Right
47; Right 15; Left 57; Right 25; Left 68; Right 81; Right 319; Left
44; Right 57; Left 97; Left 78; Right 77; Left 569; Right 54; Right
85; Left 39; Left 62; Right 34; Left 518; Right 359; Right 41; Left
87; Right 99; Left 12; Right 4; Right 296; Right 62; Left 86; Left
862; Left 47; Right 33; Right 653; Right 689; Right 64; Right 3; Right
222; Right 433; Left 997; Right 4; Right 73; Left 44; Left 130; Right
30; Left 65; Left 35; Left 99; Right 99; Right 825; Right 63; Right
35; Right 77; Right 392; Right 14; Left 66; Left 22; Left 18; Left 22;
Right 22; Right 31; Left 1; Right 70; Right 497; Left 72; Left 747;
Right 48; Left 21; Right 82; Left 72; Right 85; Right 81; Left 37;
Left 45; Left 797; Right 79; Left 81; Left 75; Left 66; Left 78; Right
73; Right 112; Right 234; Right 63; Right 65; Left 35; Left 675; Right
82; Right 30; Left 30; Right 70; Left 770; Right 51; Right 19; Left 8;
Left 96; Left 247; Right 48; Right 32; Left 99; Left 37; Left 13;
Right 99; Left 49; Left 76; Left 21; Right 97; Left 86; Right 62; Left
19; Left 26; Right 814; Left 647; Right 4; Right 98; Right 81; Left
46; Right 65; Left 36; Left 27; Left 637; Right 32; Right 68; Left 45;
Left 55; Left 93; Right 93; Left 3; Left 97; Left 309; Right 896;
Right 13; Right 53; Left 53; Right 7; Left 7; Left 71; Right 71; Left
11; Left 689; Right 42; Right 58; Left 53; Right 87; Right 66; Right
645; Left 67; Right 91; Right 90; Right 41; Left 42; Right 93; Right
54; Left 793; Left 12; Right 20; Right 80; Left 5; Right 5; Left 61;
Left 5; Left 34; Right 23; Right 2; Left 25; Right 33; Left 7; Right
45; Right 43; Left 39; Right 15; Right 60; Left 58; Left 57; Right 65;
Left 75; Left 25; Right 85; Right 60; Left 45; Left 752; Right 62;
Right 31; Right 405; Right 85; Right 89; Right 39; Left 12; Left 47;
Right 847; Right 11; Left 58; Right 19; Right 81; Left 93; Left 7;
Right 15; Right 585; Left 43; Right 43; Right 84; Right 85; Right 42;
Right 29; Right 60; Left 74; Right 93; Right 60; Left 79; Left 9; Left
26; Left 65; Right 39; Left 39; Left 33; Left 67; Left 32; Right 139;
Left 6; Left 1; Right 213; Left 7; Left 6; Left 66; Right 66; Right
41; Right 47; Left 78; Right 40; Left 79; Right 77; Left 113; Left 1;
Right 46; Right 48; Left 88; Right 7; Left 42; Left 5; Right 96; Left
12; Right 17; Left 185; Right 11; Left 27; Right 94; Right 31; Left
81; Left 5; Right 110; Left 64; Right 66; Right 872; Left 77; Right
78; Left 724; Right 74; Left 23; Left 3; Left 48; Left 93; Right 51;
Left 210; Right 52; Left 18; Right 66; Left 45; Left 159; Left 66;
Right 42; Right 80; Left 62; Left 38; Right 65; Right 29; Left 81;
Right 96; Right 72; Left 34; Right 70; Left 17; Right 66; Left 66;
Left 96; Left 452; Left 752; Left 28; Left 60; Right 53; Left 5; Left
60; Left 630; Left 70; Right 52; Left 52; Right 91; Right 187; Right
22; Left 41; Left 59; Left 97; Right 97; Left 62; Right 11; Left 45;
Right 631; Right 9; Left 544; Left 72; Right 36; Right 36; Right 17;
Right 25; Right 23; Right 35; Right 26; Right 68; Right 6; Left 1;
Right 21; Left 96; Left 24; Left 56; Left 21; Right 90; Right 87;
Right 61; Left 30; Right 94; Left 2; Right 468; Right 392; Right 137;
Right 16; Right 64; Left 652; Left 25; Left 31; Right 39; Left 31;
Right 83; Left 83; Right 37; Right 163; Left 46; Left 40; Right 86;
Right 751; Right 49; Right 639; Left 14; Right 78; Right 70; Left 138;
Right 19; Right 646; Right 87; Right 60; Left 706; Left 67; Right 80;
Right 44; Right 78; Right 95; Left 150; Left 21; Left 61; Right 61;
Left 77; Left 64; Left 44; Left 235; Right 20; Right 51; Right 25;
Left 51; Right 30; Right 45; Left 97; Right 16; Right 54; Left 70;
Right 91; Left 4; Right 10; Right 98; Left 98; Left 54; Right 41;
Right 13; Left 75; Right 58; Left 31; Right 48; Right 77; Right 23;
Left 722; Right 122; Left 69; Right 93; Left 72; Left 95; Right 4;
Left 17; Right 56; Right 16; Right 12; Right 80; Left 23; Right 45;
Right 669; Right 1; Right 833; Left 767; Left 18; Right 36; Right 81;
Right 97; Left 28; Right 38; Right 3; Left 49; Right 37; Right 72;
Right 65; Left 38; Left 33; Left 97; Left 68; Left 75; Right 77; Right
920; Left 32; Left 618; Left 36; Left 890; Left 81; Left 29; Right 14;
Left 8; Right 713; Right 81; Right 12; Left 16; Left 96; Left 27;
Right 4; Right 23; Right 456; Left 56; Right 24; Right 989; Left 62;
Left 51; Left 4; Left 51; Left 45; Left 35; Left 65; Right 97; Right
430; Right 704; Right 60; Right 298; Right 11; Right 45; Left 45; Left
78; Right 78; Right 64; Left 249; Right 47; Left 811; Left 57; Right
17; Right 30; Right 659; Left 738; Left 88; Right 21; Right 13; Right
92; Right 94; Right 806; Right 56; Right 80; Left 36; Right 77; Left
1; Right 24; Left 29; Right 4; Right 25; Right 77; Right 9; Left 81;
Left 68; Left 37; Right 16; Right 734; Left 48; Right 698; Right 402;
Right 88; Right 10; Right 27; Right 73; Left 169; Left 78; Left 53;
Right 223; Right 605; Right 72; Right 17; Right 34; Left 98; Right 85;
Left 4; Left 35; Left 75; Right 338; Right 38; Left 204; Right 4;
Right 77; Right 23; Right 88; Left 88; Left 22; Right 22; Left 52;
Right 40; Left 16; Right 95; Right 65; Left 70; Left 40; Right 31;
Right 778; Right 19; Right 28; Left 232; Left 946; Right 45; Right 81;
Right 31; Right 43; Right 40; Right 60; Left 52; Left 14; Left 34;
Right 58; Left 58; Right 71; Right 75; Right 668; Right 17; Right 821;
Left 10; Right 58; Left 34; Right 34; Right 44; Right 88; Right 284;
Right 84; Left 68; Left 46; Right 98; Left 60; Left 24; Right 7; Left
94; Right 49; Left 71; Left 220; Left 31; Right 19; Right 37; Right 4;
Right 40; Right 91; Left 831; Right 79; Left 675; Left 4; Left 53;
Left 20; Right 863; Left 75; Right 85; Left 45; Left 536; Right 13;
Right 13; Right 55; Left 19; Right 2; Left 995; Right 512; Right 68;
Left 63; Left 5; Right 60; Right 40; Left 94; Left 93; Right 13; Left
26; Right 54; Left 58; Right 87; Left 72; Left 11; Left 82; Right 60;
Left 2; Right 39; Left 15; Left 33; Right 33; Right 94; Left 394; Left
750; Right 70; Left 20; Right 43; Right 57; Left 70; Right 570; Right
7; Left 84; Right 42; Left 65; Right 10; Left 959; Right 49; Right 11;
Left 97; Left 91; Right 77; Left 46; Right 66; Right 39; Right 41;
Left 581; Left 69; Right 77; Left 22; Left 5; Left 308; Left 92; Right
383; Left 23; Left 60; Left 12; Right 57; Left 47; Right 76; Left 19;
Right 17; Right 20; Left 92; Left 222; Right 741; Right 81; Left 47;
Right 47; Left 9; Right 603; Right 702; Left 385; Left 89; Right 54;
Left 99; Right 97; Left 674; Right 84; Left 84; Left 760; Right 696;
Left 487; Right 36; Right 480; Left 65; Right 93; Right 24; Left 17;
Right 49; Left 90; Right 7; Right 78; Left 96; Left 48; Right 7; Right
32; Right 261; Left 24; Right 82; Left 53; Right 95; Left 988; Left
45; Left 24; Right 69; Left 35; Right 789; Right 49; Right 85; Left
57; Left 61; Right 18; Right 17; Left 80; Right 38; Right 71; Left 95;
Left 8; Left 43; Right 79; Left 59; Left 20; Right 267; Right 95;
Right 34; Left 14; Left 82; Right 4; Right 389; Right 933; Left 26;
Right 49; Left 542; Right 132; Left 439; Left 92; Left 59; Left 80;
Right 18; Right 981; Right 32; Left 16; Right 64; Left 41; Left 7;
Left 80; Left 187; Left 94; Left 978; Left 61; Right 37; Left 871;
Right 34; Left 8; Right 913; Left 70; Left 42; Left 44; Left 49; Right
31; Left 31; Right 44; Right 85; Right 71; Right 20; Right 6; Right
72; Left 74; Right 86; Left 622; Left 88; Right 6; Right 394; Right
57; Right 78; Left 35; Left 94; Right 40; Left 88; Left 58; Right 28;
Left 628; Right 52; Right 48; Right 98; Right 62; Right 240; Right 73;
Right 27; Right 12; Left 812; Right 34; Right 83; Right 93; Right 90;
Left 23; Right 57; Left 42; Right 40; Left 32; Right 28; Right 72;
Left 26; Right 26; Right 52; Left 8; Right 18; Right 38; Right 336;
Right 64; Right 44; Left 334; Left 7; Right 97; Right 685; Right 15;
Right 15; Right 73; Right 47; Left 25; Right 80; Left 90; Right 27;
Left 27; Right 93; Left 84; Right 791; Left 16; Left 54; Left 54; Left
22; Left 40; Left 14; Left 60; Left 40; Left 60; Right 579; Right 7;
Right 74; Left 10; Left 90; Left 30; Right 30; Left 45; Right 12; Left
4; Left 63; Right 12; Left 12; Left 120; Right 20; Left 79; Left 19;
Left 69; Left 53; Left 680; Right 67; Right 72; Left 84; Left 19; Left
64; Right 28; Left 41; Right 341; Right 82; Left 85; Right 29; Right
74; Left 604; Left 96; Right 30; Right 70; Right 58; Left 68; Left
694; Right 4; Right 97; Left 13; Right 16; Left 13; Left 69; Left 318;
Left 99; Right 899; Right 6; Left 72; Left 81; Left 53; Left 728;
Right 770; Left 242; Right 53; Right 47; Right 36; Left 36; Left 74;
Right 74; Left 47; Right 47; Left 75; Right 75; Left 73; Right 859;
Right 21; Left 67; Right 40; Left 80; Left 53; Right 81; Right 6;
Right 44; Right 96; Right 26; Right 17; Left 3; Right 72; Right 41;
Right 73; Right 511; Left 11; Left 74; Right 2; Left 24; Right 36;
Right 5; Left 946; Left 18; Left 54; Left 161; Right 234; Right 990;
Left 795; Right 54; Left 37; Right 88; Left 9; Left 81; Left 10; Left
924; Left 74; Left 2; Right 78; Left 78; Left 57; Right 49; Right 87;
Left 42; Left 437; Left 74; Right 53; Left 79; Left 68; Left 675;
Right 44; Left 518; Right 77; Left 8; Left 755; Right 65; Left 262;
Right 188; Left 67; Right 79; Left 36; Left 535; Right 85; Left 840;
Right 16; Left 10; Left 69; Left 59; Right 41; Left 96; Left 50; Right
22; Right 32; Left 1; Left 92; Right 965; Left 176; Left 70; Left 27;
Left 42; Left 43; Right 85; Left 359; Right 53; Right 919; Right 77;
Left 32; Left 18; Left 40; Left 440; Left 60; Left 32; Left 64; Left
73; Right 25; Left 51; Right 95; Right 267; Right 80; Right 53; Right
860; Right 40; Left 52; Right 23; Right 29; Left 31; Left 69; Left 25;
Left 25; Right 2; Left 544; Left 54; Left 12; Right 498; Right 60;
Left 998; Right 98; Left 75; Right 73; Left 85; Left 618; Right 56;
Left 2; Left 93; Left 11; Left 77; Right 11; Right 7; Right 714; Right
786; Right 361; Right 30; Right 23; Right 787; Right 213; Right 903;
Left 62; Right 39; Left 47; Right 59; Left 48; Left 48; Right 23; Left
18; Right 14; Right 4; Right 26; Left 245; Right 743; Left 43; Left
378; Left 48; Right 40; Right 86; Left 45; Left 338; Right 24; Right
74; Right 85; Right 35; Right 62; Left 42; Left 95; Right 12; Right
13; Left 12; Left 873; Right 73; Right 760; Left 25; Right 92; Right
9; Right 91; Right 67; Right 33; Left 43; Right 74; Left 87; Right 23;
Left 67; Left 19; Right 35; Right 84; Right 93; Left 51; Right 65;
Right 78; Right 93; Right 59; Right 52; Right 38; Right 36; Left 2;
Right 448; Right 98; Left 83; Right 76; Left 82; Left 718; Left 1;
Left 83; Right 36; Right 419; Right 485; Left 1; Right 60; Right 49;
Right 136; Left 2; Right 70; Left 12; Left 93; Left 86; Right 75; Left
619; Left 633; Right 81; Left 81; Left 21; Right 95; Right 26; Right
50; Right 89; Right 61; Left 32; Right 50; Right 82; Left 84; Right
23; Right 24; Left 63; Right 39; Right 61; Left 14; Right 64; Right
65; Left 18; Left 43; Left 54; Left 93; Left 2; Left 5; Left 63; Left
21; Right 84; Right 16; Right 67; Left 83; Left 65; Right 43; Right
22; Left 48; Right 48; Right 64; Left 64; Left 37; Right 61; Left 75;
Left 49; Left 97; Left 57; Left 46; Left 79; Left 21; Left 99; Right
88; Right 11; Left 92; Left 8; Left 12; Right 20; Left 18; Left 85;
Right 49; Left 5; Left 30; Left 10; Right 29; Right 27; Right 9; Right
5; Right 5; Left 17; Right 19; Right 34; Left 4; Left 29; Left 46;
Left 39; Right 5; Right 49; Left 50; Right 48; Left 1; Right 3; Left
47; Right 9; Left 47; Left 27; Left 45; Right 36; Right 18; Left 20;
Right 17; Left 5; Left 46; Left 8; Left 23; Right 9; Left 10; Right
19; Right 42; Left 15; Left 39; Left 25; Left 14; Right 43; Right 39;
Left 43; Right 15; Left 12; Left 48; Left 36 ]


let example = [Left 68; Left 30; Right 48 ; Left 5; Right 60; Left 55;
Left 1; Left 99; Right 14; Left 82]

(* can process each item of list until we are done *)
(* click it each turn and count number of times it hits zero *)

let rec crack xs d c =
  if xs = [] then [] else [1]





