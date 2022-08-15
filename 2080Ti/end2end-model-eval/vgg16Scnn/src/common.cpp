//
// Created by lizhi on 1/15/21.
//
#include "../inc/common.h"
void load_input(string input_path,unsigned int dataSize,float *input){
    std::ifstream fin(input_path, std::ios::binary);
    if (!fin) {
        cerr<<"load weight failed "<<input_path<<endl;
        exit(-1);
    }
    vector<float> temp_vector;
    float f;
    while (fin.read(reinterpret_cast<char*>(&f), sizeof(float))){
        temp_vector.push_back(f);
    }
    for(int i=0;i<dataSize;++i){
        input[i] = temp_vector[i];
    }
}
