# -*- coding: utf-8 -*-
class String
  def to_number
    num1 = { "一" => 1, "二" => 2, "三" => 3, "四" => 4, "五" => 5, "六" => 6, "七" => 7, "八" => 8, "九" => 9 }
    num2 = ["十", "百", "千"]
    num3 = ["万", "億", "兆", "京", "垓", "𥝱", "穣", "溝", "澗", "正", "載", "極", "恒河沙", "阿僧祇", "那由他", "不可思議", "無量大数"]
    result = 0
    self.scan(/^(.*無量大数)?(.*不可思議)?(.*那由他)?(.*阿僧祇)?(.*恒河沙)?(.*極)?(.*載)?(.*正)?(.*澗)?(.*溝)?(.*穣)?(.*𥝱)?(.*垓)?(.*京)?(.*兆)?(.*億)?(.*万)?(.*千)?(.*百)?(.*十)?(.*)?/).each do |a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u|
      [q, p, o, n, m, l, k, j, i, h, g, f, e, d, c, b, a].each_with_index do |unit, index|
        if unit
          unit.scan(/^(.*千)?(.*百)?(.*十)?(.#{num3[index]})?/).each do |ii, jj, kk, ll|
            tmp = 0
            tmp += (ii == num2[2] ? 1 : num1[ii.delete(num2[2])]) * 1000 if ii
            tmp += (jj == num2[1] ? 1 : num1[jj.delete(num2[1])]) * 100 if jj
            tmp += (kk == num2[0] ? 1 : num1[kk.delete(num2[0])]) * 10 if kk
            tmp += num1[ll.delete(num3[index])] if ll
            result += tmp * (10000 ** (index + 1))
          end
        end
      end
      result += (r == num2[2] ? 1 : num1[r.delete(num2[2])]) * 1000 if r
      result += (s == num2[1] ? 1 : num1[s.delete(num2[1])]) * 100 if s
      result += (t == num2[0] ? 1 : num1[t.delete(num2[0])]) * 10 if t
      result += (num1[u] ? num1[u] : 0) if u
    end
    result
  end
end

class Integer
  def to_kansuji
    num1 = ["", "一", "二", "三", "四", "五", "六", "七", "八", "九"]
    num2 = ["", "十", "百", "千"]
    num3 = ["", "万", "億", "兆", "京", "垓", "𥝱", "穣", "溝", "澗", "正", "載", "極", "恒河沙", "阿僧祇", "那由他", "不可思議", "無量大数"]
    result = ""
    self.to_s.split(//).reverse.each_slice(4).with_index  do |a, i|
      tmp = ""
      a.each_with_index do |n, j|
        tmp = num1[n.to_i] + (n == "0" ? "" : num2[j]) + tmp
      end
      tmp = tmp + num3[i] if tmp.size > 0
      result = tmp + result
      result.gsub!(/一十/, "十")
      result.gsub!(/一百/, "百")
    end
    result
  end
end
