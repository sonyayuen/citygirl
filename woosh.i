# 1 "woosh.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "woosh.c"


const unsigned int woosh_sampleRate = 11025;
const unsigned int woosh_length = 6736;

const signed char woosh_data[] = {
-3, -4, -3, -1, -1, -1, -1, -1, -1, -1, -1, -1, -2, -3, -4, -4, -4, -5, -5, -3, -3,
-3, -4, -5, -6, -7, -7, -7, -8, -10, -11, -12, -14, -15, -17, -17, -17, -18, -18, -18, -16,
-15, -14, -13, -13, -11, -9, -7, -6, -4, -3, -3, 0, 2, 3, 5, 8, 11, 12, 12, 14,
16, 17, 16, 16, 16, 15, 14, 11, 10, 8, 6, 4, 0, -2, -4, -7, -10, -12, -14, -14,
-12, -11, -10, -9, -6, -4, -3, -2, -1, 0, 2, 3, 4, 5, 7, 8, 10, 11, 12, 11,
11, 12, 12, 12, 11, 10, 8, 6, 4, 2, 0, -2, -3, -4, -8, -10, -12, -14, -14, -14,
-15, -16, -16, -16, -18, -19, -19, -18, -16, -15, -14, -12, -10, -8, -4, -2, 0, 3, 6, 7,
8, 9, 8, 9, 9, 10, 11, 10, 10, 11, 10, 9, 8, 7, 6, 4, 3, 2, 1, 1,
0, -2, -4, -5, -4, -4, -4, -5, -4, -3, -1, 0, 3, 5, 6, 8, 10, 13, 14, 15,
15, 14, 12, 11, 11, 10, 11, 11, 12, 12, 11, 10, 9, 7, 6, 6, 4, 1, -1, -2,
-3, -5, -6, -9, -10, -10, -12, -13, -14, -15, -17, -17, -18, -17, -15, -15, -15, -14, -13, -13,
-10, -8, -6, -4, -4, -4, -4, -3, -2, -1, 2, 3, 4, 4, 4, 5, 3, 2, 1, 1,
2, 2, 1, 0, -1, -2, -2, -1, -1, 0, 1, 0, 1, 2, 3, 4, 4, 5, 6, 6,
5, 3, 4, 4, 2, 0, -1, 0, 0, -1, -1, -1, -2, -2, -2, -1, -3, -4, -5, -6,
-7, -6, -4, -6, -5, -4, -3, -2, -3, -4, -3, -3, -4, -4, -3, -2, 0, -1, -2, -2,
-2, -3, -6, -7, -9, -10, -11, -12, -14, -13, -12, -12, -11, -11, -11, -9, -9, -8, -7, -9,
-10, -10, -10, -11, -11, -11, -10, -9, -9, -10, -8, -6, -3, -2, -1, 0, -1, -3, -5, -5,
-5, -5, -6, -4, -1, 1, 1, 1, 2, 3, 3, 1, 1, 1, 1, 0, 2, 5, 4, 3,
5, 5, 5, 6, 7, 8, 7, 6, 5, 5, 5, 6, 5, 6, 6, 8, 10, 10, 11, 10,
9, 7, 7, 6, 4, 3, 2, 0, -4, -5, -6, -12, -12, -12, -13, -11, -11, -13, -14, -16,
-17, -16, -17, -17, -15, -14, -12, -10, -7, -4, -1, 1, 2, 4, 5, 7, 9, 12, 16, 18,
20, 19, 17, 14, 11, 9, 8, 7, 7, 6, 5, 6, 8, 6, 4, 5, 5, 5, 4, 4,
3, 2, -1, -1, -2, -4, -6, -9, -10, -9, -7, -6, -3, -1, 0, 4, 8, 9, 8, 7,
7, 7, 7, 6, 6, 6, 5, 5, 6, 8, 6, 5, 4, 4, 3, 3, 4, 2, 2, -3,
-4, -3, -4, -6, -8, -10, -14, -16, -17, -18, -17, -19, -22, -25, -26, -26, -25, -24, -22, -21,
-21, -19, -18, -18, -17, -15, -15, -15, -15, -15, -14, -14, -13, -12, -10, -7, -6, -5, -6, -7,
-6, -7, -7, -7, -10, -11, -11, -12, -12, -12, -14, -17, -17, -16, -17, -17, -17, -17, -17, -17,
-18, -16, -15, -13, -12, -12, -10, -7, -4, -2, 3, 6, 9, 15, 21, 22, 25, 27, 25, 25,
22, 19, 16, 14, 10, 8, 9, 8, 7, 5, 3, 2, -2, -5, -5, -8, -9, -8, -7, -6,
-7, -10, -14, -17, -19, -20, -20, -19, -18, -16, -16, -13, -11, -11, -10, -9, -9, -10, -9, -9,
-11, -11, -13, -15, -18, -19, -19, -18, -16, -16, -14, -13, -11, -12, -10, -8, -7, -4, -3, -3,
-2, -1, -2, -3, -6, -9, -11, -10, -7, -5, -2, 1, 5, 6, 5, 5, 7, 11, 13, 16,
17, 17, 15, 13, 14, 13, 11, 9, 12, 14, 14, 15, 13, 12, 12, 10, 10, 11, 11, 12,
11, 13, 15, 15, 17, 16, 17, 17, 16, 16, 13, 12, 12, 12, 10, 10, 9, 6, 5, 4,
2, 0, 0, -1, -5, -5, -4, -6, -7, -6, -5, -5, -6, -9, -11, -10, -9, -7, -4, -1,
2, 2, -1, -3, -4, -3, -2, -3, -5, -7, -9, -10, -13, -13, -12, -10, -10, -9, -7, -5,
-3, -1, -1, -2, -3, -3, -1, -1, -3, -5, -8, -9, -9, -10, -10, -8, -6, -5, -4, -5,
-5, -4, -6, -6, -6, -5, -5, -7, -7, -6, -3, 0, -1, -3, 1, -1, -5, -7, -11, -14,
-15, -19, -21, -23, -25, -27, -29, -29, -28, -23, -21, -20, -19, -19, -21, -20, -21, -24, -26, -25,
-20, -17, -14, -10, -10, -11, -10, -10, -9, -9, -10, -11, -15, -21, -24, -26, -27, -29, -34, -36,
-35, -32, -28, -30, -29, -29, -31, -33, -34, -35, -35, -31, -27, -23, -18, -18, -15, -14, -10, -4,
3, 8, 9, 15, 17, 16, 16, 16, 15, 17, 20, 22, 22, 19, 21, 20, 22, 23, 22, 24,
24, 23, 21, 19, 16, 10, 7, 4, 1, -3, -6, -8, -8, -6, -7, -7, -2, 4, 7, 5,
3, 1, -2, -6, -5, -2, 0, -1, -4, -6, -6, -7, -7, -7, -8, -5, -3, -7, -6, -6,
-8, -13, -16, -17, -19, -20, -24, -30, -33, -32, -33, -33, -30, -28, -25, -21, -17, -11, -11, -9,
-10, -11, -8, -6, -5, -5, -2, 1, 4, 4, 1, 1, 1, 1, -1, 2, 3, 1, 0, -2,
-5, -5, -5, -5, -7, -11, -16, -18, -21, -22, -23, -21, -19, -22, -22, -21, -18, -17, -17, -18,
-17, -12, -11, -8, -7, -7, -5, -5, -1, 1, 3, 5, 5, 7, 8, 10, 14, 18, 19, 17,
12, 8, 6, 5, 5, 4, 2, 1, 0, 0, 0, 1, 4, 2, -1, 1, -2, -3, -5, -7,
-5, -4, -2, 0, 2, 4, 2, 0, -2, -5, -6, -6, -7, -8, -8, -9, -8, -5, -6, -8,
-8, -9, -11, -11, -10, -7, -8, -8, -7, -7, -6, -5, -4, -1, 0, 0, -1, 0, 3, 3,
7, 12, 15, 18, 14, 13, 15, 14, 17, 18, 14, 11, 10, 7, 3, 3, 6, 7, 8, 6,
5, 4, 1, 3, 1, -3, -3, -4, -4, -6, -6, -7, -7, -5, -1, 2, 1, 2, 4, 6,
7, 8, 6, 4, 7, 9, 9, 9, 10, 11, 12, 13, 15, 16, 19, 22, 24, 25, 23, 19,
17, 16, 11, 10, 10, 8, 6, 1, -2, -1, -3, -6, -7, -10, -11, -14, -19, -21, -19, -17,
-12, -10, -12, -13, -15, -14, -14, -12, -13, -15, -11, -11, -14, -15, -14, -11, -9, -8, -6, -6,
-4, 2, 1, -3, -3, -5, -10, -15, -15, -17, -20, -21, -26, -31, -33, -36, -41, -44, -48, -51,
-49, -49, -49, -50, -49, -52, -55, -53, -50, -41, -35, -32, -28, -21, -18, -13, -13, -11, -5, -6,
-5, -1, 0, 0, 4, 7, 11, 15, 13, 15, 16, 15, 7, 2, -1, -4, -11, -18, -19, -22,
-22, -25, -33, -38, -43, -44, -40, -40, -38, -35, -33, -30, -25, -21, -18, -12, -10, -10, -7, -3,
2, 7, 13, 20, 24, 25, 22, 20, 24, 27, 25, 19, 16, 12, 9, 10, 8, 7, 7, 2,
-8, -13, -17, -18, -21, -27, -27, -26, -27, -29, -28, -27, -25, -24, -21, -22, -26, -23, -20, -17,
-12, -6, -5, -4, 1, 5, 9, 13, 14, 14, 17, 17, 21, 24, 22, 23, 26, 26, 25, 23,
21, 17, 16, 16, 11, 8, 6, 5, 3, 1, 1, 1, 1, -4, -8, -7, -10, -13, -13, -15,
-17, -19, -21, -22, -22, -21, -19, -19, -16, -12, -10, -5, -5, -2, 1, 1, 5, 3, 3, 5,
6, 2, 2, 3, 2, 4, 2, 4, 6, 7, 9, 11, 16, 11, 12, 14, 9, 5, 4, 4,
3, 2, 1, 2, -1, -2, -6, -9, -8, -9, -7, -2, -1, -1, 3, 5, 9, 9, 11, 14,
13, 10, 9, 2, -2, 0, -2, -1, -1, -3, 0, 0, -4, -7, -9, -9, -13, -14, -16, -19,
-23, -24, -26, -27, -25, -27, -26, -23, -25, -26, -26, -23, -21, -16, -11, -9, -4, 0, 2, 1,
2, 5, 7, 10, 9, 4, 4, 2, -5, -8, -12, -17, -24, -28, -31, -37, -41, -42, -42, -44,
-43, -43, -43, -46, -47, -48, -50, -49, -49, -48, -46, -41, -36, -31, -26, -24, -25, -24, -24, -29,
-30, -28, -28, -27, -29, -32, -34, -33, -31, -31, -28, -28, -28, -24, -22, -19, -13, -9, -4, 0,
3, 6, 9, 15, 18, 20, 20, 21, 21, 24, 21, 20, 22, 20, 19, 17, 16, 13, 13, 16,
17, 16, 18, 18, 17, 20, 17, 12, 9, 5, -1, 0, 1, 0, 2, 2, -1, -2, -5, -2,
-1, -4, -2, -3, -3, -7, -9, -9, -6, -5, -3, -2, -1, -2, -5, -4, -5, -10, -11, -10,
-13, -10, -8, -4, -1, -2, -2, -4, -4, -3, -7, -8, -6, -5, -7, -8, -10, -13, -13, -10,
-11, -9, -8, -12, -11, -10, -10, -9, -10, -13, -10, -5, -8, -10, -8, -9, -12, -15, -14, -14,
-17, -20, -19, -20, -23, -23, -22, -24, -25, -21, -19, -15, -13, -10, -7, -3, -1, -3, -4, -6,
-7, -8, -8, -7, -8, -6, -2, 1, 5, 2, 3, 4, 7, 8, 5, 8, 7, 5, 5, 3,
1, -1, -6, -6, -10, -11, -11, -12, -12, -12, -11, -5, -4, -5, -6, -9, -9, -11, -13, -16,
-19, -21, -18, -14, -14, -15, -16, -16, -16, -14, -10, -6, -5, -5, -5, -7, -8, -10, -12, -11,
-9, -5, -1, -4, 1, 5, 9, 15, 16, 21, 22, 26, 31, 33, 35, 36, 39, 39, 37, 41,
42, 43, 46, 41, 38, 36, 35, 30, 24, 20, 17, 14, 13, 11, 6, 2, 0, -1, -8, -10,
-10, -12, -8, -8, -12, -11, -12, -9, -10, -8, -6, -7, -8, -13, -11, -12, -15, -16, -14, -15,
-16, -19, -18, -14, -17, -21, -22, -21, -24, -25, -22, -21, -17, -14, -15, -16, -18, -16, -16, -19,
-22, -22, -25, -28, -26, -27, -26, -20, -19, -19, -17, -16, -17, -18, -17, -17, -15, -13, -12, -11,
-8, -6, -3, 0, 6, 7, 3, 3, 3, 3, 4, 1, 2, -2, -4, 1, 2, 5, 7, 12,
14, 15, 12, 14, 19, 20, 21, 22, 25, 26, 27, 26, 26, 20, 16, 17, 14, 13, 12, 15,
16, 12, 7, 6, 5, 2, 0, -3, -7, -7, -8, -5, -4, -2, 3, 5, 4, 7, 6, 2,
1, 0, -1, 1, -1, -5, -3, 1, 5, 8, 6, 3, 0, -3, -2, -5, -13, -16, -19, -21,
-22, -24, -26, -24, -21, -20, -16, -15, -11, -7, -1, 3, 6, 8, 13, 18, 22, 22, 25, 27,
29, 30, 28, 32, 34, 36, 42, 49, 56, 61, 62, 61, 57, 54, 54, 52, 49, 41, 36, 36,
36, 32, 24, 18, 13, 8, 6, 5, 4, 5, 8, 9, -1, -5, -5, -4, -7, -17, -24, -25,
-26, -24, -23, -28, -31, -33, -28, -24, -26, -29, -26, -25, -28, -29, -30, -32, -32, -30, -28, -26,
-26, -23, -19, -14, -16, -16, -14, -14, -13, -18, -21, -18, -19, -15, -13, -19, -16, -17, -22, -23,
-26, -30, -29, -35, -36, -36, -35, -29, -25, -21, -20, -21, -24, -26, -30, -33, -33, -35, -38, -37,
-32, -22, -12, -2, 6, 15, 26, 35, 42, 46, 47, 46, 46, 41, 38, 31, 25, 28, 26, 17,
9, 11, 7, 6, 8, 8, 9, 11, 8, -2, -9, -18, -23, -24, -28, -31, -34, -35, -31, -31,
-29, -26, -23, -16, -12, -6, 6, 15, 24, 23, 25, 31, 30, 34, 41, 38, 36, 38, 33, 31,
30, 28, 29, 22, 18, 17, 15, 10, 8, 2, -10, -12, -16, -20, -16, -11, -14, -12, -11, -12,
-11, -10, -7, -4, 3, 13, 19, 29, 34, 34, 36, 37, 41, 37, 32, 34, 31, 22, 20, 15,
3, -8, -15, -18, -28, -29, -33, -46, -51, -59, -62, -64, -63, -53, -46, -42, -33, -25, -14, -12,
-15, -11, -3, 7, 14, 21, 27, 31, 37, 40, 30, 21, 16, 13, 11, 4, -7, -11, -17, -24,
-27, -32, -33, -33, -28, -29, -29, -26, -26, -21, -21, -27, -29, -27, -29, -28, -22, -9, 0, 4,
7, 9, 10, 12, 15, 20, 25, 27, 31, 29, 18, 12, 7, -12, -24, -19, -17, -27, -30, -31,
-28, -25, -30, -39, -60, -76, -80, -85, -97, -99, -93, -94, -91, -88, -90, -85, -80, -82, -88, -81,
-73, -69, -59, -49, -41, -38, -35, -29, -15, -2, 5, 17, 24, 33, 41, 35, 26, 31, 35, 32,
27, 31, 32, 30, 27, 17, 12, 5, -9, -19, -22, -24, -30, -36, -48, -57, -63, -71, -74, -79,
-79, -72, -69, -72, -73, -75, -80, -78, -63, -47, -37, -28, -16, -2, 13, 27, 21, 26, 40, 54,
63, 70, 72, 75, 90, 84, 72, 65, 59, 54, 49, 44, 34, 15, -7, -15, -15, -8, -6, -3,
-16, -36, -42, -46, -49, -42, -31, -34, -30, -29, -14, 14, 22, 31, 40, 43, 40, 43, 46, 41,
47, 53, 37, 43, 53, 56, 67, 68, 64, 63, 55, 42, 38, 37, 35, 31, 37, 38, 38, 39,
32, 36, 38, 34, 36, 42, 31, 25, 26, 26, 22, 13, 24, 16, 17, 23, 19, 21, 22, 34,
41, 44, 39, 42, 29, 15, 16, 7, 6, 7, 4, -7, -20, -14, -14, -17, -22, -40, -40, -43,
-57, -64, -62, -75, -87, -85, -91, -87, -90, -88, -102, -116, -115, -123, -122, -128, -128, -128, -128, -121,
-107, -90, -87, -76, -70, -57, -63, -57, -46, -42, -32, -28, -15, -4, 16, 32, 38, 25, 27, 40,
42, 49, 51, 62, 58, 67, 80, 77, 83, 93, 91, 93, 97, 96, 108, 102, 108, 109, 102, 103,
100, 101, 91, 71, 54, 35, 33, 24, 12, 18, 6, 3, -2, -2, 1, -7, -1, -1, 0, 17,
38, 46, 53, 61, 52, 62, 70, 75, 76, 82, 83, 79, 90, 85, 87, 74, 51, 47, 43, 34,
20, 0, -13, -22, -29, -29, -29, -36, -39, -47, -60, -83, -106, -124, -128, -128, -128, -128, -128, -128,
-108, -85, -79, -78, -70, -55, -47, -42, -33, -22, -12, 3, 17, 25, 41, 56, 76, 88, 93, 91,
86, 97, 92, 93, 90, 76, 74, 69, 67, 53, 54, 45, 40, 32, 11, 13, 6, 0, 8, 8,
-1, 3, 9, 9, -10, -10, -11, -32, -16, -11, -12, -11, 11, 26, 26, 43, 52, 69, 75, 78,
72, 76, 85, 82, 84, 77, 75, 74, 79, 67, 49, 49, 18, -3, -17, -39, -47, -73, -98, -121,
-128, -128, -128, -128, -128, -128, -121, -119, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128,
-128, -128, -128, -128, -128, -116, -116, -107, -99, -99, -88, -85, -89, -80, -75, -70, -56, -51, -35, -38,
-38, -21, -9, -21, -44, -33, -35, -39, -34, -43, -52, -72, -80, -85, -99, -104, -107, -98, -103, -95,
-62, -40, -36, -33, -26, -12, -4, -20, -20, -15, -23, -16, -19, -24, -28, -42, -25, -36, -46, -50,
-62, -52, -58, -71, -68, -60, -70, -50, -45, -53, -38, -53, -55, -47, -49, -54, -67, -89, -116, -125,
-128, -128, -106, -88, -85, -66, -56, -59, -48, -26, -18, -20, -25, -28, -30, -33, -23, -46, -67, -81,
-87, -94, -125, -112, -126, -127, -98, -104, -110, -122, -110, -116, -128, -116, -107, -108, -93, -75, -77, -89,
-69, -47, -45, -5, 18, 39, 64, 90, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127,
127, 127, 127, 127, 123, 123, 95, 91, 70, 71, 85, 70, 97, 95, 70, 80, 87, 82, 74, 79,
57, 31, 42, 32, 43, 70, 52, 45, 51, 75, 67, 61, 70, 56, 50, 45, 50, 34, 20, -7,
-42, -47, -67, -71, -59, -79, -93, -98, -116, -112, -116, -121, -108, -106, -97, -115, -116, -121, -128, -128,
-128, -128, -128, -127, -128, -128, -128, -128, -128, -128, -124, -116, -103, -89, -82, -60, -28, -43, -43, -33,
-51, -64, -54, -46, -36, -33, -48, -50, -39, -35, -21, -20, -15, -8, -12, -13, -12, -10, -17, -19,
-38, -62, -88, -98, -95, -93, -128, -127, -100, -94, -91, -91, -79, -87, -93, -119, -128, -128, -119, -109,
-92, -87, -83, -66, -76, -97, -103, -91, -77, -61, -63, -70, -68, -45, -33, -18, -11, -20, -16, -11,
-24, -35, -13, 1, 10, 10, -12, -18, -14, -28, -37, -25, -42, -72, -83, -103, -112, -90, -86, -104,
-87, -70, -63, -48, -27, -9, 8, 32, 46, 67, 100, 127, 122, 108, 114, 114, 111, 100, 85, 97,
116, 106, 95, 109, 97, 96, 118, 110, 123, 127, 127, 127, 127, 127, 121, 114, 123, 127, 127, 127,
127, 127, 117, 102, 92, 59, 36, 42, 37, 38, 37, 15, 1, -4, -7, -9, -30, -54, -58, -46,
-40, -38, -40, -43, -47, -48, -36, -21, 2, 29, 57, 95, 127, 127, 127, 127, 127, 127, 127, 127,
127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 125, 78, 46, 27, 7, -30, -48,
-46, -52, -44, -32, -20, -39, -24, 3, 1, -9, -5, -4, 6, 10, 11, 23, 21, 38, 76, 93,
69, 65, 77, 87, 103, 93, 89, 110, 113, 108, 100, 80, 55, 39, 13, -6, 17, 39, 45, 34,
27, 4, -5, -17, -46, -66, -91, -92, -89, -85, -84, -80, -78, -75, -79, -88, -97, -95, -73, -57,
-58, -59, -60, -61, -43, -45, -46, -36, -26, -23, 0, 41, 69, 89, 97, 99, 97, 89, 74, 73,
85, 81, 53, 40, 31, 27, -4, -19, -13, -25, -35, -59, -67, -58, -46, -50, -78, -98, -101, -125,
-128, -128, -128, -128, -128, -128, -117, -103, -91, -95, -108, -124, -120, -118, -128, -123, -77, -47, -63, -42,
-20, -2, 29, 35, 39, 57, 76, 81, 89, 93, 75, 70, 64, 32, 16, 30, 29, 17, 44, 61,
37, 18, 19, 30, 5, -23, -28, -46, -44, -57, -73, -83, -99, -104, -99, -103, -104, -93, -93, -80,
-77, -93, -108, -116, -125, -123, -113, -97, -107, -111, -93, -88, -77, -65, -39, -30, -59, -84, -76, -70,
-60, -64, -77, -87, -94, -75, -78, -72, -59, -75, -65, -77, -83, -73, -77, -75, -68, -52, -47, -32,
-12, 25, 6, -19, -3, 9, 12, 22, 24, 20, 21, 21, 18, 3, 9, 6, 4, -4, -10, -25,
-20, -27, -30, -24, -35, -51, -81, -97, -90, -89, -96, -102, -108, -98, -100, -108, -111, -110, -128, -128,
-128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128,
-128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -123, -112, -86, -78, -54, -17, -2, 11, 15,
28, 56, 54, 62, 53, 47, 33, 29, 35, 50, 65, 68, 92, 112, 123, 127, 118, 119, 121, 111,
113, 102, 93, 78, 74, 64, 44, 49, 22, -15, -46, -91, -104, -128, -128, -128, -128, -128, -128, -128,
-128, -117, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128,
-128, -128, -128, -120, -128, -128, -128, -128, -116, -120, -105, -108, -107, -110, -102, -80, -79, -64, -40, -20,
-8, 9, 9, -1, -10, 19, 30, 26, 28, 28, 16, 0, 25, 20, 33, 39, 23, 32, 24, 23,
16, 30, 29, 15, 25, 32, 44, 46, 45, 48, 73, 86, 79, 100, 106, 98, 106, 94, 74, 44,
32, 30, 34, 42, 34, 22, 20, 39, 44, 41, 40, 45, 44, 39, 46, 67, 76, 85, 86, 97,
100, 87, 99, 109, 104, 100, 101, 79, 54, 52, 72, 57, 57, 80, 83, 95, 105, 127, 127, 127,
127, 127, 118, 101, 90, 70, 46, 30, 16, 14, 14, 7, 11, 5, -1, -15, -10, -24, -49, -53,
-56, -60, -61, -64, -79, -81, -76, -66, -77, -85, -82, -79, -75, -81, -87, -82, -68, -58, -45, -46,
-49, -55, -73, -86, -80, -77, -77, -78, -86, -81, -73, -70, -81, -83, -79, -83, -94, -106, -99, -102,
-114, -122, -121, -126, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -107, -90, -75, -71, -59,
-54, -57, -61, -64, -60, -52, -54, -74, -64, -53, -35, -26, -34, -23, -4, 7, 7, 22, 26, 29,
39, 49, 70, 84, 86, 101, 114, 113, 98, 81, 74, 78, 89, 91, 91, 73, 72, 75, 71, 69,
72, 74, 67, 79, 68, 70, 86, 79, 67, 56, 42, 34, 22, 26, 38, 27, 17, 16, 22, 20,
26, 26, 19, 33, 59, 58, 51, 39, 47, 69, 62, 54, 44, 53, 50, 39, 48, 60, 69, 81,
98, 100, 93, 89, 81, 88, 91, 71, 54, 47, 49, 49, 37, 17, 14, 17, 19, 23, 10, 3,
-1, -7, -13, -35, -33, -42, -67, -64, -72, -70, -73, -67, -51, -54, -33, -45, -49, -24, -18, 2,
-3, 6, 25, 10, 8, 15, 10, 1, 4, 19, 35, 48, 61, 67, 69, 76, 71, 73, 97, 110,
101, 85, 85, 90, 85, 98, 108, 97, 109, 107, 103, 111, 104, 93, 80, 82, 98, 117, 125, 125,
118, 101, 75, 60, 57, 41, 17, 1, 2, -1, -10, -7, 4, 18, 26, 26, 13, 10, 10, -5,
-4, -23, -37, -47, -86, -102, -105, -119, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128,
-128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -121, -118, -112, -86, -94, -101, -78, -49, -40,
-41, -61, -76, -77, -76, -72, -72, -68, -73, -62, -29, -11, 0, 10, 4, 33, 54, 66, 71, 72,
84, 86, 95, 104, 109, 115, 123, 124, 127, 127, 113, 99, 109, 124, 127, 127, 127, 127, 127, 127,
124, 127, 116, 91, 95, 94, 83, 79, 66, 57, 54, 30, 39, 34, 13, 3, 22, 35, 37, 32,
40, 57, 54, 39, 20, 11, -7, -23, -34, -33, -33, -36, -50, -42, -24, -12, -11, -7, 0, -4,
6, 9, 14, 20, 30, 39, 44, 42, 23, 20, 7, 1, 12, 9, 11, -6, -15, -9, -2, 11,
13, 3, 5, 10, 1, 1, -12, -10, -3, -12, -12, -13, -4, 8, 5, 18, 26, 23, 38, 49,
59, 62, 58, 56, 49, 41, 53, 50, 42, 40, 38, 40, 33, 31, 26, 31, 39, 40, 31, 47,
72, 93, 103, 109, 122, 127, 127, 127, 127, 127, 127, 122, 127, 117, 96, 68, 48, 33, 23, 28,
12, -12, -20, -18, -31, -26, -33, -32, -45, -37, -35, -50, -68, -94, -102, -98, -87, -107, -116, -119,
-121, -128, -128, -128, -128, -128, -128, -128, -128, -115, -103, -109, -116, -108, -106, -116, -120, -116, -118, -127,
-128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -128, -122,
-120, -124, -121, -116, -116, -114, -116, -107, -106, -104, -119, -115, -102, -88, -77, -80, -75, -72, -64, -72,
-61, -47, -40, -46, -50, -40, -47, -51, -44, -35, -38, -43, -41, -55, -58, -51, -55, -61, -44, -41,
-55, -43, -38, -33, -33, -21, -22, -29, -16, -2, 5, 0, 1, -3, -12, -15, -7, -11, -16, -19,
-31, -37, -44, -50, -53, -58, -59, -52, -44, -39, -37, -29, -21, -23, -24, -8, -7, -19, -21, -21,
-17, -29, -49, -58, -63, -59, -58, -65, -74, -83, -77, -87, -93, -86, -91, -90, -97, -94, -84, -86,
-94, -87, -70, -60, -44, -23, -15, -15, -13, -10, -17, -27, -25, -22, -18, -11, -3, 5, 4, 9,
18, 19, 10, 6, 7, 4, 4, -2, -3, -7, -12, -17, -13, -10, -17, -26, -28, -30, -39, -39,
-38, -36, -36, -33, -33, -35, -23, -13, -15, -12, -16, -31, -26, -30, -33, -38, -48, -43, -42, -42,
-41, -40, -46, -53, -56, -64, -69, -71, -73, -72, -62, -57, -58, -57, -44, -34, -27, -20, -19, -18,
-15, -5, 0, -1, 0, -4, -11, -19, -29, -20, -8, -13, -24, -22, -20, -23, -17, -17, -22, -33,
-36, -47, -66, -78, -85, -89, -97, -100, -103, -100, -96, -91, -94, -97, -92, -82, -84, -91, -94, -95,
-92, -95, -80, -76, -71, -61, -52, -42, -41, -31, -28, -20, -6, 3, 13, 18, 15, 8, 7, 7,
-2, -6, -14, -11, -5, -4, -5, -7, -4, 5, 9, 7, 9, 12, 5, -10, -24, -31, -34, -47,
-61, -65, -63, -61, -69, -79, -77, -76, -77, -71, -65, -68, -67, -68, -70, -76, -77, -66, -54, -48,
-51, -58, -69, -73, -77, -94, -103, -100, -95, -93, -92, -83, -81, -91, -95, -89, -78, -74, -70, -61,
-69, -76, -80, -77, -72, -68, -55, -52, -61, -64, -62, -59, -62, -65, -66, -61, -59, -54, -45, -46,
-47, -42, -37, -38, -25, -5, 4, 2, 16, 15, 12, 23, 23, 33, 33, 34, 46, 57, 67, 77,
85, 89, 104, 108, 123, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 127, 120, 118, 122, 122,
121, 114, 109, 96, 94, 91, 91, 88, 87, 88, 84, 93, 86, 83, 87, 88, 82, 73, 65, 53,
53, 54, 55, 49, 47, 39, 34, 46, 53, 49, 43, 47, 40, 36, 30, 31, 33, 33, 32, 24,
21, 22, 29, 27, 24, 22, 18, 10, 9, 11, 17, 26, 27, 30, 35, 37, 40, 45, 50, 48,
47, 51, 45, 41, 39, 23, 13, 5, 1, 7, 9, 7, 0, -8, -5, -5, 3, 17, 19, 24,
25, 21, 23, 25, 20, 24, 26, 27, 29, 31, 33, 38, 36, 28, 30, 29, 29, 27, 30, 31,
30, 30, 36, 33, 27, 28, 27, 24, 25, 28, 26, 27, 21, 24, 23, 20, 14, 7, 1, -10,
-13, -15, -22, -25, -29, -27, -25, -29, -31, -30, -26, -25, -26, -30, -27, -23, -23, -28, -35, -30,
-26, -30, -33, -37, -31, -29, -32, -31, -38, -37, -44, -43, -44, -50, -46, -47, -46, -53, -50, -45,
-48, -45, -45, -44, -39, -33, -35, -42, -52, -59, -61, -64, -70, -68, -63, -63, -62, -65, -66, -70,
-72, -74, -74, -71, -71, -71, -72, -73, -77, -72, -69, -68, -66, -65, -66, -65, -60, -62, -59, -57,
-54, -48, -50, -50, -47, -45, -43, -44, -37, -31, -29, -26, -29, -28, -24, -17, -6, 0, 4, 12,
15, 12, 8, 11, 12, 15, 17, 16, 16, 13, 11, 10, 5, 1, 3, -1, -4, -6, -8, -12,
-16, -16, -12, -13, -17, -21, -20, -22, -22, -17, -19, -19, -17, -12, -12, -12, -11, -5, 0, 2,
1, -2, -1, -5, -3, -7, -4, -7, -11, -12, -15, -14, -14, -12, -16, -14, -10, -8, -6, -4,
-11, -12, -9, -12, -9, -9, -11, -11, -6, -11, -17, -19, -18, -21, -21, -21, -26, -29, -28, -29,
-35, -36, -43, -45, -42, -43, -38, -30, -17, -17, -19, -17, -12, -7, -9, -9, -8, -3, 2, -2,
-5, -9, -11, -11, -16, -17, -22, -28, -38, -46, -43, -40, -42, -46, -47, -42, -40, -41, -37, -35,
-30, -29, -28, -25, -22, -21, -21, -18, -14, -9, -10, -9, -9, -11, -14, -20, -26, -30, -36, -41,
-39, -37, -39, -39, -36, -34, -31, -25, -24, -25, -24, -28, -25, -22, -18, -13, -9, -1, 2, 8,
11, 8, 10, 8, 10, 16, 11, 4, -2, -2, -2, -9, -14, -12, -13, -11, -10, -14, -22, -24,
-23, -19, -15, -14, -11, -10, -9, -8, -5, -1, -2, 1, 3, 4, 0, -4, 3, 7, 6, 0,
-3, -5, -7, -12, -15, -10, -14, -15, -10, -11, -15, -22, -22, -25, -28, -30, -30, -28, -28, -27,
-29, -30, -30, -26, -22, -19, -17, -19, -22, -26, -27, -27, -25, -23, -23, -23, -24, -25, -26, -26,
-24, -27, -28, -28, -27, -28, -27, -22, -20, -16, -12, -8, -3, 5, 12, 17, 20, 22, 24, 24,
27, 29, 29, 32, 32, 35, 35, 32, 30, 25, 24, 22, 19, 19, 20, 19, 18, 18, 18, 20,
19, 18, 19, 21, 19, 19, 24, 26, 26, 26, 25, 26, 26, 24, 22, 19, 16, 17, 15, 13,
10, 6, 6, 5, 6, 12, 13, 10, 10, 11, 12, 15, 19, 24, 27, 27, 27, 28, 28, 27,
27, 26, 26, 29, 30, 29, 27, 27, 25, 22, 19, 17, 18, 20, 19, 19, 22, 23, 21, 20,
22, 22, 26, 29, 28, 26, 26, 28, 29, 29, 29, 30, 33, 33, 31, 33, 33, 32, 29, 22,
16, 10, 8, 8, 7, 7, 6, 7, 8, 6, 9, 9, 8, 9, 10, 8, 7, 7, 5, 2,
2, 2, 2, 5, 7, 4, 4, 5, 1, 1, 2, -1, -7, -12, -14, -17, -21, -21, -20, -21,
-22, -22, -22, -21, -19, -18, -17, -18, -20, -21, -20, -20, -20, -21, -22, -22, -23, -22, -21, -18,
-15, -15, -14, -12, -8, -5, -4, 1, 3, 5, 7, 11, 14, 15, 19, 21, 20, 20, 20, 20,
20, 22, 26, 28, 29, 28, 30, 32, 32, 32, 31, 32, 35, 36, 37, 38, 37, 37, 35, 34,
33, 31, 29, 29, 31, 30, 30, 31, 31, 32, 32, 31, 31, 32, 33, 33, 31, 30, 30, 29,
27, 25, 23, 22, 21, 20, 21, 21, 22, 22, 19, 19, 20, 19, 18, 15, 11, 7, 3, 0,
-4, -6, -8, -11, -14, -16, -18, -18, -21, -22, -23, -24, -22, -23, -24, -24, -23, -23, -21, -21,
-19, -16, -15, -12, -10, -9, -8, -9, -12, -12, -11, -8, -6, -4, -3, -3, -3, -4, -7, -9,
-9, -7, -5, -4, -4, -1, 3, 6, 5, 5, 8, 9, 9, 10, 8, 7, 7, 6, 6, 7,
5, 5, 8, 10, 11, 12, 13, 14, 11, 9, 8, 9, 11, 12, 11, 13, 16, 15, 15, 16,
16, 16, 16, 16, 17, 17, 19, 22, 25, 26, 25, 25, 25, 23, 21, 20, 19, 19, 18, 17,
15, 13, 11, 7, 4, 2, -1, -4, -5, -8, -10, -8, -7, -5, -4, -4, -4, -1, 1, -1,
0, 0, -1, -3, -2, -3, -2, -2, -2, -4, -4, -3, -3, -5, -4, -4, -5, -6, -7, -5,
-6, -8, -8, -8, -9, -8, -8, -10, -10, -10, -11, -10, -10, -9, -7, -6, -5, -5, -5, -4,
-3, -1, -2, -3, -2, -4, -6, -6, -6, -5, -4, -5, -6, -6, -6, -5, -6, -3, -3, -4,
-5, -6, -8, -7, -8, -8, -8, -9, -8, -9, -11, -11, -12, -13, -12, -12, -13, -12, -11, -12,
-14, -13, -11, -9, -10, -11, -13, -14, -12, -8, -5, -2, -2, -1, 0, 1, 2, 1, 0, -1,
0, -1, -3, -5, -5, -3, -1, 0, 0, -2, 0, 3, 4, 6, 8, 11, 13, 14, 12, 11,
9, 7, 7, 8, 10, 9, 7, 9, 8, 7, 6, 5, 4, 3, 3, 4, 7, 9, 11, 12,
12, 13, 13, 13, 12, 13, 13, 11, 10, 9, 8, 8, 8, 7, 5, 3, 2, 1, -2, -6,
-8, -7, -8, -10, -10, -12, -14, -14, -15, -15, -16, -18, -19, -19, -19, -21, -21, -21, -22, -21,
-21, -21, -20, -19, -19, -21, -19, -20, -20, -20, -20, -19, -19, -19, -19, -20, -19, -19, -20, -20,
-20, -19, -19, -19, -18, -18, -18, -18, -17, -16, -13, -14, -13, -10, -8, -5, -2, -2, -2, -2,
-2, -1, -1, 0, 0, 2, 2, 2, 4, 6, 8, 9, 9, 10, 11, 10, 11, 12, 14, 15,
17, 18, 18, 19, 20, 21, 20, 19, 19, 18, 17, 17, 15, 14, 12, 12, 11, 11, 11, 9,
7, 6, 5, 4, 3, 2, 2, 2, 1, 2, 3, 2, 2, 3, 4, 4, 2, 1, 0, -2,
-4, -5, -8, -8, -8, -8, -8, -9, -10, -10, -10, -10, -10, -10, -10, -10, -11, -12, -12, -10,
-9, -10, -9, -9, -11, -12, -13, -14, -14, -15, -17, -17, -16, -15, -15, -16, -16, -15, -14, -12,
-11, -10, -10, -10, -7, -7, -7, -6, -5, -3, -3, -2, -2, -1, -1, -3, -3, -3, -4, -5,
-7, -7, -8, -10, -11, -13, -11, -10, -11, -11, -11, -11, -12, -11, -11, -11, -12, -11, -9, -7,
-6, -6, -6, -5, -5, -6, -7, -7, -7, -6, -6, -6, -6, -4, -4, -6, -7, -8, -9, -10,
-10, -10, -9, -9, -10, -11, -10, -10, -11, -11, -11, -12, -13, -13, -13, -15, -16, -16, -16, -14,
-14, -14, -13, -12, -12, -12, -11, -10, -11, -12, -11, -11, -11, -10, -9, -7, -8, -8, -7, -6,
-7, -8, -8, -8, -8, -8, -7, -7, -6, -7, -5, -3, -2, -2, -1, 0, 0, 1, 2, 2,
2, 3, 4, 5, 4, 4, 4, 5, 4, 4, 5, 7, 7, 8, 9, 10, 10, 9, 9, 11,
12, 10, 9, 7, 5, 5, 6, 5, 5, 5, 6, 6, 6, 3, 2, 3, 3, 3, 4, 4,
4, 4, 3, 3, 3, 3, 5, 5, 5, 4, 3, 4, 5, 6, 6, 6, 6, 6, 6, 8,
9, 9, 9, 10, 10, 10, 11, 9, 8, 7, 6, 5, 4, 2, 0, -2, -5, -7, -8, -10,
-11, -12, -13, -13, -13, -13, -13, -13, -13, -13, -13, -13, -13, -13, -11, -10, -10, -9, -9, -9,
-10, -11, -12, -13, -13, -14, -17, -19, -20, -22, -22, -24, -25, -25, -26, -26, -27, -28, -28, -28,
-27, -27, -28, -27, -26, -24, -24, -24, -23, -22, -21, -21, -21, -21, -20, -19, -19, -19, -18, -17,
-18, -18, -18, -18, -18, -18, -17, -17, -16, -15, -15, -14, -12, -12, -13, -13, -12, -11, -11, -10,
-7, -6, -6, -5, -5, -5, -4, -5, -5, -6, -7, -8, -9, -9, -9, -10, -11, -10, -10, -10,
-10, -10, -10, -7, -6, -7, -6, -5, -4, -2, 0, 2, 2, 1, 1, 0, 0, 1, 1, 1,
1, 2, 2, 2, 2, 2, 3, 3, 3, 3, 3, 4, 3, 3, 3, 2, 2, 2, 3, 3,
2, 1, 1, 0, -2, -3, -3, -3, -4, -4, -3, -2, -2, -2, -3, -2, -3, -3, -3, -2,
-2, -1, 0, -1, -1, -1, 0, 1, 1, 2, 2, 3, 4, 4, 3, 4, 4, 5, 6, 7,
8, 9, 9, 10, 10, 9, 9, 9, 8, 9, 8, 8, 7, 7, 8, 6, 6, 6, 7, 7,
6, 6, 5, 4, 4, 3, 2, 1, 1, 1, 1, 2, 2, 0, 0, 0, -1, -1, -2, -2,
-2, -3, -2, -1, -1, -1, -2, -2, -1, -1, -1, -1, 0, 1, 1, 0, 0, -2, -3, -4,
-5, -6, -7, -6, -8, -9, -11, -12, -14, -16, -17, -18, -17, -17, -19, -19, -19, -19, -18, -17,
-17, -17, -18, -19, -21, -21, -19, -18, -17, -16, -15, -15, -16, -16, -16, -17, -16, -15, -15, -14,
-13, -13, -13, -14, -15, -14, -13, -12, -12, -12, -12, -13, -13, -13, -12, -12, -13, -12, -12, -12,
-12, -12, -12, -11, -11, -10, -11, -13, -14, -15, -16, -15, -14, -14, -14, -14, -14, -13, -14, -14,
-13, -14, -13, -12, -12, -12, -13, -13, -13, -12, -13, -12, -10, -9, -9, -7, -7, -7, -7, -7,
-7, -7, -7, -6, -4, -3, -4, -4, -3, -3, -3, -3, -4, -5, -6, -6, -7, -8, -8, -8,
-7, -7, -7, -7, -6, -5, -4, -3, -2, 0, 1, 1, 1, 1, 2, 3, 4, 4, 5, 7,
9, 10, 11, 11, 13, 14, 15, 17, 18, 19, 19, 20, 20, 21, 21, 21, 21, 21, 22, 23,
22, 20, 19, 19, 18, 18, 17, 15, 15, 15, 14, 14, 13, 11, 11, 10, 9, 8, 7, 6,
6, 6, 6, 6, 4, 3, 2, 1, 2, 2, 1, 0, 0, -1, -1, -1, -2, -2, -3, -4,
-5, -5, -8, -8, -8, -9, -8, -7, -8, -7, -7, -8, -8, -8, -9, -9, -10, -9, -9, -9,
-8, -7, -7, -7, -7, -8, -8, -7, -7, -6, -6, -6, -4, -4, -4, -5, -4, -2, -1, 0,
1, 2, 3, 4, 5, 5, 5, 4, 3, 4, 4, 4, 4, 4, 5, 6, 5, 5, 5, 5,
6, 7, 7, 6, 6, 5, 5, 5, 4, 4, 4, 4, 4, 4, 5, 6, 7, 8, 7, 7,
6, 7, 8, 7, 7, 6, 6, 5, 5, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6,
6, 5, 5, 3, 3, 2, 1, 1, 1, 2, 1, 0, -1, -2, -2, -3, -4, -5, -7, -8,
-9, -10, -11, -11, -11, -11, -12, -13, -15, -16, -17, -19, -19, -20, -20, -19, -19, -19, -20, -20,
-21, -21, -22, -21, -21, -22, -22, -22, -23, -22, -22, -21, -20, -20, -19, -19, -19, -18, -17, -17,
-16, -15, -13, -11, -9, -8, -7, -6, -4, -3, -3, -2, -1, 1, 1, 1, 2, 3, 4, 4,
3, 4, 3, 3, 3, 2, 2, 0, 0, 1, 3, 4, 5, 5, 5, 5, 4, 4, 6, 6,
6, 6, 6, 7, 7, 7, 7, 8, 9, 10, 10, 12, 12, 13, 13, 13, 13, 12, 11, 11,
11, 10, 10, 9, 9, 8, 8, 8, 7, 7, 7, 5, 5, 4, 5, 6, 6, 6, 5, 6,
6, 6, 6, 5, 4, 5, 5, 5, 5, 4, 4, 3, 3, 3, 2, 3, 2, 1, 0, 1,
1, 1, 2, 1, 0, 0, 0, 0, 0, -1, -1, 0, 1, 1, 1, 0, 1, 2, 2, 1,
1, 1, 1, 0, -1, -2, -3, -5, -6, -6, -6, -7, -8, -8, -8, -8, -9, -9, -10, -8,
-8, -8, -9, -9, -9, -10, -10, -11, -10, -9, -9, -9, -9, -8, -7, -6, -5, -6, -6, -7,
-8, -9, -11, -12, -12, -13, -14, -14, -14, -13, -14, -14, -14, -14, -13, -12, -12, -11, -11, -10,
-10, -10, -9, -8, -6, -4, -4, -4, -3, -3, -3, -3, -2, 0, -1, -1, 1, 2, 1, 1,
0, 0, 0, 0, 0, 0, 0, -1, -1, -1, -1, -3, -4, -5, -5, -5, -5, -5, -5, -4,
-4, -5, -7, -9, -9, -11, -13, -15, -17, -17, -17, -18, -19, -21, -22, -22, -22, -21, -21, -21,
-20, -20, -21, -22, -22, -23, -23, -23, -23, -24, -24, -23, -23, -22, -20, -19, -18, -18, -18, -18,
-18, -19, -20, -21, -21, -21, -20, -18, -18, -18, -18, -18, -18, -17, -17, -19, -19, -19, -19, -19,
-18, -18, -18, -18, -17, -17, -17, -15, -14, -13, -13, -13, -12, -11, -11, -10, -10, -8, -6, -4,
-3, -2, -2, 0, 1, 1, 0, -1, -1, 0, 0, 0, 1, 2, 2, 3, 4, 4, 4, 3,
3, 4, 4, 4, 3, 2, 1, 1, 1, 0, -1, -1, -1, -1, -2, -2, -2, -3, -4, -4,
-4, -5, -5, -4, -4, -3, -3, -3, -3, -3, -5, -6, -6, -5, -6, -7, -5, -4, -3, -2,
-2, -2, -2, -2, -1, -2, -3, -3, -2, -1, -2, -2, -2, -1, -2, -1, -1, -1, -2, -2,
-2, -2, -3, -5, -5, -5, -5, -4, -3, -4, -4, -3, -2, -2, -3, -4, -4, -3, -3, -3,
-3, -2, -2, -1, -1, 0, 0, 1, 2, 3, 3, 3, 3, 4, 5, 6, 7, 8, 8, 9,
10, 10, 11, 12, 13, 13, 12, 12, 11, 11, 9, 9, 8, 8, 8, 8, 8, 9, 9, 10,
12, 13, 13, 13, 12, 11, 10, 10, 10, 10, 10, 10, 10, 10, 9, 8, 9, 8, 8, 8,
8, 7, 7, 6, 6, 7, 6, 7, 6, 6, 6, 5, 5, 4, 4, 3, 2, 1, 0, 1,
3, 3, 2, 2, 1, 1, 1, 0, 1, 0, -1, 0, 1, 1, 1, 1, 1, 2, 1, 2,
0, -1, -2, -1, -1, 0, 1, 1, 1, 0, 0, -1, -1, -1, -1, -1, 0, 0, -1, -3,
-4, -4, -4, -4, -5, -6, -6, -8, -9, -10, -11, -11, -12, -13, -15, -15, -15, -16, -15, -14,
-14, -14, -13, -12, -12, -14, -17, -19, -19, -19, -20, -20, -20, -20, -19, };