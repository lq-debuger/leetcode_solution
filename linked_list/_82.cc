
//学会用dummy哑结点

// 采用非递归的方法
#include<bits/stdc++.h>

using namespace std;

//Definition for singly-linked list.
struct ListNode {
    int val;
    ListNode *next;
    ListNode() : val(0), next(NULL) {}
    ListNode(int x) : val(x), next(NULL) {}
    ListNode(int x, ListNode *next) : val(x), next(next) {}
};

class Solution {
public:
    ListNode* deleteDuplicates(ListNode* head) {
        if(!head || !head->next) return head;
        ListNode* dummy = new ListNode(0,head);
        ListNode* curr = dummy;
        while(curr->next && curr->next->next)
        {
            if (curr->next->val == curr->next->next->val)
            {
                int x = curr->next->val;
                while (curr->next && curr->next->val == x)
                {
                    curr->next = curr->next->next;
                }
            }else
            {
                curr = curr->next;       
            }
    
        }
        return   dummy->next;   
        
    }
};