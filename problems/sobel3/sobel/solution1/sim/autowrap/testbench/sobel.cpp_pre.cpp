# 1 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel3/sobel.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel3/sobel.cpp"
# 1 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel3/sobel.h" 1





typedef short int PIXEL;

void sobel(PIXEL* src, PIXEL* dst, int rows, int cols);
# 2 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel3/sobel.cpp" 2

PIXEL sobel_kernel(PIXEL window [][3]) {
#pragma HLS pipeline II=1





 PIXEL sumx = 0, sumy = 0, sum = 0;






 sumx = (window[0][2] + window[1][2] + window[1][2] + window[2][2]) - (window[0][0] + window[1][0] + window[1][0] + window[2][0]);
 sumy = (window[2][0] + window[2][1] + window[2][1] + window[2][2]) - (window[0][0] + window[0][1] + window[0][1] + window[0][2]);
# 28 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel3/sobel.cpp"
 sumx = (sumx < 0) ? 0 : ((sumx > 255) ? 255 : sumx);
 sumy = (sumy < 0) ? 0 : ((sumy > 255) ? 255 : sumy);
 sum = (sumx + sumy > 255) ? 255 : sumx + sumy;

 return sum;
}

void sobel(PIXEL src[720*1280], PIXEL dst[(720 -2)*(1280 -2)], int rows, int cols)
{
 PIXEL sumx = 0, sumy = 0, sum = 0;

 PIXEL pin = 0, pout = 0;
 PIXEL window[3][3];
#pragma HLS ARRAY_PARTITION variable=window complete dim=1
 PIXEL right_column[3];
#pragma HLS ARRAY_PARTITION variable=right_column complete dim=1
 PIXEL buffer[3][1280];
#pragma HLS ARRAY_PARTITION variable=buffer block factor=3

 int row = 0, col = 0, i = 0, j = 0, k = 0, index_in = 0, index_out = 0;

 for (row = 0; row < 720; row++) {
  for (col = 0; col < 1280; col++) {
#pragma HLS PIPELINE II=1 rewind

   pin = src[index_in];

   for (k = 0; k < 2; k++) {
    right_column[k] = buffer[k][col] = buffer[k + 1][col];
   }
   right_column[2] = buffer[2][col] = pin;

   for (i = 0; i < 3; i++) {
    for (j = 0; j < 2; j++) {
     window[i][j] = window[i][j + 1];
    }
    window[i][2] = right_column[i];
   }

   if ((row >= 2) && (col >= 2)) {



    sumx = (window[0][2] + window[1][2] + window[1][2] + window[2][2]) - (window[0][0] + window[1][0] + window[1][0] + window[2][0]);
    sumy = (window[2][0] + window[2][1] + window[2][1] + window[2][2]) - (window[0][0] + window[0][1] + window[0][1] + window[0][2]);

    sumx = (sumx < 0) ? 0 : ((sumx > 255) ? 255 : sumx);
    sumy = (sumy < 0) ? 0 : ((sumy > 255) ? 255 : sumy);
    sum = (sumx + sumy > 255) ? 255 : sumx + sumy;

    dst[index_out] = sum;


    index_out += 1;
   }
   index_in += 1;
  }
 }
}
