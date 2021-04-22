
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
    ListNode* deleteDuplicates(ListNode* head) {
        if(!head || !head->next) return head;
        ListNode* dummy = new ListNode(0,head);
        ListNode* cur = dummy;
        while (cur->next && cur->next->next)
        {
            if (cur->next->val == cur->next->next->val)
            {
                cur->next = cur->next->next;
            }else
            {
                cur = cur->next;
            }
        }
        return dummy->next;
    }
};