def removeElement( nums, val):
    a=0
    for i in range(len(nums)) :
        print(i)
        if nums[i]==val:
            nums.remove(nums[i])
        elif nums[i] != val:
            a+=1
    return a 
print(removeElement([2,2,3,3],3))
k=[2,2,3,3]
print(k[3])

