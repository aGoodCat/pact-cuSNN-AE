
#include "../inc/convBlk.h"
#include "../inc/nvml_helper.hpp"
void generate_random_input(float * array, unsigned int size){
    for(unsigned int i=0;i<size;++i){
        array[i] = static_cast <float> (rand()) / (static_cast <float> (RAND_MAX/1000));
    }
}
int main(int argc, char *argv[]){
    int test_images = 100;
    float *input = (float *)malloc(test_images*224*224*3*sizeof(float));
    string imagePath = argv[1];
    float *dInput;
    cudaMalloc(&dInput,test_images*224*224*3*sizeof(float));
    Conv conv1_conv;
    conv1_conv.initialize(1,3,224,224,64,3,7,7,2,"../../../weights/densenet169/weights/conv1_conv.bin");
    BatchNorm conv1_bn;
    conv1_bn.initialize(1,64,112,112,"../../../weights/densenet169/weights/conv1_bn.bin");
    Activation conv1_relu;
    conv1_relu.initialize(1,64,112,112);
    Pool pool1;
    pool1.initialize(1,64,112,112,1,3,3,CUDNN_POOLING_MAX,2);
    ConvBlk conv2_block1(1,64,56,56,128,32,"../../../weights/densenet169/weights/conv2_block1_0_bn.bin","../../../weights/densenet169/weights/conv2_block1_1_conv.bin","../../../weights/densenet169/weights/conv2_block1_1_bn.bin","../../../weights/densenet169/weights/conv2_block1_2_conv.bin");
    ConvBlk conv2_block2(1,96,56,56,128,32,"../../../weights/densenet169/weights/conv2_block2_0_bn.bin","../../../weights/densenet169/weights/conv2_block2_1_conv.bin","../../../weights/densenet169/weights/conv2_block2_1_bn.bin","../../../weights/densenet169/weights/conv2_block2_2_conv.bin");
    ConvBlk conv2_block3(1,128,56,56,128,32,"../../../weights/densenet169/weights/conv2_block3_0_bn.bin","../../../weights/densenet169/weights/conv2_block3_1_conv.bin","../../../weights/densenet169/weights/conv2_block3_1_bn.bin","../../../weights/densenet169/weights/conv2_block3_2_conv.bin");
    ConvBlk conv2_block4(1,160,56,56,128,32,"../../../weights/densenet169/weights/conv2_block4_0_bn.bin","../../../weights/densenet169/weights/conv2_block4_1_conv.bin","../../../weights/densenet169/weights/conv2_block4_1_bn.bin","../../../weights/densenet169/weights/conv2_block4_2_conv.bin");
    ConvBlk conv2_block5(1,192,56,56,128,32,"../../../weights/densenet169/weights/conv2_block5_0_bn.bin","../../../weights/densenet169/weights/conv2_block5_1_conv.bin","../../../weights/densenet169/weights/conv2_block5_1_bn.bin","../../../weights/densenet169/weights/conv2_block5_2_conv.bin");
    ConvBlk conv2_block6(1,224,56,56,128,32,"../../../weights/densenet169/weights/conv2_block6_0_bn.bin","../../../weights/densenet169/weights/conv2_block6_1_conv.bin","../../../weights/densenet169/weights/conv2_block6_1_bn.bin","../../../weights/densenet169/weights/conv2_block6_2_conv.bin");
    PoolBlk pool2(1,256,56,56,128,"../../../weights/densenet169/weights/pool2_bn.bin","../../../weights/densenet169/weights/pool2_conv.bin");
    ConvBlk conv3_block1(1,128,28,28,128,32,"../../../weights/densenet169/weights/conv3_block1_0_bn.bin","../../../weights/densenet169/weights/conv3_block1_1_conv.bin","../../../weights/densenet169/weights/conv3_block1_1_bn.bin","../../../weights/densenet169/weights/conv3_block1_2_conv.bin");
    ConvBlk conv3_block2(1,160,28,28,128,32,"../../../weights/densenet169/weights/conv3_block2_0_bn.bin","../../../weights/densenet169/weights/conv3_block2_1_conv.bin","../../../weights/densenet169/weights/conv3_block2_1_bn.bin","../../../weights/densenet169/weights/conv3_block2_2_conv.bin");
    ConvBlk conv3_block3(1,192,28,28,128,32,"../../../weights/densenet169/weights/conv3_block3_0_bn.bin","../../../weights/densenet169/weights/conv3_block3_1_conv.bin","../../../weights/densenet169/weights/conv3_block3_1_bn.bin","../../../weights/densenet169/weights/conv3_block3_2_conv.bin");
    ConvBlk conv3_block4(1,224,28,28,128,32,"../../../weights/densenet169/weights/conv3_block4_0_bn.bin","../../../weights/densenet169/weights/conv3_block4_1_conv.bin","../../../weights/densenet169/weights/conv3_block4_1_bn.bin","../../../weights/densenet169/weights/conv3_block4_2_conv.bin");
    ConvBlk conv3_block5(1,256,28,28,128,32,"../../../weights/densenet169/weights/conv3_block5_0_bn.bin","../../../weights/densenet169/weights/conv3_block5_1_conv.bin","../../../weights/densenet169/weights/conv3_block5_1_bn.bin","../../../weights/densenet169/weights/conv3_block5_2_conv.bin");
    ConvBlk conv3_block6(1,288,28,28,128,32,"../../../weights/densenet169/weights/conv3_block6_0_bn.bin","../../../weights/densenet169/weights/conv3_block6_1_conv.bin","../../../weights/densenet169/weights/conv3_block6_1_bn.bin","../../../weights/densenet169/weights/conv3_block6_2_conv.bin");
    ConvBlk conv3_block7(1,320,28,28,128,32,"../../../weights/densenet169/weights/conv3_block7_0_bn.bin","../../../weights/densenet169/weights/conv3_block7_1_conv.bin","../../../weights/densenet169/weights/conv3_block7_1_bn.bin","../../../weights/densenet169/weights/conv3_block7_2_conv.bin");
    ConvBlk conv3_block8(1,352,28,28,128,32,"../../../weights/densenet169/weights/conv3_block8_0_bn.bin","../../../weights/densenet169/weights/conv3_block8_1_conv.bin","../../../weights/densenet169/weights/conv3_block8_1_bn.bin","../../../weights/densenet169/weights/conv3_block8_2_conv.bin");
    ConvBlk conv3_block9(1,384,28,28,128,32,"../../../weights/densenet169/weights/conv3_block9_0_bn.bin","../../../weights/densenet169/weights/conv3_block9_1_conv.bin","../../../weights/densenet169/weights/conv3_block9_1_bn.bin","../../../weights/densenet169/weights/conv3_block9_2_conv.bin");
    ConvBlk conv3_block10(1,416,28,28,128,32,"../../../weights/densenet169/weights/conv3_block10_0_bn.bin","../../../weights/densenet169/weights/conv3_block10_1_conv.bin","../../../weights/densenet169/weights/conv3_block10_1_bn.bin","../../../weights/densenet169/weights/conv3_block10_2_conv.bin");
    ConvBlk conv3_block11(1,448,28,28,128,32,"../../../weights/densenet169/weights/conv3_block11_0_bn.bin","../../../weights/densenet169/weights/conv3_block11_1_conv.bin","../../../weights/densenet169/weights/conv3_block11_1_bn.bin","../../../weights/densenet169/weights/conv3_block11_2_conv.bin");
    ConvBlk conv3_block12(1,480,28,28,128,32,"../../../weights/densenet169/weights/conv3_block12_0_bn.bin","../../../weights/densenet169/weights/conv3_block12_1_conv.bin","../../../weights/densenet169/weights/conv3_block12_1_bn.bin","../../../weights/densenet169/weights/conv3_block12_2_conv.bin");
    PoolBlk pool3(1,512,28,28,256,"../../../weights/densenet169/weights/pool3_bn.bin","../../../weights/densenet169/weights/pool3_conv.bin");
    ConvBlk conv4_block1(1,256,14,14,128,32,"../../../weights/densenet169/weights/conv4_block1_0_bn.bin","../../../weights/densenet169/weights/conv4_block1_1_conv.bin","../../../weights/densenet169/weights/conv4_block1_1_bn.bin","../../../weights/densenet169/weights/conv4_block1_2_conv.bin");
    ConvBlk conv4_block2(1,288,14,14,128,32,"../../../weights/densenet169/weights/conv4_block2_0_bn.bin","../../../weights/densenet169/weights/conv4_block2_1_conv.bin","../../../weights/densenet169/weights/conv4_block2_1_bn.bin","../../../weights/densenet169/weights/conv4_block2_2_conv.bin");
    ConvBlk conv4_block3(1,320,14,14,128,32,"../../../weights/densenet169/weights/conv4_block3_0_bn.bin","../../../weights/densenet169/weights/conv4_block3_1_conv.bin","../../../weights/densenet169/weights/conv4_block3_1_bn.bin","../../../weights/densenet169/weights/conv4_block3_2_conv.bin");
    ConvBlk conv4_block4(1,352,14,14,128,32,"../../../weights/densenet169/weights/conv4_block4_0_bn.bin","../../../weights/densenet169/weights/conv4_block4_1_conv.bin","../../../weights/densenet169/weights/conv4_block4_1_bn.bin","../../../weights/densenet169/weights/conv4_block4_2_conv.bin");
    ConvBlk conv4_block5(1,384,14,14,128,32,"../../../weights/densenet169/weights/conv4_block5_0_bn.bin","../../../weights/densenet169/weights/conv4_block5_1_conv.bin","../../../weights/densenet169/weights/conv4_block5_1_bn.bin","../../../weights/densenet169/weights/conv4_block5_2_conv.bin");
    ConvBlk conv4_block6(1,416,14,14,128,32,"../../../weights/densenet169/weights/conv4_block6_0_bn.bin","../../../weights/densenet169/weights/conv4_block6_1_conv.bin","../../../weights/densenet169/weights/conv4_block6_1_bn.bin","../../../weights/densenet169/weights/conv4_block6_2_conv.bin");
    ConvBlk conv4_block7(1,448,14,14,128,32,"../../../weights/densenet169/weights/conv4_block7_0_bn.bin","../../../weights/densenet169/weights/conv4_block7_1_conv.bin","../../../weights/densenet169/weights/conv4_block7_1_bn.bin","../../../weights/densenet169/weights/conv4_block7_2_conv.bin");
    ConvBlk conv4_block8(1,480,14,14,128,32,"../../../weights/densenet169/weights/conv4_block8_0_bn.bin","../../../weights/densenet169/weights/conv4_block8_1_conv.bin","../../../weights/densenet169/weights/conv4_block8_1_bn.bin","../../../weights/densenet169/weights/conv4_block8_2_conv.bin");
    ConvBlk conv4_block9(1,512,14,14,128,32,"../../../weights/densenet169/weights/conv4_block9_0_bn.bin","../../../weights/densenet169/weights/conv4_block9_1_conv.bin","../../../weights/densenet169/weights/conv4_block9_1_bn.bin","../../../weights/densenet169/weights/conv4_block9_2_conv.bin");
    ConvBlk conv4_block10(1,544,14,14,128,32,"../../../weights/densenet169/weights/conv4_block10_0_bn.bin","../../../weights/densenet169/weights/conv4_block10_1_conv.bin","../../../weights/densenet169/weights/conv4_block10_1_bn.bin","../../../weights/densenet169/weights/conv4_block10_2_conv.bin");
    ConvBlk conv4_block11(1,576,14,14,128,32,"../../../weights/densenet169/weights/conv4_block11_0_bn.bin","../../../weights/densenet169/weights/conv4_block11_1_conv.bin","../../../weights/densenet169/weights/conv4_block11_1_bn.bin","../../../weights/densenet169/weights/conv4_block11_2_conv.bin");
    ConvBlk conv4_block12(1,608,14,14,128,32,"../../../weights/densenet169/weights/conv4_block12_0_bn.bin","../../../weights/densenet169/weights/conv4_block12_1_conv.bin","../../../weights/densenet169/weights/conv4_block12_1_bn.bin","../../../weights/densenet169/weights/conv4_block12_2_conv.bin");
    ConvBlk conv4_block13(1,640,14,14,128,32,"../../../weights/densenet169/weights/conv4_block13_0_bn.bin","../../../weights/densenet169/weights/conv4_block13_1_conv.bin","../../../weights/densenet169/weights/conv4_block13_1_bn.bin","../../../weights/densenet169/weights/conv4_block13_2_conv.bin");
    ConvBlk conv4_block14(1,672,14,14,128,32,"../../../weights/densenet169/weights/conv4_block14_0_bn.bin","../../../weights/densenet169/weights/conv4_block14_1_conv.bin","../../../weights/densenet169/weights/conv4_block14_1_bn.bin","../../../weights/densenet169/weights/conv4_block14_2_conv.bin");
    ConvBlk conv4_block15(1,704,14,14,128,32,"../../../weights/densenet169/weights/conv4_block15_0_bn.bin","../../../weights/densenet169/weights/conv4_block15_1_conv.bin","../../../weights/densenet169/weights/conv4_block15_1_bn.bin","../../../weights/densenet169/weights/conv4_block15_2_conv.bin");
    ConvBlk conv4_block16(1,736,14,14,128,32,"../../../weights/densenet169/weights/conv4_block16_0_bn.bin","../../../weights/densenet169/weights/conv4_block16_1_conv.bin","../../../weights/densenet169/weights/conv4_block16_1_bn.bin","../../../weights/densenet169/weights/conv4_block16_2_conv.bin");
    ConvBlk conv4_block17(1,768,14,14,128,32,"../../../weights/densenet169/weights/conv4_block17_0_bn.bin","../../../weights/densenet169/weights/conv4_block17_1_conv.bin","../../../weights/densenet169/weights/conv4_block17_1_bn.bin","../../../weights/densenet169/weights/conv4_block17_2_conv.bin");
    ConvBlk conv4_block18(1,800,14,14,128,32,"../../../weights/densenet169/weights/conv4_block18_0_bn.bin","../../../weights/densenet169/weights/conv4_block18_1_conv.bin","../../../weights/densenet169/weights/conv4_block18_1_bn.bin","../../../weights/densenet169/weights/conv4_block18_2_conv.bin");
    ConvBlk conv4_block19(1,832,14,14,128,32,"../../../weights/densenet169/weights/conv4_block19_0_bn.bin","../../../weights/densenet169/weights/conv4_block19_1_conv.bin","../../../weights/densenet169/weights/conv4_block19_1_bn.bin","../../../weights/densenet169/weights/conv4_block19_2_conv.bin");
    ConvBlk conv4_block20(1,864,14,14,128,32,"../../../weights/densenet169/weights/conv4_block20_0_bn.bin","../../../weights/densenet169/weights/conv4_block20_1_conv.bin","../../../weights/densenet169/weights/conv4_block20_1_bn.bin","../../../weights/densenet169/weights/conv4_block20_2_conv.bin");
    ConvBlk conv4_block21(1,896,14,14,128,32,"../../../weights/densenet169/weights/conv4_block21_0_bn.bin","../../../weights/densenet169/weights/conv4_block21_1_conv.bin","../../../weights/densenet169/weights/conv4_block21_1_bn.bin","../../../weights/densenet169/weights/conv4_block21_2_conv.bin");
    ConvBlk conv4_block22(1,928,14,14,128,32,"../../../weights/densenet169/weights/conv4_block22_0_bn.bin","../../../weights/densenet169/weights/conv4_block22_1_conv.bin","../../../weights/densenet169/weights/conv4_block22_1_bn.bin","../../../weights/densenet169/weights/conv4_block22_2_conv.bin");
    ConvBlk conv4_block23(1,960,14,14,128,32,"../../../weights/densenet169/weights/conv4_block23_0_bn.bin","../../../weights/densenet169/weights/conv4_block23_1_conv.bin","../../../weights/densenet169/weights/conv4_block23_1_bn.bin","../../../weights/densenet169/weights/conv4_block23_2_conv.bin");
    ConvBlk conv4_block24(1,992,14,14,128,32,"../../../weights/densenet169/weights/conv4_block24_0_bn.bin","../../../weights/densenet169/weights/conv4_block24_1_conv.bin","../../../weights/densenet169/weights/conv4_block24_1_bn.bin","../../../weights/densenet169/weights/conv4_block24_2_conv.bin");
    ConvBlk conv4_block25(1,1024,14,14,128,32,"../../../weights/densenet169/weights/conv4_block25_0_bn.bin","../../../weights/densenet169/weights/conv4_block25_1_conv.bin","../../../weights/densenet169/weights/conv4_block25_1_bn.bin","../../../weights/densenet169/weights/conv4_block25_2_conv.bin");
    ConvBlk conv4_block26(1,1056,14,14,128,32,"../../../weights/densenet169/weights/conv4_block26_0_bn.bin","../../../weights/densenet169/weights/conv4_block26_1_conv.bin","../../../weights/densenet169/weights/conv4_block26_1_bn.bin","../../../weights/densenet169/weights/conv4_block26_2_conv.bin");
    ConvBlk conv4_block27(1,1088,14,14,128,32,"../../../weights/densenet169/weights/conv4_block27_0_bn.bin","../../../weights/densenet169/weights/conv4_block27_1_conv.bin","../../../weights/densenet169/weights/conv4_block27_1_bn.bin","../../../weights/densenet169/weights/conv4_block27_2_conv.bin");
    ConvBlk conv4_block28(1,1120,14,14,128,32,"../../../weights/densenet169/weights/conv4_block28_0_bn.bin","../../../weights/densenet169/weights/conv4_block28_1_conv.bin","../../../weights/densenet169/weights/conv4_block28_1_bn.bin","../../../weights/densenet169/weights/conv4_block28_2_conv.bin");
    ConvBlk conv4_block29(1,1152,14,14,128,32,"../../../weights/densenet169/weights/conv4_block29_0_bn.bin","../../../weights/densenet169/weights/conv4_block29_1_conv.bin","../../../weights/densenet169/weights/conv4_block29_1_bn.bin","../../../weights/densenet169/weights/conv4_block29_2_conv.bin");
    ConvBlk conv4_block30(1,1184,14,14,128,32,"../../../weights/densenet169/weights/conv4_block30_0_bn.bin","../../../weights/densenet169/weights/conv4_block30_1_conv.bin","../../../weights/densenet169/weights/conv4_block30_1_bn.bin","../../../weights/densenet169/weights/conv4_block30_2_conv.bin");
    ConvBlk conv4_block31(1,1216,14,14,128,32,"../../../weights/densenet169/weights/conv4_block31_0_bn.bin","../../../weights/densenet169/weights/conv4_block31_1_conv.bin","../../../weights/densenet169/weights/conv4_block31_1_bn.bin","../../../weights/densenet169/weights/conv4_block31_2_conv.bin");
    ConvBlk conv4_block32(1,1248,14,14,128,32,"../../../weights/densenet169/weights/conv4_block32_0_bn.bin","../../../weights/densenet169/weights/conv4_block32_1_conv.bin","../../../weights/densenet169/weights/conv4_block32_1_bn.bin","../../../weights/densenet169/weights/conv4_block32_2_conv.bin");
    PoolBlk pool4(1,1280,14,14,640,"../../../weights/densenet169/weights/pool4_bn.bin","../../../weights/densenet169/weights/pool4_conv.bin");
    ConvBlk conv5_block1(1,640,7,7,128,32,"../../../weights/densenet169/weights/conv5_block1_0_bn.bin","../../../weights/densenet169/weights/conv5_block1_1_conv.bin","../../../weights/densenet169/weights/conv5_block1_1_bn.bin","../../../weights/densenet169/weights/conv5_block1_2_conv.bin");
    ConvBlk conv5_block2(1,672,7,7,128,32,"../../../weights/densenet169/weights/conv5_block2_0_bn.bin","../../../weights/densenet169/weights/conv5_block2_1_conv.bin","../../../weights/densenet169/weights/conv5_block2_1_bn.bin","../../../weights/densenet169/weights/conv5_block2_2_conv.bin");
    ConvBlk conv5_block3(1,704,7,7,128,32,"../../../weights/densenet169/weights/conv5_block3_0_bn.bin","../../../weights/densenet169/weights/conv5_block3_1_conv.bin","../../../weights/densenet169/weights/conv5_block3_1_bn.bin","../../../weights/densenet169/weights/conv5_block3_2_conv.bin");
    ConvBlk conv5_block4(1,736,7,7,128,32,"../../../weights/densenet169/weights/conv5_block4_0_bn.bin","../../../weights/densenet169/weights/conv5_block4_1_conv.bin","../../../weights/densenet169/weights/conv5_block4_1_bn.bin","../../../weights/densenet169/weights/conv5_block4_2_conv.bin");
    ConvBlk conv5_block5(1,768,7,7,128,32,"../../../weights/densenet169/weights/conv5_block5_0_bn.bin","../../../weights/densenet169/weights/conv5_block5_1_conv.bin","../../../weights/densenet169/weights/conv5_block5_1_bn.bin","../../../weights/densenet169/weights/conv5_block5_2_conv.bin");
    ConvBlk conv5_block6(1,800,7,7,128,32,"../../../weights/densenet169/weights/conv5_block6_0_bn.bin","../../../weights/densenet169/weights/conv5_block6_1_conv.bin","../../../weights/densenet169/weights/conv5_block6_1_bn.bin","../../../weights/densenet169/weights/conv5_block6_2_conv.bin");
    ConvBlk conv5_block7(1,832,7,7,128,32,"../../../weights/densenet169/weights/conv5_block7_0_bn.bin","../../../weights/densenet169/weights/conv5_block7_1_conv.bin","../../../weights/densenet169/weights/conv5_block7_1_bn.bin","../../../weights/densenet169/weights/conv5_block7_2_conv.bin");
    ConvBlk conv5_block8(1,864,7,7,128,32,"../../../weights/densenet169/weights/conv5_block8_0_bn.bin","../../../weights/densenet169/weights/conv5_block8_1_conv.bin","../../../weights/densenet169/weights/conv5_block8_1_bn.bin","../../../weights/densenet169/weights/conv5_block8_2_conv.bin");
    ConvBlk conv5_block9(1,896,7,7,128,32,"../../../weights/densenet169/weights/conv5_block9_0_bn.bin","../../../weights/densenet169/weights/conv5_block9_1_conv.bin","../../../weights/densenet169/weights/conv5_block9_1_bn.bin","../../../weights/densenet169/weights/conv5_block9_2_conv.bin");
    ConvBlk conv5_block10(1,928,7,7,128,32,"../../../weights/densenet169/weights/conv5_block10_0_bn.bin","../../../weights/densenet169/weights/conv5_block10_1_conv.bin","../../../weights/densenet169/weights/conv5_block10_1_bn.bin","../../../weights/densenet169/weights/conv5_block10_2_conv.bin");
    ConvBlk conv5_block11(1,960,7,7,128,32,"../../../weights/densenet169/weights/conv5_block11_0_bn.bin","../../../weights/densenet169/weights/conv5_block11_1_conv.bin","../../../weights/densenet169/weights/conv5_block11_1_bn.bin","../../../weights/densenet169/weights/conv5_block11_2_conv.bin");
    ConvBlk conv5_block12(1,992,7,7,128,32,"../../../weights/densenet169/weights/conv5_block12_0_bn.bin","../../../weights/densenet169/weights/conv5_block12_1_conv.bin","../../../weights/densenet169/weights/conv5_block12_1_bn.bin","../../../weights/densenet169/weights/conv5_block12_2_conv.bin");
    ConvBlk conv5_block13(1,1024,7,7,128,32,"../../../weights/densenet169/weights/conv5_block13_0_bn.bin","../../../weights/densenet169/weights/conv5_block13_1_conv.bin","../../../weights/densenet169/weights/conv5_block13_1_bn.bin","../../../weights/densenet169/weights/conv5_block13_2_conv.bin");
    ConvBlk conv5_block14(1,1056,7,7,128,32,"../../../weights/densenet169/weights/conv5_block14_0_bn.bin","../../../weights/densenet169/weights/conv5_block14_1_conv.bin","../../../weights/densenet169/weights/conv5_block14_1_bn.bin","../../../weights/densenet169/weights/conv5_block14_2_conv.bin");
    ConvBlk conv5_block15(1,1088,7,7,128,32,"../../../weights/densenet169/weights/conv5_block15_0_bn.bin","../../../weights/densenet169/weights/conv5_block15_1_conv.bin","../../../weights/densenet169/weights/conv5_block15_1_bn.bin","../../../weights/densenet169/weights/conv5_block15_2_conv.bin");
    ConvBlk conv5_block16(1,1120,7,7,128,32,"../../../weights/densenet169/weights/conv5_block16_0_bn.bin","../../../weights/densenet169/weights/conv5_block16_1_conv.bin","../../../weights/densenet169/weights/conv5_block16_1_bn.bin","../../../weights/densenet169/weights/conv5_block16_2_conv.bin");
    ConvBlk conv5_block17(1,1152,7,7,128,32,"../../../weights/densenet169/weights/conv5_block17_0_bn.bin","../../../weights/densenet169/weights/conv5_block17_1_conv.bin","../../../weights/densenet169/weights/conv5_block17_1_bn.bin","../../../weights/densenet169/weights/conv5_block17_2_conv.bin");
    ConvBlk conv5_block18(1,1184,7,7,128,32,"../../../weights/densenet169/weights/conv5_block18_0_bn.bin","../../../weights/densenet169/weights/conv5_block18_1_conv.bin","../../../weights/densenet169/weights/conv5_block18_1_bn.bin","../../../weights/densenet169/weights/conv5_block18_2_conv.bin");
    ConvBlk conv5_block19(1,1216,7,7,128,32,"../../../weights/densenet169/weights/conv5_block19_0_bn.bin","../../../weights/densenet169/weights/conv5_block19_1_conv.bin","../../../weights/densenet169/weights/conv5_block19_1_bn.bin","../../../weights/densenet169/weights/conv5_block19_2_conv.bin");
    ConvBlk conv5_block20(1,1248,7,7,128,32,"../../../weights/densenet169/weights/conv5_block20_0_bn.bin","../../../weights/densenet169/weights/conv5_block20_1_conv.bin","../../../weights/densenet169/weights/conv5_block20_1_bn.bin","../../../weights/densenet169/weights/conv5_block20_2_conv.bin");
    ConvBlk conv5_block21(1,1280,7,7,128,32,"../../../weights/densenet169/weights/conv5_block21_0_bn.bin","../../../weights/densenet169/weights/conv5_block21_1_conv.bin","../../../weights/densenet169/weights/conv5_block21_1_bn.bin","../../../weights/densenet169/weights/conv5_block21_2_conv.bin");
    ConvBlk conv5_block22(1,1312,7,7,128,32,"../../../weights/densenet169/weights/conv5_block22_0_bn.bin","../../../weights/densenet169/weights/conv5_block22_1_conv.bin","../../../weights/densenet169/weights/conv5_block22_1_bn.bin","../../../weights/densenet169/weights/conv5_block22_2_conv.bin");
    ConvBlk conv5_block23(1,1344,7,7,128,32,"../../../weights/densenet169/weights/conv5_block23_0_bn.bin","../../../weights/densenet169/weights/conv5_block23_1_conv.bin","../../../weights/densenet169/weights/conv5_block23_1_bn.bin","../../../weights/densenet169/weights/conv5_block23_2_conv.bin");
    ConvBlk conv5_block24(1,1376,7,7,128,32,"../../../weights/densenet169/weights/conv5_block24_0_bn.bin","../../../weights/densenet169/weights/conv5_block24_1_conv.bin","../../../weights/densenet169/weights/conv5_block24_1_bn.bin","../../../weights/densenet169/weights/conv5_block24_2_conv.bin");
    ConvBlk conv5_block25(1,1408,7,7,128,32,"../../../weights/densenet169/weights/conv5_block25_0_bn.bin","../../../weights/densenet169/weights/conv5_block25_1_conv.bin","../../../weights/densenet169/weights/conv5_block25_1_bn.bin","../../../weights/densenet169/weights/conv5_block25_2_conv.bin");
    ConvBlk conv5_block26(1,1440,7,7,128,32,"../../../weights/densenet169/weights/conv5_block26_0_bn.bin","../../../weights/densenet169/weights/conv5_block26_1_conv.bin","../../../weights/densenet169/weights/conv5_block26_1_bn.bin","../../../weights/densenet169/weights/conv5_block26_2_conv.bin");
    ConvBlk conv5_block27(1,1472,7,7,128,32,"../../../weights/densenet169/weights/conv5_block27_0_bn.bin","../../../weights/densenet169/weights/conv5_block27_1_conv.bin","../../../weights/densenet169/weights/conv5_block27_1_bn.bin","../../../weights/densenet169/weights/conv5_block27_2_conv.bin");
    ConvBlk conv5_block28(1,1504,7,7,128,32,"../../../weights/densenet169/weights/conv5_block28_0_bn.bin","../../../weights/densenet169/weights/conv5_block28_1_conv.bin","../../../weights/densenet169/weights/conv5_block28_1_bn.bin","../../../weights/densenet169/weights/conv5_block28_2_conv.bin");
    ConvBlk conv5_block29(1,1536,7,7,128,32,"../../../weights/densenet169/weights/conv5_block29_0_bn.bin","../../../weights/densenet169/weights/conv5_block29_1_conv.bin","../../../weights/densenet169/weights/conv5_block29_1_bn.bin","../../../weights/densenet169/weights/conv5_block29_2_conv.bin");
    ConvBlk conv5_block30(1,1568,7,7,128,32,"../../../weights/densenet169/weights/conv5_block30_0_bn.bin","../../../weights/densenet169/weights/conv5_block30_1_conv.bin","../../../weights/densenet169/weights/conv5_block30_1_bn.bin","../../../weights/densenet169/weights/conv5_block30_2_conv.bin");
    ConvBlk conv5_block31(1,1600,7,7,128,32,"../../../weights/densenet169/weights/conv5_block31_0_bn.bin","../../../weights/densenet169/weights/conv5_block31_1_conv.bin","../../../weights/densenet169/weights/conv5_block31_1_bn.bin","../../../weights/densenet169/weights/conv5_block31_2_conv.bin");
    ConvBlk conv5_block32(1,1632,7,7,128,32,"../../../weights/densenet169/weights/conv5_block32_0_bn.bin","../../../weights/densenet169/weights/conv5_block32_1_conv.bin","../../../weights/densenet169/weights/conv5_block32_1_bn.bin","../../../weights/densenet169/weights/conv5_block32_2_conv.bin");
    BatchNorm bn;
    bn.initialize(1,1664,7,7,"../../../weights/densenet169/weights/bn.bin");
    Activation relu;
    relu.initialize(1,1664,7,7);
    Pool avg_pool;
    avg_pool.initialize(1,1664,7,7,0,7,7,CUDNN_POOLING_AVERAGE_COUNT_INCLUDE_PADDING,1);
    FC predict;
    predict.initialize(1,1664,1,1,1000,0,1,1,1,"../../../weights/densenet169/weights/predictions.bin");
    cudaMemcpy(dInput,input,224*224*3*sizeof(float),cudaMemcpyHostToDevice);
    float *output;
    output = conv1_conv.forward(dInput);
    output = conv1_bn.forward(output);
    output = conv1_relu.forward(output);
    output = pool1.forward(output);
    output = conv2_block1.forward(output);
    output = conv2_block2.forward(output);
    output = conv2_block3.forward(output);
    output = conv2_block4.forward(output);
    output = conv2_block5.forward(output);
    output = conv2_block6.forward(output);
    output = pool2.forward(output);
    output = conv3_block1.forward(output);
    output = conv3_block2.forward(output);
    output = conv3_block3.forward(output);
    output = conv3_block4.forward(output);
    output = conv3_block5.forward(output);
    output = conv3_block6.forward(output);
    output = conv3_block7.forward(output);
    output = conv3_block8.forward(output);
    output = conv3_block9.forward(output);
    output = conv3_block10.forward(output);
    output = conv3_block11.forward(output);
    output = conv3_block12.forward(output);
    output = pool3.forward(output);
    output = conv4_block1.forward(output);
    output = conv4_block2.forward(output);
    output = conv4_block3.forward(output);
    output = conv4_block4.forward(output);
    output = conv4_block5.forward(output);
    output = conv4_block6.forward(output);
    output = conv4_block7.forward(output);
    output = conv4_block8.forward(output);
    output = conv4_block9.forward(output);
    output = conv4_block10.forward(output);
    output = conv4_block11.forward(output);
    output = conv4_block12.forward(output);
    output = conv4_block13.forward(output);
    output = conv4_block14.forward(output);
    output = conv4_block15.forward(output);
    output = conv4_block16.forward(output);
    output = conv4_block17.forward(output);
    output = conv4_block18.forward(output);
    output = conv4_block19.forward(output);
    output = conv4_block20.forward(output);
    output = conv4_block21.forward(output);
    output = conv4_block22.forward(output);
    output = conv4_block23.forward(output);
    output = conv4_block24.forward(output);
    output = conv4_block25.forward(output);
    output = conv4_block26.forward(output);
    output = conv4_block27.forward(output);
    output = conv4_block28.forward(output);
    output = conv4_block29.forward(output);
    output = conv4_block30.forward(output);
    output = conv4_block31.forward(output);
    output = conv4_block32.forward(output);
    output = pool4.forward(output);
    output = conv5_block1.forward(output);
    output = conv5_block2.forward(output);
    output = conv5_block3.forward(output);
    output = conv5_block4.forward(output);
    output = conv5_block5.forward(output);
    output = conv5_block6.forward(output);
    output = conv5_block7.forward(output);
    output = conv5_block8.forward(output);
    output = conv5_block9.forward(output);
    output = conv5_block10.forward(output);
    output = conv5_block11.forward(output);
    output = conv5_block12.forward(output);
    output = conv5_block13.forward(output);
    output = conv5_block14.forward(output);
    output = conv5_block15.forward(output);
    output = conv5_block16.forward(output);
    output = conv5_block17.forward(output);
    output = conv5_block18.forward(output);
    output = conv5_block19.forward(output);
    output = conv5_block20.forward(output);
    output = conv5_block21.forward(output);
    output = conv5_block22.forward(output);
    output = conv5_block23.forward(output);
    output = conv5_block24.forward(output);
    output = conv5_block25.forward(output);
    output = conv5_block26.forward(output);
    output = conv5_block27.forward(output);
    output = conv5_block28.forward(output);
    output = conv5_block29.forward(output);
    output = conv5_block30.forward(output);
    output = conv5_block31.forward(output);
    output = conv5_block32.forward(output);
    output = bn.forward(output);
    output = relu.forward(output);
    output = avg_pool.forward(output);
    NVML_INIT;
    NVML_DEV_t dev0;
    NVML_GET_HANDLE(0, &dev0);
    unsigned long long start,end;
    unsigned long long energy = 0;
    float inference_time = 0.0f;
    generate_random_input(input, test_images*3*224*224);
    cudaMemcpy(dInput,input,20*3*224*224*sizeof(float),cudaMemcpyHostToDevice);
    NVML_MEASURE(dev0,&start);
    for(int i=0;i<test_images;++i){
        output = conv1_conv.forward(&dInput[i*3*224*224]);
        output = conv1_bn.forward(output);
        output = conv1_relu.forward(output);
        output = pool1.forward(output);
        output = conv2_block1.forward(output);
        output = conv2_block2.forward(output);
        output = conv2_block3.forward(output);
        output = conv2_block4.forward(output);
        output = conv2_block5.forward(output);
        output = conv2_block6.forward(output);
        output = pool2.forward(output);
        output = conv3_block1.forward(output);
        output = conv3_block2.forward(output);
        output = conv3_block3.forward(output);
        output = conv3_block4.forward(output);
        output = conv3_block5.forward(output);
        output = conv3_block6.forward(output);
        output = conv3_block7.forward(output);
        output = conv3_block8.forward(output);
        output = conv3_block9.forward(output);
        output = conv3_block10.forward(output);
        output = conv3_block11.forward(output);
        output = conv3_block12.forward(output);
        output = pool3.forward(output);
        output = conv4_block1.forward(output);
        output = conv4_block2.forward(output);
        output = conv4_block3.forward(output);
        output = conv4_block4.forward(output);
        output = conv4_block5.forward(output);
        output = conv4_block6.forward(output);
        output = conv4_block7.forward(output);
        output = conv4_block8.forward(output);
        output = conv4_block9.forward(output);
        output = conv4_block10.forward(output);
        output = conv4_block11.forward(output);
        output = conv4_block12.forward(output);
        output = conv4_block13.forward(output);
        output = conv4_block14.forward(output);
        output = conv4_block15.forward(output);
        output = conv4_block16.forward(output);
        output = conv4_block17.forward(output);
        output = conv4_block18.forward(output);
        output = conv4_block19.forward(output);
        output = conv4_block20.forward(output);
        output = conv4_block21.forward(output);
        output = conv4_block22.forward(output);
        output = conv4_block23.forward(output);
        output = conv4_block24.forward(output);
        output = conv4_block25.forward(output);
        output = conv4_block26.forward(output);
        output = conv4_block27.forward(output);
        output = conv4_block28.forward(output);
        output = conv4_block29.forward(output);
        output = conv4_block30.forward(output);
        output = conv4_block31.forward(output);
        output = conv4_block32.forward(output);
        output = pool4.forward(output);
        output = conv5_block1.forward(output);
        output = conv5_block2.forward(output);
        output = conv5_block3.forward(output);
        output = conv5_block4.forward(output);
        output = conv5_block5.forward(output);
        output = conv5_block6.forward(output);
        output = conv5_block7.forward(output);
        output = conv5_block8.forward(output);
        output = conv5_block9.forward(output);
        output = conv5_block10.forward(output);
        output = conv5_block11.forward(output);
        output = conv5_block12.forward(output);
        output = conv5_block13.forward(output);
        output = conv5_block14.forward(output);
        output = conv5_block15.forward(output);
        output = conv5_block16.forward(output);
        output = conv5_block17.forward(output);
        output = conv5_block18.forward(output);
        output = conv5_block19.forward(output);
        output = conv5_block20.forward(output);
        output = conv5_block21.forward(output);
        output = conv5_block22.forward(output);
        output = conv5_block23.forward(output);
        output = conv5_block24.forward(output);
        output = conv5_block25.forward(output);
        output = conv5_block26.forward(output);
        output = conv5_block27.forward(output);
        output = conv5_block28.forward(output);
        output = conv5_block29.forward(output);
        output = conv5_block30.forward(output);
        output = conv5_block31.forward(output);
        output = conv5_block32.forward(output);
        output = bn.forward(output);
        output = relu.forward(output);
        output = avg_pool.forward(output);
        output = predict.forward(output);
        cudaDeviceSynchronize();
    }
    NVML_MEASURE(dev0,&end);
    energy +=(end - start);
    cout<<"densenet169 cuDNN energy costs,"<<energy/test_images<<" mj"<<endl;
    cout<<endl;
    return 0;
}
