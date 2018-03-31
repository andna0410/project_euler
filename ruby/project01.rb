# 10未満の自然数のうち, 3 もしくは 5 の倍数になっているものは 
# 3, 5, 6, 9 の4つがあり, これらの合計は 23 になる.
# 同じようにして, 1000 未満の 3 か 5 の倍数になっている数字の合計を求めよ.

def sum_multiple_3or5
    sum = 0
    i = 1
    while i < 1000
        if i % 3 == 0
            sum += i
        elsif i % 5 == 0
            sum += i
        else
            # do nothing
        end
        i += 1
    end
    puts sum
end

sum_multiple_3or5