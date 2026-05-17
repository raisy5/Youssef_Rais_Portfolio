class Solution(object):
    def isValid(self, l):
        s=""
        for i in range (len(l)):
            for y in range(len(l)-1):
        for i in range(len(s)-1)  :
            if (s[i] == '('and s[i+1] ==')') or ((s[i] == '['and s[i+1] ==']' ) ) or (s[i] == '{'and s[i+1] =='}') :
                return True
            else:
                return False


