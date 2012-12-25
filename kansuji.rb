# -*- coding: utf-8 -*-
class String
  def to_number
    num1 = { '一' => 1, '二' => 2, '三' => 3, '四' => 4, '五' => 5, '六' => 6, '七' => 7, '八' => 8, '九' => 9 }
    num2 = ['十', '百', '千']
    num3 = ['万', '億', '兆']
    result = 0
    self.scan(/^(.*兆)?(.*億)?(.*万)?(.*千)?(.*百)?(.*十)?(.*)?/).each do |i, j, k, l, m, n, o|
      [k, j, i].each_with_index do |unit, index|
        if unit
          unit.scan(/^(.*千)?(.*百)?(.*十)?(.#{num3[index]})?/).each do |p, q, r, s|
            tmp = 0
            tmp += (p == num2[2] ? 1 : num1[p.delete(num2[2])]) * 1000 if p
            tmp += (q == num2[1] ? 1 : num1[q.delete(num2[1])]) * 100 if q
            tmp += (r == num2[0] ? 1 : num1[r.delete(num2[0])]) * 10 if r
            tmp += num1[s.delete(num3[index])] if s
            result += tmp * (10000 ** (index + 1))
          end
        end
      end
      result += (l == num2[2] ? 1 : num1[l.delete(num2[2])]) * 1000 if l
      result += (m == num2[1] ? 1 : num1[m.delete(num2[1])]) * 100 if m
      result += (n == num2[0] ? 1 : num1[n.delete(num2[0])]) * 10 if n
      result += (num1[o] ? num1[o] : 0) if o
    end
    result
  end
end

class Fixnum
  def to_kansuji
    num1 = ['', '一', '二', '三', '四', '五', '六', '七', '八', '九']
    num2 = ['', '十', '百', '千']
    num3 = ['', '万', '億', '兆']
    result = ""
    self.to_s.split(//).reverse.each_slice(4).with_index  do |a, i|
      tmp = ""
      a.each_with_index do |n, j|
        tmp = num1[n.to_i] + (n == '0' ? '' : num2[j]) + tmp
      end
      tmp = tmp + num3[i] if tmp.size > 0
      result = tmp + result
      result.gsub!(/一十/, '十')
      result.gsub!(/一百/, '百')
    end
    result
  end
end
