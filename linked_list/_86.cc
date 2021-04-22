
#include<bits/stdc++.h>

//  Definition for singly-linked list.
 struct ListNode {
     int val;
     ListNode *next;
     ListNode() : val(0), next(NULL) {}
     ListNode(int x) : val(x), next(NULL) {}
     ListNode(int x, ListNode *next) : val(x), next(next) {}
 };

class Solution {
public:
    ListNode* partition(ListNode* head, int x) {
        ListNode* smallhead = new ListNode(0);
        ListNode* small = smallhead;
        ListNode* largehead = new ListNode(0);
        ListNode* large = largehead;
        while (head)
        {
            if (head->val < x)
            {
                small->next = head;
                small = small->next;
            }else
            {
                large->next = head;
                large = large->next;
            }
            head = head->next;
        }
        large->next = NULL;
        small->next = largehead->next;
        return smallhead->next;
    }
};