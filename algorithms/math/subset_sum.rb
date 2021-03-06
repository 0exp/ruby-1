# Given a set of non negative numbers and a value, sum,
# find if there is a subset with sum equal to the sum given
def subset_sum(set, set_length, sum)
  return true if sum == 0
  return false if set_length == 0 && sum != 0

  if(set[set_length - 1] > sum)
    return subset_sum(set, set_length - 1, sum)
  end

  return subset_sum(set, set_length - 1, sum) || subset_sum(set, set_length - 1, sum - set[set_length - 1])
end

