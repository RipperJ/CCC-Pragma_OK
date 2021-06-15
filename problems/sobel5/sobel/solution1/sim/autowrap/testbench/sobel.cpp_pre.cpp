# 1 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel5/sobel.cpp"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel5/sobel.cpp"
# 1 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel5/sobel.h" 1





typedef short int PIXEL;

void sobel(PIXEL* src, PIXEL* dst, int rows, int cols);
# 2 "/home/lduac/Projects/CCC-Pragma_OK/problems/sobel5/sobel.cpp" 2

PIXEL sobel_kernel(PIXEL window[][3]) {

 PIXEL x_kernel[][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
#pragma HLS ARRAY_PARTITION variable=x_kernel complete dim=0
 PIXEL y_kernel[][3]={{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};
#pragma HLS ARRAY_PARTITION variable=y_kernel complete dim=0

 PIXEL sumx = 0, sumy = 0, sum = 0;

 for (int i = 0; i < 3; i++) {
  for (int j = 0; j < 3; j++) {
   sumx += x_kernel[i][j] * window[i][j];
   sumy += y_kernel[i][j] * window[i][j];
  }
 }
 sumx = (sumx < 0) ? 0 : ((sumx > 255) ? 255 : sumx);
 sumy = (sumy < 0) ? 0 : ((sumy > 255) ? 255 : sumy);
 sum = (sumx + sumy > 255) ? 255 : sumx + sumy;

 return sum;
}

PIXEL crop(PIXEL in) {

#pragma HLS INLINE off
 PIXEL out;
 out = (in < 0) ? 0 : ((in > 255) ? 255 : in);
 return out;
}

PIXEL adder(PIXEL sumx, PIXEL sumy) {
#pragma HLS INLINE off
 PIXEL out;
 out = sumx + sumy;
 return out;
}

PIXEL crop_upper(PIXEL in) {
#pragma HLS INLINE off
 PIXEL out;
 out = (in > 255) ? 255 : in;
 return out;
}

void sobel(PIXEL src[720*1280], PIXEL dst[(720 -2)*(1280 -2)], int rows, int cols)
{
#pragma HLS RESOURCE variable=src core=RAM_2P
 PIXEL sumx_a = 0, sumy_a = 0, sumx_b = 0, sumy_b = 0;
 PIXEL temp_a, temp_b;

 PIXEL pin_a = 0, pout_a = 0;
 PIXEL window_a[3][3];
#pragma HLS ARRAY_PARTITION variable=window_a complete dim=1
 PIXEL right_column_a[3];
#pragma HLS ARRAY_PARTITION variable=right_column_a complete dim=1
 PIXEL buffer_a[3][1280 / 2 + 1];
#pragma HLS ARRAY_PARTITION variable=buffer_a block factor=3


 PIXEL pin_b = 0, pout_b = 0;
 PIXEL window_b[3][3];
#pragma HLS ARRAY_PARTITION variable=window_b complete dim=1
 PIXEL right_column_b[3];
#pragma HLS ARRAY_PARTITION variable=right_column_b complete dim=1
 PIXEL buffer_b[3][1280 / 2 + 1];
#pragma HLS ARRAY_PARTITION variable=buffer_b block factor=3

 int row = 0, col = 0, i = 0, j = 0, k = 0, index_in_a = 0, index_out_a = 0, index_in_b = 0, index_out_b = 0;

 for (row = 0; row < 720; row++) {
  for (col = 0; col < 1280 / 2 + 1; col++) {
#pragma HLS PIPELINE II=1 rewind
   index_in_a = 1280 * row + col;
   pin_a = src[index_in_a];
   index_in_b = 1280 * row + col + (1280 / 2 - 1);
   pin_b = src[index_in_b];

   for (k = 0; k < 2; k++) {
#pragma HLS unroll
    right_column_a[k] = buffer_a[k][col] = buffer_a[k + 1][col];
    right_column_b[k] = buffer_b[k][col] = buffer_b[k + 1][col];
   }
   right_column_a[2] = buffer_a[2][col] = pin_a;
   right_column_b[2] = buffer_b[2][col] = pin_b;

   for (i = 0; i < 3; i++) {
#pragma HLS unroll
    for (j = 0; j < 2; j++) {
#pragma HLS unroll
     window_a[i][j] = window_a[i][j + 1];
     window_b[i][j] = window_b[i][j + 1];
    }
    window_a[i][2] = right_column_a[i];
    window_b[i][2] = right_column_b[i];
   }

   if ((row >= 2) && (col >= 2)) {
    index_out_a = (1280 - 2) * (row - 2) + col - 2;
    index_out_b = (1280 - 2) * (row - 2) + col + (1280 / 2 - 1) - 2;



    sumx_a = (window_a[0][2] + window_a[1][2] + window_a[1][2] + window_a[2][2]) - (window_a[0][0] + window_a[1][0] + window_a[1][0] + window_a[2][0]);
    sumy_a = (window_a[2][0] + window_a[2][1] + window_a[2][1] + window_a[2][2]) - (window_a[0][0] + window_a[0][1] + window_a[0][1] + window_a[0][2]);



    sumx_a = crop(sumx_a);
    sumy_a = crop(sumy_a);

    temp_a = adder(sumx_a, sumy_a);

    pout_a = crop_upper(temp_a);

    dst[index_out_a] = pout_a;

    sumx_b = (window_b[0][2] + window_b[1][2] + window_b[1][2] + window_b[2][2]) - (window_b[0][0] + window_b[1][0] + window_b[1][0] + window_b[2][0]);
    sumy_b = (window_b[2][0] + window_b[2][1] + window_b[2][1] + window_b[2][2]) - (window_b[0][0] + window_b[0][1] + window_b[0][1] + window_b[0][2]);



    sumx_b = crop(sumx_b);
    sumy_b = crop(sumy_b);

    temp_b = adder(sumx_b, sumy_b);

    pout_b = crop_upper(temp_b);

    dst[index_out_b] = pout_b;
   }
  }
 }
}
