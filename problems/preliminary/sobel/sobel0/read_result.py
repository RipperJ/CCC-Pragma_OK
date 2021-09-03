import os

f = open("./vitis_hls.log", 'r')
line = f.read()
fmax = float(line[line.find("Fmax"): line.find("Fmax") + 15].split()[1])
rtl_sim_time = float(line.split("@")[-1].split()[0].strip('"'))

print(rtl_sim_time / fmax / 10)

'''
1
Local: 20352847.39935677
5.545 ns|     2.70 ns
  3670418|  3670418|  36.704 ms|  36.704 ms|  3670419|  3670419|     none
        0|     1|      266|    1120|    0
Web: 231093499.53
void sobel(PIXEL src[HEIGHT*WIDTH], PIXEL dst[(HEIGHT-2)*(WIDTH-2)], int rows, int cols)
{
	//Insert your code here
	int i = 0, j = 0, k = 0, l = 0, index1 = 0, index2 = 0;
	PIXEL gx[3][3] = {-1, 0, 1, -2, 0, 2, -1, 0, 1};
	PIXEL gy[3][3] = {-1, -2, -1, 0, 0, 0, 1, 2, 1};
	PIXEL sumx = 0, sumy = 0, pixel = 0, sum = 0;
	for (i = 1; i < HEIGHT - 1; ++i) {
		for (j = 1; j < WIDTH - 1; ++j) {
			sumx = 0, sumy = 0;
			for (k = -1; k <= 1; ++k) {
				for (l = -1; l <= 1; ++l) {
					index1 = WIDTH * (i + k) + j + l;
					pixel = src[index1];
					sumx += gx[k + 1][l + 1] * pixel;
					sumy += gy[k + 1][l + 1] * pixel;
				}
			}
			sumx = (sumx < 0) ? 0 : ((sumx > 255) ? 255 : sumx);
			sumy = (sumy < 0) ? 0 : ((sumy > 255) ? 255 : sumy);
			sum = (sumx + sumy > 255) ? 255 : sumx + sumy;
			index2 = (WIDTH - 2) * (i - 1) + j - 1;
			dst[index2] = sum;
		}
	}
}
'''

'''
2
Local: 20315672.220069744
    |ap_clk  |  10.00 ns|  5.535 ns|     2.70 ns|
    |  3670418|  3670418|  36.704 ms|  36.704 ms|  3670419|  3670419|     none|
|Total                |        0|     1|      267|    1112|    0|
void sobel(PIXEL src[HEIGHT*WIDTH], PIXEL dst[(HEIGHT-2)*(WIDTH-2)], int rows, int cols)
{
	//Insert your code here
	int i = 0, j = 0, k = 0, l = 0, index1 = 0, index2 = 0;
	PIXEL gx[3][3] = {-1, 0, 1, -2, 0, 2, -1, 0, 1};
	PIXEL gy[3][3] = {-1, -2, -1, 0, 0, 0, 1, 2, 1};
	PIXEL sumx = 0, sumy = 0, pixel = 0, sum = 0;
	for (i = 1; i < HEIGHT - 1; ++i) {
		for (j = 1; j < WIDTH - 1; ++j) {
			sumx = 0, sumy = 0;
			sumx = -1 * (src[WIDTH * (i - 1) + j - 1] + src[WIDTH * i + j - 1] + src[WIDTH * i + j - 1] + src[WIDTH * (i + 1) + j - 1]) + (src[WIDTH * (i - 1) + j + 1] + src[WIDTH * i + j + 1] + src[WIDTH * i + j + 1] + src[WIDTH * (i + 1) + j + 1]);
			sumy = -1 * (src[WIDTH * (i - 1) + j - 1] + src[WIDTH * (i - 1) + j] + src[WIDTH * (i - 1) + j] + src[WIDTH * (i - 1) + j + 1]) + (src[WIDTH * (i + 1) + j - 1] + src[WIDTH * (i + 1) + j] + src[WIDTH * (i + 1) + j] + src[WIDTH * (i + 1) + j + 1]);
			sumx = (sumx < 0) ? 0 : ((sumx > 255) ? 255 : sumx);
			sumy = (sumy < 0) ? 0 : ((sumy > 255) ? 255 : sumy);
			sum = (sumx + sumy > 255) ? 255 : sumx + sumy;
			index2 = (WIDTH - 2) * (i - 1) + j - 1;
			dst[index2] = sum;
		}
	}
}
'''

'''
3
Local: 17808747.36608628
Web: 101766161.76
void sobel(PIXEL src[HEIGHT*WIDTH], PIXEL dst[(HEIGHT-2)*(WIDTH-2)], int rows, int cols)
{
	int i = 0, j = 0, k = 0, l = 0, index1 = 0, index2 = 0;
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
			index2 = (WIDTH - 2) * (i - 1) + j - 1;
			dst[index2] = sum;
		}
	}
}
'''