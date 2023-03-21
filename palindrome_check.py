def palindrome_check(x):
    if x>=0:
        y=''.join(filter(str.isnumeric,x))
        z=''.join(reversed(x))
        return y==z
    else:
        return False
print(palindrome_check('123'))