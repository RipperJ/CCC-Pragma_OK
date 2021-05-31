#include "sobel.h"

PIXEL sobel_kernel(PIXEL window [][3]) {
	PIXEL x_kernel[][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
	#pragma HLS ARRAY_PARTITION variable=x_kernel complete dim=0
	PIXEL y_kernel[][3]={{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};
	#pragma HLS ARRAY_PARTITION variable=y_kernel complete dim=0

	PIXEL sumx = 0, sumy = 0, sum = 0;
	kernel_outer:
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
	PIXEL pin = 0, pout = 0;
	PIXEL window[3][3];
#pragma HLS ARRAY_PARTITION variable=window complete dim=1
	PIXEL right_column[3];
#pragma HLS ARRAY_PARTITION variable=right_column complete dim=1
	PIXEL buffer[3][WIDTH];
#pragma HLS ARRAY_PARTITION variable=buffer block factor=3

	int row = 0, col = 0, i = 0, j = 0, k = 0, index_in = 0, index_out = 0;
	
	for (row = 0; row < HEIGHT; row++) {
		for (col = 0; col < WIDTH; col++) {
#pragma HLS PIPELINE II=1 rewind
			index_in = WIDTH * row + col;
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
				index_out = (WIDTH - 2) * (row - 2) + col - 2;
				pout = sobel_kernel(window);
				dst[index_out] = pout;
			}

		}
	}
}