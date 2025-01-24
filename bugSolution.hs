The solution involves avoiding the direct use of `length` on the infinite list. Instead, we either process a finite portion of the list or use functions designed to work with potentially infinite data structures.

One approach is to take a finite prefix of the list:

```haskell
import Prelude

main :: IO ()
main = do
  let infiniteList = [1..]
  let finiteList = take 10 infiniteList -- Take the first 10 elements
  let listLength = length finiteList
  print listLength
```

Another approach (depending on the context) might involve using lazy evaluation appropriately and avoiding a direct length calculation. Consider the specific task to find a better solution tailored to the problem.  For example, if you need to only perform a computation on a prefix of the list, avoid calculation of the length entirely. 