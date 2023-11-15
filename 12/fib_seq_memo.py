# (2N) - 1 = O(N) with memoization


def fib(n, memo={}):
    if n == 0 or n == 1:
        return n
    if not memo.get(n):
        memo[n] = fib(n - 2, memo) + fib(n - 1, memo)
    return memo[n]


print(fib(1000))
