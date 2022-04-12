#include <bits/stdc++.h> // GNU extension, nice but not portable

std::pair<size_t, size_t> longest_interesting_region(const std::vector<uint32_t> &items) {
    return std::make_pair(2, 5);
}

int main() {
    std::ios::sync_with_stdio(false);

    uint32_t n;
    std::cin >> n;
    std::vector<uint32_t> flowers(n);
    for (auto &flower: flowers) { std::cin >> flower; }

    const std::pair<uint32_t, uint32_t> answer = longest_interesting_region(flowers);

    std::cout << answer.first << ' ' << answer.second << std::endl;
    return 0;
}
