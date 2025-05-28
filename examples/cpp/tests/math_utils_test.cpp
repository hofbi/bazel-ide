#include "math_utils.h"

#include <gtest/gtest.h>

class MathUtilsTest : public ::testing::Test {};

TEST_F(MathUtilsTest, AddFunction) {
  EXPECT_EQ(math_utils::add(2, 3), 5);
  EXPECT_EQ(math_utils::add(-1, 1), 0);
  EXPECT_EQ(math_utils::add(0, 0), 0);
  EXPECT_EQ(math_utils::add(-5, -3), -8);
}

TEST_F(MathUtilsTest, MultiplyFunction) {
  EXPECT_EQ(math_utils::multiply(3, 4), 12);
  EXPECT_EQ(math_utils::multiply(-2, 5), -10);
  EXPECT_EQ(math_utils::multiply(0, 100), 0);
  EXPECT_EQ(math_utils::multiply(-3, -4), 12);
}

TEST_F(MathUtilsTest, IsEvenFunction) {
  EXPECT_TRUE(math_utils::is_even(2));
  EXPECT_FALSE(math_utils::is_even(3));
  EXPECT_TRUE(math_utils::is_even(0));
  EXPECT_TRUE(math_utils::is_even(-2));
  EXPECT_FALSE(math_utils::is_even(-3));
  EXPECT_TRUE(math_utils::is_even(100));
  EXPECT_FALSE(math_utils::is_even(101));
}

class IsEvenParameterizedTest
    : public ::testing::TestWithParam<std::pair<int, bool>> {};

TEST_P(IsEvenParameterizedTest, CheckEvenNumbers) {
  auto [number, expected] = GetParam();
  EXPECT_EQ(math_utils::is_even(number), expected);
}

INSTANTIATE_TEST_SUITE_P(
    EvenNumberTests, IsEvenParameterizedTest,
    ::testing::Values(std::make_pair(0, true), std::make_pair(1, false),
                      std::make_pair(2, true), std::make_pair(-1, false),
                      std::make_pair(-2, true), std::make_pair(42, true),
                      std::make_pair(43, false)));
