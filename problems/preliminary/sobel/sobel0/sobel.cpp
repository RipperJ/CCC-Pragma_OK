#include "sobel.h"
#include "ap_int.h"

void sobel(PIXEL src[HEIGHT*WIDTH], PIXEL dst[(HEIGHT-2)*(WIDTH-2)], int rows, int cols)
{
	int i = 0, j = 0, k = 0, l = 0, index = 0;
	PIXEL sumx = 0, sumy = 0, pixel = 0, sum = 0;
	PIXEL tempx0 = 0, tempx1 = 0, tempx2 = 0, tempx3 = 0, tempx4 = 0, tempx5 = 0;
	PIXEL tempy0 = 0, tempy1 = 0, tempy2 = 0, tempy3 = 0, tempy4 = 0, tempy5 = 0;
	for (i = 1; i < HEIGHT - 1; ++i) {
		for (j = 1; j < WIDTH - 1; ++j) {
			#pragma HLS loop_flatten
			#pragma HLS pipeline II=1 rewind // 17808747.36608628
			#pragma HLS unroll factor=2 // 2: 17808752.911167793; 4: 19102692.137074415; 8: 19739711.10125319;

			tempx0 = src[WIDTH * (i - 1) + j - 1];
			tempx1 = src[WIDTH * i + j - 1];
			tempx2 = src[WIDTH * (i + 1) + j - 1];
			sumx = -1 * (tempx0 + tempx1 + tempx1 + tempx2);
			tempx3 = src[WIDTH * (i - 1) + j + 1];
			tempx4 = src[WIDTH * i + j + 1];
			tempx5 = src[WIDTH * (i + 1) + j + 1];
			sumx += (tempx3 + tempx4 + tempx4 + tempx5);
			sumx = (sumx < 0) ? 0 : ((sumx > 255) ? 255 : sumx);
			
			tempy0 = src[WIDTH * (i - 1) + j - 1];
			tempy1 = src[WIDTH * (i - 1) + j];
			tempy2 = src[WIDTH * (i - 1) + j + 1];
			sumy = -1 * (tempy0 + tempy1 + tempy1 + tempy2);
			tempy3 = src[WIDTH * (i + 1) + j - 1];
			tempy4 = src[WIDTH * (i + 1) + j];
			tempy5 = src[WIDTH * (i + 1) + j + 1];
			sumy += (tempy3 + tempy4 + tempy4 + tempy5);
			sumy = (sumy < 0) ? 0 : ((sumy > 255) ? 255 : sumy);
			sum = (sumx + sumy > 255) ? 255 : sumx + sumy;
			index = (WIDTH - 2) * (i - 1) + j - 1;
			dst[index] = sum;
		}
	}
}