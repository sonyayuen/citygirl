# 1 "coin.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "coin.c"


const unsigned int coin_sampleRate = 11025;
const unsigned int coin_length = 5032;

const signed char coin_data[] = {
0, 0, 0, 0, 0, 0, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0, -1, 0,
-1, 0, -1, 0, -1, 0, 0, -1, 0, -1, 0, -1, 0, 0, 0, 0, 0, -1, 0, 0,
-1, -1, 0, 0, -1, -2, -2, 2, 3, 2, 0, -1, -2, -4, -5, -3, 3, 2, -1, -3,
-3, 5, 7, 3, 1, -1, -3, -5, -7, -5, 3, 3, -1, -4, -4, 5, 8, 4, 1, -1,
-3, -6, -8, -6, 3, 4, -1, -4, -5, 5, 9, 5, 2, -1, -3, -6, -8, -6, 3, 4,
-1, -4, -5, 4, 9, 5, 2, -1, -3, -6, -8, -6, 2, 4, -1, -4, -5, 3, 10, 5,
2, -1, -2, -7, -4, -11, 5, 16, -1, -12, -16, 10, 4, 7, 11, -1, -5, -9, -6, -8,
2, 4, 0, -4, -5, 1, 10, 7, -3, 9, 4, -8, -22, -11, 9, -8, 18, 9, -9, -18,
3, 18, -14, 21, 12, -8, -29, -15, 13, -12, 21, 14, -9, -18, -1, 20, -13, 14, 16, -7,
-22, -23, 14, -9, 11, 20, -7, -16, -9, 23, -12, 9, 22, -6, -22, -28, 15, -9, 9, 23,
-6, -16, -12, 24, -10, 6, 24, -5, -21, -30, 14, -7, 6, 25, -5, -15, -15, 23, -7, 2,
26, -4, -19, -32, 12, -3, 1, 27, -4, -13, -17, 22, -4, -2, 27, -2, -17, -33, 10, -1,
-2, 27, -2, -13, -18, 20, -1, -4, 28, -1, -16, -34, 7, 1, -4, 28, -1, -12, -19, 18,
3, -8, 28, 1, -14, -35, 3, 5, -8, 28, 2, -11, -20, 15, 6, -11, 28, 3, -13, -34,
0, 8, -10, 27, 4, -10, -20, 13, 9, -13, 27, 5, -12, -34, -3, 10, -11, 27, 6, -10,
-20, 9, 13, -15, 26, 8, -11, -33, -8, 13, -13, 24, 9, -9, -19, 5, 16, -16, 24, 11,
-10, -31, -12, 15, -14, 23, 11, -9, -19, 2, 18, -16, 22, 13, -9, -30, -15, 16, -14, 20,
13, -9, -19, 1, 19, -16, 22, 13, -9, -30, -14, 15, -13, 22, 13, -9, -20, 1, 20, -16,
21, 14, -9, -29, -17, 16, -13, 20, 15, -9, -19, -2, 21, -16, 18, 17, -8, -27, -20, 16,
-12, 17, 17, -8, -18, -5, 23, -15, 15, 20, -7, -25, -24, 17, -11, 13, 20, -7, -17, -9,
24, -13, 11, 22, -6, -23, -27, 16, -9, 10, 22, -7, -16, -11, 24, -11, 8, 24, -6, -22,
-29, 15, -8, 7, 24, -6, -15, -14, 23, -8, 4, 26, -4, -19, -32, 13, -4, 2, 26, -4,
-13, -16, 22, -5, 0, 27, -3, -18, -33, 11, -2, -1, 27, -3, -13, -17, 21, -3, -3, 28,
-2, -16, -34, 9, 1, -3, 28, -2, -12, -19, 19, 1, -7, 28, 0, -14, -34, 5, 4, -7,
28, 1, -11, -19, 16, 5, -10, 28, 2, -13, -34, 2, 7, -9, 28, 3, -10, -20, 14, 8,
-12, 28, 4, -12, -34, -1, 9, -11, 27, 4, -10, -20, 13, 9, -12, 28, 4, -13, -34, -1,
8, -10, 28, 4, -11, -21, 13, 10, -13, 28, 6, -12, -34, -4, 10, -11, 27, 6, -10, -21,
10, 13, -14, 26, 8, -11, -33, -7, 12, -12, 25, 8, -10, -20, 6, 16, -15, 24, 11, -10,
-31, -12, 14, -13, 23, 12, -9, -20, 2, 18, -16, 22, 13, -9, -30, -15, 16, -13, 21, 14,
-9, -19, -1, 20, -16, 20, 15, -9, -28, -19, 16, -13, 18, 16, -8, -18, -4, 22, -15, 16,
18, -8, -26, -23, 17, -12, 14, 19, -8, -17, -7, 23, -14, 12, 21, -7, -24, -26, 17, -10,
11, 21, -7, -16, -10, 24, -12, 9, 23, -6, -22, -28, 16, -9, 8, 23, -6, -15, -12, 23,
-10, 5, 25, -5, -20, -31, 14, -5, 3, 25, -5, -13, -15, 23, -7, 1, 26, -4, -18, -32,
13, -3, 1, 27, -4, -13, -16, 21, -4, -2, 27, -2, -17, -33, 10, -1, -2, 27, -3, -12,
-17, 21, -3, -2, 27, -2, -17, -33, 11, -2, 0, 27, -3, -13, -18, 21, -2, -3, 28, -1,
-16, -34, 8, 0, -3, 28, -2, -12, -19, 19, 1, -6, 28, 0, -15, -34, 6, 3, -6, 28,
0, -12, -20, 17, 4, -9, 29, 2, -13, -34, 1, 6, -9, 28, 3, -11, -21, 13, 8, -12,
28, 5, -12, -34, -2, 9, -11, 27, 5, -10, -21, 11, 11, -14, 27, 7, -11, -33, -5, 11,
-12, 26, 7, -10, -21, 7, 14, -15, 25, 10, -10, -31, -10, 14, -13, 24, 10, -9, -20, 3,
17, -16, 23, 12, -9, -30, -13, 15, -14, 22, 13, -9, -19, 0, 19, -16, 20, 14, -8, -28,
-16, 16, -13, 19, 15, -8, -18, -3, 20, -16, 17, 17, -8, -26, -21, 17, -13, 15, 18, -8,
-17, -7, 22, -14, 13, 19, -7, -24, -23, 17, -11, 12, 20, -7, -15, -9, 22, -13, 10, 21,
-6, -22, -25, 16, -9, 9, 21, -6, -14, -11, 22, -11, 6, 23, -5, -20, -28, 15, -7, 4,
24, -5, -13, -14, 21, -8, 3, 24, -4, -18, -29, 13, -4, 2, 24, -4, -12, -15, 20, -5,
0, 25, -3, -16, -30, 11, -2, -1, 25, -3, -12, -16, 19, -4, -1, 25, -3, -16, -30, 11,
-4, 1, 25, -3, -12, -16, 18, -4, 1, 27, -1, -16, -33, 5, 0, 0, 24, -5, -7, -12,
19, -2, -7, 19, -3, -10, -29, 3, 1, 4, 29, 0, -13, -23, 9, 4, -4, 24, -3, -7,
-23, 5, 4, -11, 18, -2, -5, -17, 8, 4, -1, 30, 4, -13, -35, -7, 7, -5, 22, -1,
-4, -9, 13, 8, -15, 17, 0, -5, -27, -7, 7, -1, 28, 6, -11, -23, 3, 6, -4, 23,
-2, -7, -20, 6, 2, -9, 18, -4, -6, -17, 10, 2, 0, 31, 4, -12, -34, -8, 4, -2,
22, 2, 0, -20, 13, 8, -12, 34, -14, -15, -22, -10, 23, -4, 12, 11, -15, -13, 8, -5,
-4, 21, 4, 0, -29, 0, 5, -10, 35, -14, -15, -14, 3, 25, -6, 12, 12, -16, -15, -3,
-19, -2, 19, 9, 12, -31, 6, 13, -15, 41, -13, -20, -18, -15, 26, -3, 7, 15, -15, -9,
10, -13, -8, 19, 9, 15, -33, -15, 14, -17, 38, -4, -24, -9, -8, 31, -1, 2, 17, -12,
-16, -3, -16, -9, 18, 9, 17, -24, -9, 22, -20, 34, 1, -25, -12, -24, 24, 4, 0, 18,
-11, -12, 9, -10, -11, 17, 9, 17, -29, -21, 16, -18, 35, 1, -26, -8, -11, 30, 2, -1,
19, -9, -16, -3, -17, -11, 17, 10, 17, -21, -14, 25, -19, 30, 7, -27, -9, -25, 21, 7,
-3, 19, -7, -14, 8, -6, -14, 14, 10, 18, -16, -32, 17, -16, 24, 16, -29, -6, -16, 25,
12, -8, 19, -3, -17, -4, -13, -15, 13, 10, 17, -9, -26, 26, -14, 17, 21, -29, -7, -27,
12, 16, -8, 18, -1, -16, 5, -2, -16, 9, 11, 17, -3, -39, 13, -10, 10, 28, -28, -6,
-17, 15, 23, -11, 16, 4, -17, -5, -10, -17, 8, 11, 15, 2, -32, 20, -5, 3, 31, -26,
-8, -24, 0, 25, -10, 13, 6, -16, 2, 0, -16, 6, 12, 16, 2, -40, 10, -6, 5, 31,
-27, -7, -16, 10, 26, -12, 14, 7, -16, -5, -10, -18, 6, 12, 15, 5, -33, 16, 0, -2,
33, -24, -9, -21, -5, 25, -9, 11, 9, -16, 0, 2, -15, 1, 12, 14, 11, -38, -1, 3,
-7, 35, -19, -12, -12, -1, 32, -8, 6, 13, -15, -7, -8, -18, 0, 12, 12, 14, -31, 4,
11, -12, 35, -15, -14, -14, -16, 28, -5, 3, 15, -15, -3, 3, -14, -2, 12, 13, 14, -35,
-6, 6, -10, 36, -16, -15, -10, -6, 32, -7, 3, 16, -14, -6, -8, -20, -1, 12, 12, 15,
-29, -1, 15, -13, 33, -11, -16, -10, -19, 26, -2, 0, 17, -13, -4, 3, -13, -5, 11, 11,
19, -26, -18, 12, -15, 31, -3, -21, -5, -14, 31, 3, -5, 19, -10, -9, -5, -19, -6, 10,
10, 19, -20, -14, 21, -15, 27, 2, -22, -5, -25, 21, 7, -8, 19, -8, -8, 4, -10, -8,
8, 10, 21, -15, -29, 14, -14, 22, 10, -25, -2, -18, 24, 14, -12, 18, -4, -11, -3, -17,
-9, 8, 9, 21, -9, -24, 22, -12, 16, 15, -25, -2, -26, 12, 17, -13, 17, -2, -11, 5,
-9, -9, 7, 9, 21, -10, -31, 13, -13, 18, 15, -26, -2, -19, 21, 18, -14, 18, -1, -11,
-2, -18, -11, 7, 9, 20, -6, -27, 20, -9, 12, 19, -26, -2, -24, 7, 20, -14, 16, 2,
-12, 5, -8, -10, 4, 8, 20, 1, -36, 8, -7, 7, 25, -25, -3, -17, 9, 28, -15, 12,
6, -13, 0, -15, -14, 4, 8, 19, 5, -31, 13, 0, 1, 26, -23, -4, -19, -5, 26, -13,
9, 9, -13, 3, -5, -11, 1, 7, 17, 11, -35, -2, 1, -4, 29, -19, -8, -12, -3, 33,
-11, 4, 12, -13, -1, -12, -15, 1, 7, 16, 13, -29, 3, 8, -8, 28, -15, -9, -12, -15,
28, -7, 1, 14, -13, 1, -3, -11, 0, 6, 16, 13, -32, -5, 4, -7, 29, -16, -10, -10,
-7, 33, -8, 1, 14, -12, -1, -11, -17, 0, 7, 14, 14, -27, -2, 12, -9, 27, -11, -11,
-9, -18, 26, -4, -2, 16, -12, 0, -2, -10, -2, 5, 13, 18, -25, -16, 9, -11, 26, -5,
-15, -4, -15, 30, 1, -8, 18, -10, -3, -7, -17, -3, 5, 12, 19, -20, -12, 16, -11, 22,
-1, -16, -3, -23, 21, 5, -9, 18, -8, -3, 0, -10, -2, 4, 12, 18, -20, -19, 9, -12,
24, -1, -17, -3, -17, 27, 5, -10, 18, -7, -4, -6, -18, -4, 5, 11, 19, -16, -16, 17,
-10, 19, 3, -17, -1, -23, 17, 7, -11, 18, -5, -5, 0, -10, -3, 2, 10, 20, -11, -26,
9, -10, 15, 10, -19, 0, -19, 19, 16, -15, 16, -2, -6, -3, -18, -6, 3, 8, 20, -7,
-23, 15, -6, 10, 12, -19, 0, -22, 7, 16, -14, 15, 0, -8, 2, -10, -4, 1, 7, 20,
-1, -29, 5, -6, 6, 18, -19, -1, -16, 8, 25, -16, 11, 4, -9, 0, -16, -8, 1, 6,
19, 2, -26, 10, 0, 2, 19, -17, -1, -17, -4, 23, -14, 9, 6, -10, 3, -9, -5, 0,
6, 19, 2, -29, 3, -4, 3, 19, -18, -1, -15, 4, 26, -15, 9, 7, -9, 1, -16, -9,
1, 5, 18, 4, -26, 7, 3, -1, 19, -16, -2, -14, -7, 22, -12, 6, 9, -10, 2, -8,
-5, 0, 4, 17, 9, -26, -5, 2, -4, 22, -12, -5, -10, -6, 29, -9, 1, 12, -10, 1,
-13, -11, 0, 3, 15, 11, -23, -2, 9, -6, 20, -9, -6, -8, -15, 23, -6, -2, 14, -10,
1, -6, -7, 0, 1, 14, 15, -21, -13, 5, -8, 20, -5, -9, -4, -14, 27, 0, -8, 16,
-8, 0, -10, -14, 0, 1, 12, 16, -18, -10, 12, -7, 16, -2, -10, -3, -20, 19, 2, -9,
16, -7, 0, -4, -8, 0, 0, 12, 16, -18, -15, 6, -8, 18, -2, -11, -3, -15, 24, 3,
-10, 16, -7, 0, -8, -15, -1, 1, 11, 16, -15, -13, 12, -6, 14, 1, -11, -1, -20, 15,
5, -11, 16, -5, -2, -3, -9, 1, -1, 10, 18, -11, -20, 6, -7, 12, 6, -13, 0, -17,
17, 13, -14, 15, -2, -3, -4, -16, -2, 0, 8, 18, -8, -19, 11, -4, 8, 8, -13, 1,
-19, 7, 13, -14, 13, -1, -4, -1, -10, 1, -1, 8, 18, -7, -21, 5, -7, 10, 8, -14,
1, -17, 13, 16, -15, 13, 0, -4, -2, -17, -3, 0, 7, 17, -5, -20, 9, -2, 6, 9,
-13, 1, -17, 3, 15, -14, 12, 2, -5, 1, -11, 0, -1, 5, 18, 0, -23, 1, -3, 3,
13, -13, 0, -14, 3, 22, -14, 8, 5, -6, 1, -16, -5, 0, 4, 17, 2, -21, 4, 3,
1, 13, -11, 0, -13, -6, 19, -12, 6, 7, -7, 2, -11, -1, 0, 1, 17, 6, -22, -4,
0, -2, 15, -9, -2, -9, -6, 25, -9, 1, 10, -8, 2, -14, -8, 0, 1, 16, 8, -20,
-2, 6, -3, 14, -7, -3, -8, -13, 20, -7, -1, 11, -8, 2, -9, -3, 1, 0, 15, 8,
-20, -6, 1, -3, 15, -8, -3, -7, -9, 24, -6, -2, 12, -7, 2, -13, -9, 0, 0, 14,
10, -18, -5, 7, -3, 13, -6, -4, -5, -14, 18, -5, -4, 13, -7, 2, -8, -5, 2, -2,
13, 12, -16, -12, 3, -5, 13, -2, -6, -3, -14, 21, 2, -9, 14, -6, 1, -9, -12, 1,
-2, 12, 14, -13, -11, 8, -3, 10, 0, -7, -1, -17, 13, 3, -10, 14, -5, 0, -5, -8,
3, -3, 9, 16, -10, -16, 3, -5, 9, 3, -9, 0, -15, 15, 10, -13, 13, -3, -1, -5,
-14, 0, -3, 8, 16, -8, -15, 7, -2, 7, 4, -9, 1, -17, 6, 10, -13, 12, -1, -2,
-2, -10, 3, -3, 7, 16, -7, -16, 2, -5, 7, 5, -9, 1, -15, 11, 13, -13, 12, -1,
-1, -3, -15, 0, -3, 7, 16, -5, -16, 6, 0, 5, 6, -9, 2, -15, 3, 12, -13, 10,
1, -3, -1, -11, 3, -2, 4, 17, -2, -18, 0, -3, 3, 8, -9, 1, -13, 3, 19, -13,
7, 4, -4, 0, -16, -2, -2, 3, 16, 0, -17, 2, 2, 2, 8, -8, 1, -11, -4, 16,
-12, 5, 6, -5, 2, -11, 1, -1, 0, 16, 4, -17, -4, -1, 0, 10, -7, -1, -9, -5,
22, -9, 0, 8, -6, 2, -14, -5, 0, -1, 15, 6, -16, -2, 4, 0, 9, -5, -1, -7,
-10, 17, -7, -1, 9, -6, 3, -11, -1, 1, -2, 15, 6, -16, -5, 0, -1, 10, -6, -1,
-7, -7, 21, -6, -2, 10, -5, 3, -13, -6, 0, -2, 14, 7, -15, -4, 5, -1, 8, -5,
-2, -5, -12, 15, -5, -3, 11, -5, 3, -10, -3, 3, -4, 13, 10, -13, -9, 1, -3, 9,
-2, -3, -3, -12, 18, 1, -8, 12, -5, 3, -10, -10, 1, -4, 11, 11, -12, -8, 5, -1,
7, -1, -4, -1, -14, 12, 1, -9, 12, -4, 2, -7, -6, 4, -4, 11, 11, -11, -10, 1,
-3, 8, -1, -4, -1, -13, 16, 3, -9, 12, -4, 2, -8, -11, 2, -4, 10, 12, -10, -10,
5, 0, 6, 0, -4, 0, -14, 9, 3, -10, 11, -3, 1, -5, -9, 5, -4, 8, 14, -7,
-12, 0, -3, 6, 2, -5, 1, -13, 10, 10, -12, 10, -1, 0, -4, -14, 1, -4, 6, 14,
-6, -12, 3, 1, 4, 3, -5, 1, -13, 3, 9, -12, 9, 1, -1, -2, -11, 4, -3, 3,
15, -3, -14, -1, -2, 3, 5, -6, 1, -11, 3, 16, -12, 6, 3, -2, 0, -14, 0, -3,
2, 15, -1, -13, 1, 2, 2, 5, -5, 1, -10, -3, 13, -11, 5, 4, -3, 1, -12, 3,
-2, 1, 15, -1, -13, -2, -2, 2, 5, -5, 1, -10, 0, 16, -10, 4, 5, -3, 1, -14,
-1, -2, 1, 15, 1, -13, -1, 2, 2, 5, -5, 1, -8, -5, 13, -10, 2, 6, -3, 2,
-12, 1, 0, -2, 14, 3, -13, -5, -1, 0, 6, -4, 0, -6, -6, 17, -6, -1, 8, -4,
3, -13, -4, 0, -3, 14, 5, -12, -4, 3, 1, 5, -3, 0, -5, -9, 13, -6, -3, 8,
-4, 3, -11, -1, 2, -3, 13, 5, -12, -5, -1, -1, 6, -3, 0, -5, -8, 16, -4, -3,
9, -4, 3, -12, -6, 1, -3, 13, 6, -11, -5, 3, 1, 5, -3, -1, -3, -10, 11, -4,
-5, 9, -4, 3, -9, -4, 4, -5, 11, 9, -10, -8, -1, -1, 5, -1, -2, -2, -10, 13,
2, -8, 9, -3, 3, -8, -9, 2, -5, 10, 10, -9, -7, 2, 1, 4, -1, -2, -1, -11,
8, 2, -9, 9, -2, 2, -6, -8, 5, -5, 7, 12, -7, -9, -1, -2, 4, 1, -3, 0,
-11, 8, 8, -10, 8, -1, 1, -4, -12, 2, -5, 6, 13, -6, -9, 1, 1, 3, 1, -3,
1, -11, 3, 7, -10, 7, 0, 1, -3, -10, 5, -4, 5, 12, -6, -9, -2, -2, 3, 1,
-3, 1, -10, 5, 9, -10, 7, 0, 1, -2, -13, 2, -4, 4, 13, -4, -9, 0, 2, 3,
1, -3, 1, -9, 1, 8, -10, 6, 2, 0, -1, -11, 4, -2, 1, 14, -2, -10, -3, -2,
2, 2, -3, 1, -8, 0, 13, -9, 3, 3, -1, 1, -13, 0, -2, 0, 13, -1, -10, -2,
2, 3, 2, -3, 1, -7, -3, 10, -9, 2, 5, -2, 2, -11, 2, 0, -2, 13, 2, -10,
-4, -2, 1, 3, -3, 1, -6, -5, 14, -6, -1, 6, -3, 3, -12, -3, 0, -3, 13, 3,
-10, -4, 1, 2, 3, -2, 1, -4, -7, 10, -6, -2, 7, -3, 3, -10, -1, 2, -4, 12,
3, -10, -4, -2, 1, 3, -2, 1, -4, -6, 13, -4, -3, 7, -3, 3, -11, -4, 0, -4,
12, 4, -9, -4, 1, 2, 2, -2, 1, -3, -8, 9, -4, -4, 7, -3, 3, -9, -3, 4,
-5, 10, 7, -9, -6, -2, 0, 3, -1, 0, -2, -8, 11, 1, -6, 7, -2, 3, -8, -7,
2, -5, 9, 8, -8, -6, 0, 2, 3, -1, 0, -1, -9, 7, 0, -7, 7, -2, 3, -7,
-6, 5, -5, 8, 8, -8, -6, -2, 0, 2, -1, 0, -1, -9, 8, 3, -7, 7, -2, 3,
-6, -9, 2, -5, 7, 9, -7, -6, 0, 2, 3, -1, -1, 0, -9, 5, 2, -8, 7, -1,
2, -5, -8, 5, -4, 5, 10, -6, -7, -3, -1, 2, 0, -1, 0, -8, 5, 7, -8, 5,
0, 1, -3, -11, 2, -4, 4, 11, -5, -7, -1, 2, 3, -1, -1, 1, -8, 1, 5, -9,
5, 1, 0, -1, -10, 4, -3, 1, 12, -3, -8, -3, -1, 2, 0, -1, 1, -7, 0, 10,
-8, 3, 3, 0, 0, -11, 1, -3, 0, 12, -2, -8, -2, 1, 3, 0, -2, 1, -6, -2,
8, -8, 2, 3, -1, 1, -10, 3, -1, -1, 12, -1, -7, -3, -1, 2, 0, -2, 1, -6,
-1, 10, -6, 1, 3, -1, 1, -11, 0, -2, -1, 12, 0, -7, -3, 1, 3, 0, -2, 1,
-5, -3, 7, -7, 0, 4, -1, 2, -10, 1, 1, -3, 11, 2, -8, -4, -2, 1, 1, -2,
1, -4, -4, 10, -3, -2, 5, -2, 3, -10, -3, 0, -4, 11, 3, -7, -4, 0, 3, 1,
-2, 1, -3, -6, 7, -4, -3, 6, -2, 3, -9, -2, 3, -4, 10, 3, -7, -4, -2, 1,
1, -2, 1, -3, -5, 9, -2, -3, 5, -1, 3, -9, -4, 1, -5, 10, 4, -7, -4, -1,
3, 1, -2, 1, -2, -6, 6, -3, -4, 6, -1, 3, -7, -4, 4, -5, 8, 6, -7, -4,
-3, 1, 1, -1, 1, -1, -7, 7, 2, -6, 5, -1, 3, -6, -7, 2, -5, 7, 7, -6,
-4, -2, 3, 2, -2, 1, -1, -7, 4, 1, -7, 5, -1, 2, -4, -7, 5, -4, 5, 9,
-5, -5, -3, 0, 1, -1, 0, 0, -7, 4, 5, -7, 4, 0, 2, -3, -9, 2, -4, 3,
9, -5, -5, -2, 2, 2, -2, 0, 0, -6, 2, 4, -7, 4, 1, 1, -2, -8, 4, -3,
3, 9, -4, -5, -3, 0, 1, -1, 0, 0, -6, 2, 6, -6, 3, 1, 1, -2, -10, 2,
-4, 2, 10, -4, -5, -3, 1, 3, -2, 0, 1, -6, 0, 4, -7, 3, 2, 1, -1, -9,
3, -1, 0, 10, -2, -5, -3, -1, 2, -1, 0, 1, -5, -1, 7, -5, 1, 2, 0, 1,
-10, 0, -2, -1, 10, -1, -6, -3, 0, 3, -1, -1, 1, -4, -2, 5, -6, 0, 3, 0,
1, -9, 2, 0, -2, 10, -1, -5, -3, -2, 2, -1, -1, 1, -4, -2, 7, -4, 0, 3,
0, 1, -9, -1, -1, -2, 10, 0, -5, -3, 0, 4, -1, -1, 2, -4, -3, 5, -5, -1,
4, 0, 2, -9, -1, 2, -3, 9, 2, -6, -3, -2, 2, -1, -1, 1, -3, -4, 7, -2,
-2, 4, -1, 2, -8, -3, 1, -4, 9, 3, -6, -3, -2, 3, 0, -2, 1, -2, -4, 5,
-3, -4, 4, -1, 2, -7, -3, 3, -4, 7, 5, -6, -3, -3, 1, 0, -1, 1, -2, -5,
5, 1, -4, 4, -1, 2, -5, -6, 2, -5, 6, 6, -5, -3, -2, 3, 1, -2, 1, -1,
-5, 3, 0, -5, 4, 0, 2, -5, -5, 4, -4, 5, 6, -5, -3, -3, 1, 0, -2, 1,
-1, -5, 4, 2, -4, 4, 0, 2, -4, -7, 2, -5, 5, 6, -5, -3, -3, 2, 1, -2,
1, 0, -5, 3, 1, -6, 3, 0, 2, -3, -7, 4, -3, 3, 8, -4, -3, -3, 0, 1,
-2, 1, 0, -5, 2, 4, -5, 2, 1, 1, -2, -8, 2, -4, 2, 8, -4, -4, -3, 1,
2, -2, 1, 0, -5, 1, 3, -6, 2, 1, 1, -1, -8, 3, -1, 0, 9, -2, -4, -3,
-1, 2, -2, 0, 1, -4, 0, 5, -4, 1, 2, 1, 0, -8, 0, -2, -1, 9, -2, -4,
-3, 0, 3, -2, 0, 1, -4, -1, 4, -5, 0, 2, 0, 1, -8, 1, 0, -1, 8, -1,
-4, -3, -2, 2, -2, 0, 1, -4, -1, 5, -3, 0, 2, 0, 1, -8, 0, -1, -2, 8,
-1, -4, -3, -1, 3, -2, -1, 1, -3, -2, 4, -4, -1, 3, 0, 1, -7, -1, 1, -3,
8, 1, -4, -3, -3, 2, -2, -1, 2, -3, -3, 5, -2, -2, 3, 0, 2, -7, -3, 0,
-4, 7, 2, -4, -3, -2, 3, -1, -1, 2, -2, -3, 4, -3, -3, 3, 0, 2, -6, -2,
2, -3, 7, 2, -4, -2, -3, 2, -1, -1, 2, -2, -3, 4, -1, -2, 3, 0, 2, -6,
-3, 1, -4, 6, 3, -4, -2, -2, 3, 0, -2, 2, -2, -3, 3, -2, -4, 3, 0, 2,
-5, -4, 3, -3, 5, 4, -4, -2, -3, 1, 0, -2, 2, -1, -4, 3, 1, -3, 2, 0,
2, -4, -5, 2, -4, 4, 5, -4, -2, -3, 2, 1, -2, 1, -1, -4, 2, 0, -4, 2,
0, 2, -3, -6, 3, -3, 3, 6, -4, -2, -3, 0, 1, -2, 1, 0, -4, 2, 2, -4,
2, 1, 2, -2, -7, 1, -3, 2, 7, -3, -2, -3, 1, 2, -3, 1, 0, -4, 1, 1,
-5, 1, 1, 1, -2, -7, 2, -2, 1, 7, -3, -2, -3, 0, 1, -3, 1, 0, -4, 1,
2, -3, 1, 1, 1, -1, -7, 1, -3, 0, 7, -3, -2, -3, 0, 2, -3, 1, 1, -3,
0, 2, -4, 0, 1, 1, 0, -7, 1, -1, -1, 7, -2, -3, -3, -1, 2, -3, 0, 1,
-3, 0, 3, -3, 0, 1, 1, 0, -7, 0, -1, -2, 7, -1, -3, -3, -1, 3, -2, 0,
1, -3, -1, 2, -4, -1, 2, 1, 1, -7, 0, 0, -2, 7, -1, -3, -3, -2, 2, -3,
0, 1, -3, -1, 3, -2, -1, 2, 1, 1, -6, -1, -1, -3, 7, 0, -3, -2, -2, 3,
-2, -1, 1, -3, -1, 2, -3, -2, 2, 1, 1, -6, -1, 1, -3, 6, 1, -3, -2, -3,
2, -2, -1, 2, -2, -2, 3, -1, -2, 2, 0, 2, -5, -3, 1, -4, 6, 2, -3, -2,
-3, 3, -1, -1, 2, -2, -2, 2, -2, -3, 2, 0, 2, -5, -3, 2, -3, 4, 3, -4,
-2, -3, 1, -1, -2, 2, -1, -2, 2, 0, -2, 1, 0, 2, -4, -4, 1, -4, 4, 4,
-4, -2, -3, 2, 0, -2, 2, -1, -2, 2, -1, -3, 1, 1, 2, -3, -4, 2, -3, 3,
4, -3, -1, -3, 1, -1, -2, 2, -1, -3, 2, 0, -2, 1, 0, 2, -3, -5, 1, -3,
3, 4, -3, -1, -3, 2, 1, -2, 2, -1, -3, 1, 0, -4, 1, 1, 2, -2, -5, 2,
-2, 2, 5, -3, -2, -3, 0, 1, -3, 1, 0, -3, 1, 1, -2, 1, 1, 1, -1, -6,
1, -2, 0, 6, -3, -2, -3, 0, 2, -3, 1, 0, -3, 1, 1, -3, 0, 1, 1, -1,
-6, 1, -1, 0, 5, -2, -2, -3, 0, 1, -3, 1, 0, -3, 0, 1, -2, 0, 1, 1,
-1, -6, 0, -2, -1, 6, -2, -2, -3, 0, 2, -3, 1, 1, -2, 0, 1, -3, -1, 1,
1, 0, -6, 0, 0, -1, 6, -1, -2, -2, -2, 2, -3, 0, 1, -2, 0, 2, -2, 0,
1, 1, 0, -5, -1, -1, -2, 5, -1, -2, -2, -2, 3, -2, 0, 1, -2, -1, 1, -3,
-1, 1, 1, 1, -5, -1, 1, -2, 5, 0, -3, -2, -3, 2, -2, -1, 2, -2, -1, 2,
-1, -1, 1, 1, 1, -4, -2, 0, -3, 5, 1, -3, -2, -3, 3, -1, -1, 2, -2, -1,
1, -2, -2, 1, 1, 1, -4, -2, 1, -2, 4, 1, -3, -1, -3, 2, -2, -1, 2, -2,
-1, 1, -1, -1, 1, 1, 1, -4, -3, 1, -3, 4, 2, -3, -1, -3, 2, -1, -2, 2,
-1, -1, 1, -2, -2, 1, 1, 1, -3, -3, 2, -2, 3, 3, -3, -1, -3, 1, -1, -2,
2, -1, -2, 1, 0, -2, 1, 1, 1, -3, -4, 1, -3, 2, 3, -3, -1, -3, 1, 1,
-2, 2, -1, -2, 1, -1, -3, 0, 1, 1, -2, -4, 1, -2, 2, 3, -3, -1, -3, 1,
0, -3, 2, -1, -2, 1, 0, -2, 0, 1, 1, -2, -4, 1, -3, 1, 4, -2, -1, -3,
1, 1, -3, 1, 0, -2, 1, -1, -3, 0, 1, 1, -2, -4, 1, -1, 1, 4, -2, -1,
-3, 0, 1, -3, 1, 0, -2, 1, 0, -2, 0, 1, 1, -1, -5, 0, -2, 0, 4, -2,
-1, -3, 0, 2, -3, 1, 0, -2, 0, 0, -2, -1, 1, 1, 0, -5, 0, 0, -1, 4,
-1, -1, -2, -1, 1, -3, 0, 1, -2, 0, 1, -2, 0, 0, 1, 0, -4, -1, -1, -2,
4, -1, -2, -2, -2, 2, -2, 0, 1, -2, 0, 0, -2, -1, 0, 1, 0, -4, -1, 0,
-1, 4, -1, -2, -2, -2, 2, -3, 0, 1, -2, 0, 1, -1, -1, 0, 1, 0, -4, -1,
0, -2, 4, 0, -2, -2, -2, 2, -2, -1, 1, -2, 0, 0, -2, -1, 0, 1, 1, -4,
-2, 1, -2, 4, 0, -2, -1, -3, 2, -2, -1, 2, -2, -1, 1, -1, -1, 0, 1, 1,
-3, -2, 0, -2, 3, 1, -2, -1, -3, 2, -1, -1, 1, -1, -1, 1, -2, -2, 0, 1,
1, -3, -3, 1, -2, 3, 2, -2, -1, -3, 1, -1, -2, 2, -1, -1, 1, -1, -1, 0,
1, 1, -2, -3, 0, -2, 2, 2, -2, -1, -3, 1, 0, -2, 1, -1, -1, 1, -1, -2,
0, 1, 1, -2, -3, 1, -1, 2, 2, -2, -1, -3, 1, -1, -2, 2, -1, -1, 1, -1,
-1, 0, 1, 1, -2, -3, 0, -2, 1, 3, -2, -1, -3, 1, 1, -2, 1, -1, -1, 1,
-1, -2, -1, 1, 1, -2, -4, 1, -1, 1, 3, -2, -1, -3, 0, 0, -3, 1, 0, -2,
1, 0, -1, 0, 0, 1, -1, -4, 0, -2, 0, 3, -2, -1, -2, 0, 2, -2, 1, 0,
-2, 0, -1, -2, -1, 0, 1, -1, -4, 0, -1, 0, 3, -2, -1, -2, -1, 1, -3, 1,
0, -2, 0, 0, -1, 0, 0, 1, -1, -4, 0, -1, -1, 3, -1, -1, -2, -1, 2, -2,
0, 0, -2, 0, 0, -2, -1, 0, 1, 0, -4, -1, 0, -1, 3, -1, -1, -2, -2, 1,
-3, 0, 1, -2, 0, 0, -1, -1, 0, 1, 0, -3, -1, -1, -2, 3, 0, -1, -1, -2,
2, -2, 0, 1, -2, 0, 0, -2, -1, 0, 1, 0, -3, -1, 0, -1, 3, 0, -2, -1,
-2, 1, -2, -1, 1, -1, 0, 0, -1, -1, 0, 1, 1, -3, -2, 0, -2, 2, 1, -2,
-1, -2, 2, -1, -1, 1, -1, 0, 0, -2, -1, 0, 1, 1, -3, -2, 0, -1, 2, 1,
-2, -1, -2, 1, -2, -2, 1, -1, 0, 0, -1, -1, 0, 1, 1, -3, -2, 0, -2, 2,
1, -2, -1, -2, 1, -1, -2, 1, -1, 0, 0, -1, -1, -1, 1, 1, -2, -2, 0, -1,
2, 1, -2, -1, -3, 1, -1, -2, 1, -1, -1, 0, -1, -1, 0, 0, 1, -2, -3, 0,
-2, 1, 2, -2, -1, -2, 0, 0, -2, 1, -1, -1, 0, -1, -1, -1, 0, 1, -1, -3,
0, -1, 1, 2, -2, -1, -2, 0, 0, -3, 1, 0, -1, 0, -1, -1, 0, 0, 1, -1,
-3, 0, -1, 0, 2, -1, -1, -2, -1, 1, -2, 1, 0, -1, 1, -1, -1, -1, 0, 1,
-1, -3, 0, -1, 0, 2, -1, -1, -2, -1, 1, -3, 1, 0, -1, 0, -1, -1, 0, 0,
1, -1, -3, 0, -1, 0, 2, -1, -1, -2, -1, 1, -2, 0, 0, -1, 0, -1, -1, -1,
0, 1, -1, -3, -1, 0, 0, 2, -1, -1, -2, };
