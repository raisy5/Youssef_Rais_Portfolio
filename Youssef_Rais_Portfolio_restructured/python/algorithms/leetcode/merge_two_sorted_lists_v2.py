
class ListNode(object):
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
class Solution(object):
    def mergeTwoLists(self, list1:ListNode, list2:ListNode):
        if not list1 :
            return list2
        if not list2 :
            return list1
        if list1.val > list2.val :
            nodehead=list1
            tail=self.mergeTwoLists(list1.next,list2)
        if list2.val>list1.val :
            nodehead=list2
            tail=self.mergeTwoLists(list1,list2.next)
        nodehead.next=tail
        return nodehead