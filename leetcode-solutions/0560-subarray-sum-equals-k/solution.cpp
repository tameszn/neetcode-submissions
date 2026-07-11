class Solution {
public:
    int subarraySum(vector<int>& arr, int k) {
        unordered_map<int,int>mpp;
        mpp[0]=1;
      int prefix_sum=0,count=0;
        for(int i=0;i<arr.size();i++)
        {
         prefix_sum+=arr[i];
         int remove=prefix_sum-k;
         count= count+mpp[remove]; ///adds 1 if successfull lookup retireved else stays0
         mpp[prefix_sum]+=1;

        }
        return count;
    }
};
