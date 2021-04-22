/*
方法：头插法(遍历一遍)
    遍历到左边第一个点时进行头插法
*/
#include<bits/stdc++.h>

using namespace std;

// Definition for singly-linked list.
 struct ListNode {
     int val;
     ListNode *next;
     ListNode() : val(0), next(NULL) {}
     ListNode(int x) : val(x), next(NULL) {}
     ListNode(int x, ListNode *next) : val(x), next(next) {}
 };

class Solution {
public:
    ListNode* reverseBetween(ListNode* head, int left, int right){
        ListNode* dummynode = new ListNode(0,head);
        ListNode* pre = dummynode;
        //遍历到left 的前一个结点,pre一直指向left的第一个结点
        for (int i = 0; i < left-1; i++)
        {
            pre = pre->next;
        
        }
        ListNode* curr = pre->next;
        ListNode* next;
        for(int i = 0;i<right-left;i++){
            next = curr->next;
            curr->next = next->next;
            next->next = pre->next;
            pre->next = next;
        }
        return dummynode->next;
    }
};