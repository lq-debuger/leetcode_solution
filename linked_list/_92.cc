
/*
方法介绍：
    1.且断链表
    2.切断的链表进行反转
    3.进行拼接
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
    ListNode* reverseBetween(ListNode* head, int left, int right) {
        // if(!head || !head->next || left >= right) return head;
        ListNode* dummy = new  ListNode(0,head);
        ListNode* pre = dummy;
        for (int i = 0; i < left-1; i++)
        {
            pre = pre->next;
        }
        ListNode* tail = pre;
        for (int i = 0; i < right-left+1; i++)
        {
            tail = tail->next;
        }

        //截取链表
        ListNode* succ = tail->next;
        ListNode* newhead = pre->next;
        pre->next = NULL;
        tail->next = NULL;
        
        //进行局部反转
        reverseLocal(newhead);

        //进行拼接
        pre->next = succ;
        newhead->next = succ;

        return dummy->next;
    }
private:
    void reverseLocal(ListNode* head){
        ListNode* curr = head;
        ListNode* pre = NULL;
        ListNode* tmp;
        while(curr){
            tmp = curr->next;
            curr->next = pre;
            pre = curr;
            curr = tmp;
        }
    }
};