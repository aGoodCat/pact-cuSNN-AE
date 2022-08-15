#include "../inc/common.h"
#include "../inc/scnn.h"
__device__ void conv_1_256_14_14_256_switch_function( unsigned int switch_condition,float *temp_kernel,float v,float *temp_result){
    switch (switch_condition) {
        case 0:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(0-s)] += result;
                }
            }
            break;
        case 1:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(1-s)] += result;
                }
            }
            break;
        case 2:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(2-s)] += result;
                }
            }
            break;
        case 3:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(3-s)] += result;
                }
            }
            break;
        case 4:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(4-s)] += result;
                }
            }
            break;
        case 5:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(5-s)] += result;
                }
            }
            break;
        case 6:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(6-s)] += result;
                }
            }
            break;
        case 7:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(7-s)] += result;
                }
            }
            break;
        case 8:
            for ( int r = 0; r < 1; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(0-r)*7+(8-s)] += result;
                }
            }
            break;
        case 9:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(0-s)] += result;
                }
            }
            break;
        case 10:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(1-s)] += result;
                }
            }
            break;
        case 11:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(2-s)] += result;
                }
            }
            break;
        case 12:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(3-s)] += result;
                }
            }
            break;
        case 13:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(4-s)] += result;
                }
            }
            break;
        case 14:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(5-s)] += result;
                }
            }
            break;
        case 15:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(6-s)] += result;
                }
            }
            break;
        case 16:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(7-s)] += result;
                }
            }
            break;
        case 17:
            for ( int r = 0; r < 2; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(1-r)*7+(8-s)] += result;
                }
            }
            break;
        case 18:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(0-s)] += result;
                }
            }
            break;
        case 19:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(1-s)] += result;
                }
            }
            break;
        case 20:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(2-s)] += result;
                }
            }
            break;
        case 21:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(3-s)] += result;
                }
            }
            break;
        case 22:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(4-s)] += result;
                }
            }
            break;
        case 23:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(5-s)] += result;
                }
            }
            break;
        case 24:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(6-s)] += result;
                }
            }
            break;
        case 25:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(7-s)] += result;
                }
            }
            break;
        case 26:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(2-r)*7+(8-s)] += result;
                }
            }
            break;
        case 27:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(0-s)] += result;
                }
            }
            break;
        case 28:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(1-s)] += result;
                }
            }
            break;
        case 29:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(2-s)] += result;
                }
            }
            break;
        case 30:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(3-s)] += result;
                }
            }
            break;
        case 31:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(4-s)] += result;
                }
            }
            break;
        case 32:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(5-s)] += result;
                }
            }
            break;
        case 33:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(6-s)] += result;
                }
            }
            break;
        case 34:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(7-s)] += result;
                }
            }
            break;
        case 35:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(3-r)*7+(8-s)] += result;
                }
            }
            break;
        case 36:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(0-s)] += result;
                }
            }
            break;
        case 37:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(1-s)] += result;
                }
            }
            break;
        case 38:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(2-s)] += result;
                }
            }
            break;
        case 39:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(3-s)] += result;
                }
            }
            break;
        case 40:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(4-s)] += result;
                }
            }
            break;
        case 41:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(5-s)] += result;
                }
            }
            break;
        case 42:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(6-s)] += result;
                }
            }
            break;
        case 43:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(7-s)] += result;
                }
            }
            break;
        case 44:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(4-r)*7+(8-s)] += result;
                }
            }
            break;
        case 45:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(0-s)] += result;
                }
            }
            break;
        case 46:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(1-s)] += result;
                }
            }
            break;
        case 47:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(2-s)] += result;
                }
            }
            break;
        case 48:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(3-s)] += result;
                }
            }
            break;
        case 49:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(4-s)] += result;
                }
            }
            break;
        case 50:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(5-s)] += result;
                }
            }
            break;
        case 51:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(6-s)] += result;
                }
            }
            break;
        case 52:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(7-s)] += result;
                }
            }
            break;
        case 53:
            for ( int r = 0; r < 3; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(5-r)*7+(8-s)] += result;
                }
            }
            break;
        case 54:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(0-s)] += result;
                }
            }
            break;
        case 55:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(1-s)] += result;
                }
            }
            break;
        case 56:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(2-s)] += result;
                }
            }
            break;
        case 57:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(3-s)] += result;
                }
            }
            break;
        case 58:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(4-s)] += result;
                }
            }
            break;
        case 59:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(5-s)] += result;
                }
            }
            break;
        case 60:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(6-s)] += result;
                }
            }
            break;
        case 61:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(7-s)] += result;
                }
            }
            break;
        case 62:
            for ( int r = 1; r < 3; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(6-r)*7+(8-s)] += result;
                }
            }
            break;
        case 63:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 0; s < 1; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(0-s)] += result;
                }
            }
            break;
        case 64:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 0; s < 2; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(1-s)] += result;
                }
            }
            break;
        case 65:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(2-s)] += result;
                }
            }
            break;
        case 66:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(3-s)] += result;
                }
            }
            break;
        case 67:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(4-s)] += result;
                }
            }
            break;
        case 68:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(5-s)] += result;
                }
            }
            break;
        case 69:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 0; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(6-s)] += result;
                }
            }
            break;
        case 70:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 1; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(7-s)] += result;
                }
            }
            break;
        case 71:
            for ( int r = 2; r < 3; r++) {
                for ( int s = 2; s < 3; s++) {
                    float result = v * temp_kernel[r*3+s];
                    temp_result[(7-r)*7+(8-s)] += result;
                }
            }
            break;

    }

}
__global__ void conv_1_256_14_14_256_transform(float *matrix, float *d_nnz, char *ids, unsigned int *c_lens){
    unsigned int global_id = blockIdx.x * 512 + threadIdx.x;
    unsigned int batch_id = global_id/(256*14*14);
    if(global_id >= 1*14*14*256){
        return ;
    }
    const float v = matrix[global_id];
    if(v == 0.0f){
        return;
    }
    unsigned int c = global_id % 256;

    int h = ((global_id - batch_id * 256 * 14 * 14)/256)/14+1;
    int w = ((global_id - batch_id * 256 * 14 * 14)/256)%14+1;
    int th_start = min(h/6,3-1);
    int tw_start = min(w/7,2-1);
    for(int tile_h_id = th_start;tile_h_id>=0;tile_h_id--){
        if((tile_h_id*6+6+3-1)<=h){
            break;
        }
        for(int tile_w_id = tw_start;tile_w_id>=0;tile_w_id--){
            if((tile_w_id*7+7+3-1)<=w){
                break;
            }
            unsigned int tile_id = tile_h_id * 2 + tile_w_id;
            unsigned int index = atomicAdd(&c_lens[batch_id*256*6+c*6+tile_id],1);
            unsigned int abs_h = h - tile_h_id*6;
            unsigned int abs_w = w - tile_w_id*7;
            d_nnz[batch_id*256*6*(6+3-1)*(7+3-1)+
                  c*6*(6+3-1)*(7+3-1)+tile_id*(6+3-1)*(7+3-1)+index] = v;
            ids[batch_id*256*6*(6+3-1)*(7+3-1)+
                c*6*(6+3-1)*(7+3-1)+tile_id*(6+3-1)*(7+3-1)+index] = abs_h*(7+3-1)+abs_w;
        }
    }


}
__device__ void conv_1_256_14_14_256_load_data_2_register(float *__restrict__ data_array, unsigned int c_index, const float * __restrict__ kernel, unsigned int n_id){
    for(unsigned int r=0;r<3;++r){
        for(unsigned int s=0;s<3;++s){
            data_array[r*3+s] = kernel[c_index*256*3*3+r*3*256+s*256+n_id];
        }
    }
}
__device__ void conv_1_256_14_14_256_load_input_2_shared_memory(float *values,unsigned int *c_lens,char *ids,
                                                                float *shared_input,char *shared_ids,unsigned int *shared_lens,
                                                                unsigned int warp_id,unsigned int lane_id,unsigned int batch_id,
                                                                unsigned int tile_id,unsigned int tile_c_id){
    for(unsigned int c_id=warp_id;c_id<8&&tile_c_id+c_id<256;c_id+=8){
        unsigned int end_index = c_lens[batch_id*256*6+(tile_c_id+c_id)*6+tile_id];
        if(lane_id ==0){
            shared_lens[c_id] = end_index;
        }
        for(unsigned int id = lane_id;id<end_index;id+=32){
            shared_input[c_id*(6+3-1)*(7+3-1)+id] = values[batch_id*256*6*(6+3-1)*(7+3-1)+
                                                           (tile_c_id+c_id)*6*(6+3-1)*(7+3-1)+tile_id*(6+3-1)*(7+3-1)+id];
            shared_ids[c_id*(6+3-1)*(7+3-1)+id] = ids[batch_id*256*6*(6+3-1)*(7+3-1)+
                                                      (tile_c_id+c_id)*6*(6+3-1)*(7+3-1)+tile_id*(6+3-1)*(7+3-1)+id];
        }
    }


}
__global__ void conv_1_256_14_14_256_conv2d(float * __restrict__ values, unsigned int * __restrict__ c_lens,
                                            char * __restrict__ ids,
                                            const float * __restrict__ kernel, float * __restrict__ outputs){
    __shared__ float input[8*(6+3-1)*(7+3-1)];
    __shared__ char input_ids[8*(6+3-1)*(7+3-1)];
    __shared__ unsigned int channel_lens[(8)];

    const unsigned int batch_id = (blockIdx.x/(32*6));
    const unsigned int t_id = (blockIdx.x - batch_id*32*6)/32;
    const unsigned int tile_h_id = (t_id / 2)*6;
    const unsigned int tile_w_id = (t_id % 2)*7;
    const unsigned int index = blockIdx.x % (32);
    const unsigned int start_channel_index = index*8;
    const unsigned int warp_id = threadIdx.x / 32;
    const unsigned int lane_id = threadIdx.x % 32;
    float data_array[9];
    float temp_result[6*7] = {0.0f};
    conv_1_256_14_14_256_load_input_2_shared_memory(values,c_lens,ids,input,input_ids,channel_lens,warp_id,lane_id,batch_id,t_id,start_channel_index);
    __syncthreads();
    float v;
    unsigned int id;
    for(unsigned int n = threadIdx.x;n<256;n+=256){
        for(unsigned int c=start_channel_index;c<start_channel_index+8&&c<256;c++){
            unsigned int abs_c = c - start_channel_index;
            unsigned int start_index = abs_c*(6+3-1)*(7+3-1);
            unsigned int end_index = start_index+channel_lens[abs_c];
            if(start_index == end_index){
                continue;
            }
            conv_1_256_14_14_256_load_data_2_register(data_array,(c),kernel,n);
            unsigned int iters = end_index - start_index;
            for(unsigned int iter=0;iter<iters;iter++) {
                v = input[iter+start_index];
                id = input_ids[iter+start_index];
                conv_1_256_14_14_256_switch_function(id,data_array,v,temp_result);
            }
        }
        for (unsigned int th = 0; th < 6; ++th) {
            for (unsigned int tw = 0; tw < 7; ++tw) {
                if (tile_h_id + th >= 14 || tile_w_id + tw >= 14) {
                    continue;
                }
                atomicAdd(&outputs[batch_id * 256 * 14 * 14 + (tile_h_id + th) * 14 * 256 + (tile_w_id + tw) * 256 +
                                   n],temp_result[(th * 7 + tw)]);
            }
        }
        for(unsigned int i=0;i<6*7;++i){
            temp_result[i] = 0.0f;
        }
    }

}