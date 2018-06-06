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

int main()
{
    std::cout << "Hello world!" << std::endl;
    
    
    return 0;
}


int add_number(int x ,int y)
{
    return x + y;
}



vector<int> twoSum(vector<int>& nums, int target) {
    
    vector<int> answer;
    for (int i = 0; i < nums.size(); ++i) {

        
        for (int j = i+1; j < nums.size(); ++j) {
            
            
            if (target == nums.at(i) + nums.at(j)) {
                answer.push_back(i);
                answer.push_back(j);
            }
        }
    }
    return answer;
}
