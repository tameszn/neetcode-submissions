class Solution:
    def minimumDeletions(self, nums: List[int]) -> int:
       
        n = len(nums)
        if n <= 2:
            return n
        
        # Locate the indices of the minimum and maximum elements
        min_idx = nums.index(min(nums))
        max_idx = nums.index(max(nums))
        
        # Sort the indices so i is always the closer one to the front
        i, j = min(min_idx, max_idx), max(max_idx, min_idx)
        
        # Evaluate the 3 strategies
        from_front = j + 1
        from_back = n - i
        from_both = (i + 1) + (n - j)
        
        return min(from_front, from_back, from_both)

