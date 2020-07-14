# merge_ex.rb
# Doug Catharine
# 20200714


A = {speed: 'fast', size: 'small', color: 'red'}
B = {speed: 'slow', size: 'big', strength: 'high'}
old_b = B

p A.merge(B)
p A
p old_b


p B.merge!(A)
p B
p old_b