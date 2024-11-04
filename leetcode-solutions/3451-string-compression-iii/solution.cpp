class Solution {
public:
    string compressedString(string word) {
        int c=0;string comp="";
        char ch=word[0];
        for(int i=0;i<word.length();i++)
        {
           if(ch==word[i] && c<9) c++;
           else{
            comp.push_back(c+'0');
            comp.push_back(word[i-1]);
            ch=word[i];
            c=1;
}
           
            
        }
        comp.push_back(c+'0');
        comp.push_back(ch);
        return comp;
    }
};
