//
//  main.m
//  argloram
//
//  Created by EDZ on 2018/6/6.
//  Copyright © 2018年 EDZ. All rights reserved.
//

#include <iostream>
#include <vector>
#include <iostream>
#include <unordered_map>
using namespace std;
//1.计算两个数的和
int add_number(int x ,int y);
/**
  2. 给定一个整数数组和一个目标值，找出数组中和为目标值的两个数。
    你可以假设每个输入只对应一种答案，且同样的元素不能被重复利用。
 
    示例:
    给定 nums = [2, 7, 11, 15], target = 9
    因为 nums[0] + nums[1] = 2 + 7 = 9
    所以返回 [0, 1]
 **/
vector<int> twoSum(vector<int>& nums, int target);
vector<int> twoSum2(vector<int>& nums, int target);

int main()
{
    std::cout << "Hello world!" << std::endl;
    
    
    vector<int> anum = {2,5,7,9,0,1,8};
    twoSum2(anum, 9);
    return 0;
}


int add_number(int x ,int y)
{
    return x + y;
}

//
vector<int> twoSum(vector<int>& nums, int target) {
    
    vector<int> answer;
    for (int i = 1; i < nums.size(); ++i) {
        
        for (int j = 0; j < i; ++j) {
            
            if (target == nums.at(i) + nums.at(j)) {
                answer.push_back(i);
                answer.push_back(j);
            }
        }
    }
    return answer;
}



vector<int> twoSum2(vector<int> &numbers, int target) {
    unordered_map<int, int> hashMap;
    vector<int> result;
    for(int i=0; i<numbers.size(); i++){
        if (hashMap.find(numbers[i])==hashMap.end() ) {
            hashMap[target - numbers[i]] = i;
        }else {
            result.push_back(hashMap[numbers[i]]);
            result.push_back(i);
        }
    }
    return result;
}

//1.
