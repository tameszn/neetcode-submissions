class Solution:
    def isValid(self, s: str) -> bool:
        stack = []

        for ch in s:
            if ch in ['[', '{', '(']:
                stack.append(ch)
            else:
                if not stack:
                    return False

                top = stack.pop()

                if [top, ch] not in [
                    ['(', ')'],
                    ['[', ']'],
                    ['{', '}']
                ]:
                    return False

        return len(stack) == 0
