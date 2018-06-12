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
#include <deque>
#include <stack>
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

// 1.https://blog.csdn.net/BillCYJ/article/details/78985895 map和unorder_map之间的区别
// 2.https://blog.csdn.net/duan19920101/article/details/51579136 哈希表
// 3.https://blog.csdn.net/chenhuajie123/article/details/11951777 红黑树
// 4.https://github.com/julycoding/The-Art-Of-Programming-By-July/tree/master/ebook/zh july
vector<int> twoSum(vector<int>& nums, int target);
vector<int> twoSum2(vector<int>& nums, int target);

//3.判断一个整数是否是回文数。回文数是指正序（从左向右）和倒序（从右向左）读都是一样的整数。
bool isPalindrome(int x) ;


int main()
{
    std::cout << "Hello world!" << std::endl;
    
    
   // vector<int> anum = {2,5,7,9,0,1,8};
   // twoSum2(anum, 9);
    int num = 10011;
    bool isPal =     isPalindrome(num);
    
    if (isPal) {
        std::cout <<"是回文数" <<std::endl;
    } else {
        std::cout <<"不是回文数" <<std::endl;
    }
    
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


bool isPalindrome(int x) {
    
    if (x < 0)
        return false;
    
    vector<int> vec;
    
    
    do {
        int y = x%10;
        
        vec.push_back(y);
        x = x/10;
    } while (x > 0);
    

    
    for (int i = 0; i < vec.size()*0.5; i++ ) {
        if (vec[i] != vec[vec.size() - (i+1)]) {
            return false;
        }
    }
    
    
    return true;
}
//1.
