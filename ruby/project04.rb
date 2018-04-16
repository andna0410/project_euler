# 左右どちらから読んでも同じ値になる数を回文数という. 
# 2桁の数の積で表される回文数のうち, 最大のものは 9009 = 91 × 99 である.
# では, 3桁の数の積で表される回文数の最大値を求めよ.

def times_fraction
  product = 0

  # ネストから一気に抜けるにはthrow-catchがいいらしい
  catch(:break_loop) do
    (1..999).reverse_each do |i|
      (1..999).reverse_each do |j| 
        product = i * j
        if check_times_fraction(product.to_s) then
          puts product
          throw :break_loop
        else
          next
        end
      end
    end
  end
end

def check_times_fraction(product)
  if product.length.odd? then
    return false
  end
  length = product.length / 2 
  # 積が回分数がチェックする
  product.insert(length, ",")
  parts = product.split(",")
  # split("")で文字列分解して配列に入れられる
  part1 = parts[0].split("")
  part2 = parts[1].reverse.split("")
  part1.zip(part2).each do |s, t|
    if s == t then
      next
    else
      return false
    end
    return true
  end
end

times_fraction