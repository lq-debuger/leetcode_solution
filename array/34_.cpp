#include<iostream>
#include<vector>
using namespace std;

class Solution {
public:
    vector<int> searchRange(vector<int>& nums, int target) {
        int left = 0;
        int right = nums.size() - 1;
        int index = -1, beigin = 0, end = nums.size() - 1;
        vector<int> res;
        while(left <= right){
            int middle  = left + (left + right) / 2;
            if(nums[middle] > target){
                right = middle - 1;
            }else if(nums[middle] < target){
                left = middle + 1;
            }else{
                index = middle;
            }
        cout << "index is " << index << endl;
        if(index == -1){
            res.push_back(-1);
            res.push_back(-1);
            return res;
        }
        beigin = end = index;
        while (beigin >= left && nums[beigin]==nums[index]){
            beigin--;
        }
        while (end <= right && nums[end]==nums[index]){
            end++;
        }
        res.push_back(beigin);
        res.push_back(end);
        return res;
        }
    }
};

int main(){
    Solution solution;
    vector<int> nums;
    nums.push_back(5);
    nums.push_back(7);
    nums.push_back(7);
    nums.push_back(8);
    nums.push_back(8);
    nums.push_back(10);
    vector<int> res;
    res = solution.searchRange(nums,8);
    for(int i=0;i<res.size();i++){
        cout << res[i] << endl;
    }
}
