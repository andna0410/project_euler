# 2520 は 1 から 10 の数字の全ての整数で
# 割り切れる数字であり, そのような数字の中では最小の値である.
# では, 1 から 20 までの整数全てで割り切れる数字の中で最小の正の数はいくらになるか.

def can_be_disible_1_to_20
  # 11 12 13 14 15 16 17 18 19 20の全てで割れれば良い？
  max = 11*12*13*14*15*16*17*18*19*20
  # catch(:break_loop) do 
    (1..max).each do |i|
      # (11..20).each do |j|
      #   puts i
      #   if j < 20
      #     i % j == 0 ? next : break
      #   else
      #     i % j == 0 ? puts(i) : break
      #     throw :break_loop
      #   end 
      # end
      next if i % 11 != 0
      next if i % 12 != 0
      next if i % 13 != 0
      next if i % 14 != 0
      next if i % 15 != 0
      next if i % 16 != 0
      next if i % 17 != 0
      next if i % 18 != 0
      next if i % 19 != 0
      next if i % 20 != 0
      puts i
      break
    end
  # end
end

can_be_disible_1_to_20

# 232792560
# 2018/04/29
# コメントアウトした書き方の方が綺麗だと思うけど、処理が重すぎてダメそう…
# そもそもその部分が上手くいくか試せてないけど…とにかくクソイケてない感じになってしまった。