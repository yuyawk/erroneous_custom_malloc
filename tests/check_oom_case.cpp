#include <vector>
#include <new>

int main()
{
    std::vector<int> vec;

    try
    {
        vec.reserve(12);
    }
    catch (const std::bad_alloc &)
    {
        // Throwing an exception as intended
        return 0;
    }

    // Should be unreachable
    return 1;
}
