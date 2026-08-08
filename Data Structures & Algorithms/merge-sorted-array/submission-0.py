class Solution:
    def merge(self, nums1: List[int], a: int, nums2: List[int], b: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        nums1[a:]=nums2[:b]
        nums1.sort()