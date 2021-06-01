#include "sobel.h"

PIXEL sobel_kernel(PIXEL window[][3]) {
	// #pragma HLS pipeline II=1
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

void sobel(PIXEL src[HEIGHT*WIDTH], PIXEL dst[(HEIGHT-2)*(WIDTH-2)], int rows, int cols)
{
// #pragma HLS dataflow
#pragma HLS RESOURCE variable=src core=RAM_2P
	PIXEL sumx = 0, sumy = 0;

	PIXEL pin_a = 0, pout_a = 0;
	PIXEL window_a[3][3];
#pragma HLS ARRAY_PARTITION variable=window_a complete dim=1
	PIXEL right_column_a[3];
#pragma HLS ARRAY_PARTITION variable=right_column_a complete dim=1
	PIXEL buffer_a[3][WIDTH];
#pragma HLS ARRAY_PARTITION variable=buffer_a block factor=3


	PIXEL pin_b = 0, pout_b = 0;
	PIXEL window_b[3][3];
#pragma HLS ARRAY_PARTITION variable=window_b complete dim=1
	PIXEL right_column_b[3];
#pragma HLS ARRAY_PARTITION variable=right_column_b complete dim=1
	PIXEL buffer_b[3][WIDTH];
#pragma HLS ARRAY_PARTITION variable=buffer_b block factor=3

	int row = 0, col = 0, i = 0, j = 0, k = 0, index_in_a = 0, index_out_a = 0, index_in_b = 0, index_out_b = 0;
	
	for (row = 0; row < HEIGHT; row++) {
		for (col = 0; col < WIDTH / 2 + 1; col++) {
#pragma HLS PIPELINE II=1 rewind
			index_in_a = WIDTH * row + col;
			pin_a = src[index_in_a];
			index_in_b = WIDTH * row + col + (WIDTH / 2 - 1);
			pin_b = src[index_in_b];

			for (k = 0; k < 2; k++) {
				right_column_a[k] = buffer_a[k][col] = buffer_a[k + 1][col];
				right_column_b[k] = buffer_b[k][col] = buffer_b[k + 1][col];
			}
			right_column_a[2] = buffer_a[2][col] = pin_a;
			right_column_b[2] = buffer_b[2][col] = pin_b;

			for (i = 0; i < 3; i++) {
				for (j = 0; j < 2; j++) {
					window_a[i][j] = window_a[i][j + 1];
					window_b[i][j] = window_b[i][j + 1];
				}
				window_a[i][2] = right_column_a[i];
				window_b[i][2] = right_column_b[i];
			}

			if ((row >= 2) && (col >= 2)) {
				index_out_a = (WIDTH - 2) * (row - 2) + col - 2;
				index_out_b = (WIDTH - 2) * (row - 2) + col + (WIDTH / 2 - 1) - 2;
				pout_a = sobel_kernel(window_a);
				pout_b = sobel_kernel(window_b);
				dst[index_out_a] = pout_a;
				dst[index_out_b] = pout_b;
			}

		}
	}
}