"""def mergeTwoLists( list1, list2):
    if list1 and list2 == []:
        return []
    l3=[]
    for i in range(len(list1)):
        l3.append(list1[i])
        for y in range(len(list2)):
            if y==i :
                l3.append(list2[y])
    return l3 
print(mergeTwoLists([1,2,4],[1,3,4]))"""
class ListNode(object):
     def __init__(self, val=0, next=None):
        self.val = val
        self.next = next
        
class Solution(object):
    def mergeTwoLists( list1, list2):
        print(list1+list2)
list1=ListNode()
list1.val=[1,2,3]
list2=ListNode()
list2.val=[1,3,4]
print(list1.val)
print(list2.val)
a=Solution
print(a.mergeTwoLists([1,2,3],[1,3,4]))

            
