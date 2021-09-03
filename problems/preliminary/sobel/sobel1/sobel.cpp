#include "sobel.h"
#include "ap_int.h"

void sobel(PIXEL src[HEIGHT*WIDTH], PIXEL dst[(HEIGHT-2)*(WIDTH-2)], int rows, int cols)
{
	// #pragma HLS ARRAY_PARTITION variable=src cyclic factor=3
	int i = 0, j = 0, k = 0, l = 0, index = 0;
	static long long src_temp[HEIGHT][WIDTH - 2];
	#pragma HLS resource variable=src_temp core=RAM_2P
	static long long src_temp_T[HEIGHT - 2][WIDTH];
	#pragma HLS resource variable=src_temp_T core=RAM_2P
	long long temp = 0;
	PIXEL sumx = 0, sumy = 0, pixel = 0, sum = 0;
	PIXEL tempx0 = 0, tempx1 = 0, tempx2 = 0, tempx3 = 0, tempx4 = 0, tempx5 = 0;
	long long tempx_left = 0, tempx_right = 0;
	long long tempy_up = 0, tempy_down = 0;
	PIXEL tempy0 = 0, tempy1 = 0, tempy2 = 0, tempy3 = 0, tempy4 = 0, tempy5 = 0;

	for (i = 0; i < HEIGHT; ++i) {
		for (j = 0; j < WIDTH - 2; ++j) {
			#pragma HLS pipeline II=2
			#pragma HLS unroll factor=2
			if (j == 0) {
				temp = ((long long)(src[i * WIDTH]) << 32) | ((long long)(src[i * WIDTH + 1]) << 16);
			}
			temp |= ((long long)(src[i * WIDTH + j + 2]));
			src_temp[i][j] = temp;
			temp = (temp << 16) & 0x0000FFFFFFFF0000;
		}
	}

	for (i = 0; i < WIDTH; ++i) {
		for (j = 0; j < HEIGHT - 2; ++j) {
			#pragma HLS pipeline II=2
			#pragma HLS unroll factor=2
			if (j == 0) {
				temp = ((long long)(src[0 + i]) << 32) | ((long long)(src[WIDTH + i]) << 16);
			}
			temp |= ((long long)(src[(j + 2) * WIDTH + i]));
			src_temp_T[j][i] = temp;
			temp = (temp << 16) & 0x0000FFFFFFFF0000;
		}
	}


	for (i = 1; i < HEIGHT - 1; ++i) {
		for (j = 1; j < WIDTH - 1; ++j) {
			#pragma HLS loop_flatten
			#pragma HLS pipeline II=2 rewind // 17808747.36608628
			#pragma HLS unroll factor=2 // 2: 17808752.911167793; 4: 19102692.137074415; 8: 19739711.10125319;

			tempx_left = src_temp_T[i - 1][j - 1];
			tempx_right = src_temp_T[i - 1][j + 1];
			tempx0 = (tempx_left & 0x0000FFFF00000000) >> 32;
			tempx1 = (tempx_left & 0x00000000FFFF0000) >> 16;
			tempx2 = (tempx_left & 0x000000000000FFFF);
			// tempx0 = src[WIDTH * (i - 1) + j - 1];
			// tempx1 = src[WIDTH * i + j - 1];
			// tempx2 = src[WIDTH * (i + 1) + j - 1];
			sumx = -1 * (tempx0 + tempx1 + tempx1 + tempx2);
			tempx3 = (tempx_right & 0x0000FFFF00000000) >> 32;
			tempx4 = (tempx_right & 0x00000000FFFF0000) >> 16;
			tempx5 = (tempx_right & 0x000000000000FFFF);
			// tempx3 = src[WIDTH * (i - 1) + j + 1];
			// tempx4 = src[WIDTH * i + j + 1];
			// tempx5 = src[WIDTH * (i + 1) + j + 1];
			sumx += (tempx3 + tempx4 + tempx4 + tempx5);
			sumx = (sumx < 0) ? 0 : ((sumx > 255) ? 255 : sumx);

			tempy_up = src_temp[i - 1][j - 1];
			tempy_down = src_temp[i + 1][j - 1];
			tempy0 = (tempy_up & 0x0000FFFF00000000) >> 32;
			tempy1 = (tempy_up & 0x00000000FFFF0000) >> 16;
			tempy2 = (tempy_up & 0x000000000000FFFF);
			// tempy0 = src[WIDTH * (i - 1) + j - 1];
			// tempy1 = src[WIDTH * (i - 1) + j];
			// tempy2 = src[WIDTH * (i - 1) + j + 1];
			sumy = -1 * (tempy0 + tempy1 + tempy1 + tempy2);
			
			tempy3 = (tempy_down & 0x0000FFFF00000000) >> 32;
			tempy4 = (tempy_down & 0x00000000FFFF0000) >> 16;
			tempy5 = (tempy_down & 0x000000000000FFFF);
			// tempy3 = src[WIDTH * (i + 1) + j - 1];
			// tempy4 = src[WIDTH * (i + 1) + j];
			// tempy5 = src[WIDTH * (i + 1) + j + 1];
			sumy += (tempy3 + tempy4 + tempy4 + tempy5);
			sumy = (sumy < 0) ? 0 : ((sumy > 255) ? 255 : sumy);
			sum = (sumx + sumy > 255) ? 255 : sumx + sumy;
			index = (WIDTH - 2) * (i - 1) + j - 1;
			dst[index] = sum;
		}
	}

	// #pragma HLS dataflow
	// {
	// B = read_src(4);
	// for i in (4):
	// 	compute();
	// 	int a[3][3];
	// 	#pragma HLS ARRAY_PARTITION variable=a complete
	// 	a[1][1] = a[1][2];
	// 	int a = xx;
	// 	a = (a << 8) & 0x00FF00;
	// }
}
