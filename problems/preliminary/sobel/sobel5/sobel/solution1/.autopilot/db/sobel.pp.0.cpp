# 1 "sobel.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 375 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "/home/lduac/Software/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/etc/autopilot_ssdm_op.h" 1
# 158 "/home/lduac/Software/Xilinx/Vitis_HLS/2020.2/common/technology/autopilot/etc/autopilot_ssdm_op.h"
extern "C" {






    void _ssdm_op_IfRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_IfWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_IfCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_StreamRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_StreamWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamNbWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_StreamCanWrite(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned _ssdm_StreamSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_ReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Read(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_WriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Write(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbReadReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    unsigned int __attribute__ ((bitwidth(1))) _ssdm_op_NbWriteReq(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_op_MemShiftRead(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Wait(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_Poll(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_Return(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecSynModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecTopModule(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDecl(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProcessDef(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecConnection(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecChannel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecSensitive(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecModuleInst(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPortMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecReset(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPlatform(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecClockDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecPowerDomain(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecRegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecRegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopName(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecLoopTripCount(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    int _ssdm_op_SpecStateBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    int _ssdm_op_SpecStateEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecInterface(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecDataflowPipeline(...) __attribute__ ((nothrow)) __attribute__((overloadable));


    void _ssdm_op_SpecLatency(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecParallel(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecProtocol(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecOccurrence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecResource(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecResourceLimit(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecCHCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecFUCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIFCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecIPCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecKeepValue(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecMemCore(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecExt(...) __attribute__ ((nothrow)) __attribute__((overloadable));




    void _ssdm_SpecArrayDimSize(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_RegionBegin(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_RegionEnd(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_Unroll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_UnrollRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_InlineAll(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineLoop(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_Inline(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineSelf(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_InlineRegion(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecArrayMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayPartition(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecArrayReshape(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecStream(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecStable(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecStableContent(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBindPort(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecPipoDepth(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecExpr(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecExprBalance(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecDependence(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecLoopMerge(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopFlatten(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecLoopRewind(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_SpecFuncInstantiation(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncBuffer(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecFuncExtract(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecConstant(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_DataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_SpecDataPack(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void _ssdm_op_SpecBitsMap(...) __attribute__ ((nothrow)) __attribute__((overloadable));
    void _ssdm_op_SpecLicense(...) __attribute__ ((nothrow)) __attribute__((overloadable));

    void __xilinx_ip_top(...) __attribute__ ((nothrow)) __attribute__((overloadable));


}
# 2 "<built-in>" 2
# 1 "sobel.cpp" 2
# 1 "./sobel.h" 1





typedef short int PIXEL;

__attribute__((sdx_kernel("sobel", 0))) void sobel(PIXEL* src, PIXEL* dst, int rows, int cols);
# 2 "sobel.cpp" 2

PIXEL sobel_kernel(PIXEL window[][3]) {

 PIXEL x_kernel[][3] = {{-1, 0, 1}, {-2, 0, 2}, {-1, 0, 1}};
#pragma HLS ARRAY_PARTITION variable=x_kernel complete dim=0
 PIXEL y_kernel[][3]={{-1, -2, -1}, {0, 0, 0}, {1, 2, 1}};
#pragma HLS ARRAY_PARTITION variable=y_kernel complete dim=0

 PIXEL sumx = 0, sumy = 0, sum = 0;

 VITIS_LOOP_12_1: for (int i = 0; i < 3; i++) {
  VITIS_LOOP_13_2: for (int j = 0; j < 3; j++) {
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

__attribute__((sdx_kernel("sobel", 0))) void sobel(PIXEL src[720*1280], PIXEL dst[(720 -2)*(1280 -2)], int rows, int cols)
{_ssdm_SpecArrayDimSize(src, 921600);_ssdm_SpecArrayDimSize(dst, 917604);
#pragma HLS TOP name=sobel
# 48 "sobel.cpp"

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

 VITIS_LOOP_72_1: for (row = 0; row < 720; row++) {
  VITIS_LOOP_73_2: for (col = 0; col < 1280 / 2 + 1; col++) {
#pragma HLS PIPELINE II=1 rewind
 index_in_a = 1280 * row + col;
   pin_a = src[index_in_a];
   index_in_b = 1280 * row + col + (1280 / 2 - 1);
   pin_b = src[index_in_b];

   VITIS_LOOP_80_3: for (k = 0; k < 2; k++) {
#pragma HLS unroll
 right_column_a[k] = buffer_a[k][col] = buffer_a[k + 1][col];
    right_column_b[k] = buffer_b[k][col] = buffer_b[k + 1][col];
   }
   right_column_a[2] = buffer_a[2][col] = pin_a;
   right_column_b[2] = buffer_b[2][col] = pin_b;

   VITIS_LOOP_88_4: for (i = 0; i < 3; i++) {
#pragma HLS unroll
 VITIS_LOOP_90_5: for (j = 0; j < 2; j++) {
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
