# -*- coding: utf-8 -*-
require './kansuji'
describe "to_kansuji" do
  context "when 1" do
    it { 1.to_kansuji.should == '一' }
  end

  context "when 2" do
    it { 2.to_kansuji.should == '二' }
  end

  context "when 3" do
    it { 3.to_kansuji.should == '三' }
  end

  context "when 4" do
    it { 4.to_kansuji.should == '四' }
  end

  context "when 5" do
    it { 5.to_kansuji.should == '五' }
  end

  context "when 6" do
    it { 6.to_kansuji.should == '六' }
  end

  context "when 7" do
    it { 7.to_kansuji.should == '七' }
  end

  context "when 8" do
    it { 8.to_kansuji.should == '八' }
  end

  context "when 9" do
    it { 9.to_kansuji.should == '九' }
  end

  context "when 10" do
    it { 10.to_kansuji.should == '十' }
  end

  context "when 15" do
    it { 15.to_kansuji.should == '十五' }
  end

  context "when 99" do
    it { 99.to_kansuji.should == '九十九' }
  end

  context "when 100" do
    it { 100.to_kansuji.should == '百' }
  end

  context "when 999" do
    it { 999.to_kansuji.should == '九百九十九' }
  end

  context "when 1000" do
    it { 1000.to_kansuji.should == '一千' }
  end

  context "when 9999" do
    it { 9999.to_kansuji.should == '九千九百九十九' }
  end

  context "when 10000" do
    it { 10000.to_kansuji.should == '一万' }
  end

  context "when 11111111" do
    it { 11111111.to_kansuji.should == '一千百十一万一千百十一' }
  end

  context "when 99999999" do
    it { 99999999.to_kansuji.should == '九千九百九十九万九千九百九十九' }
  end

  context "when 100000000" do
    it { 100000000.to_kansuji.should == '一億' }
  end

  context "when 111111111111" do
    it { 111111111111.to_kansuji.should == '一千百十一億一千百十一万一千百十一' }
  end

  context "when 999999999999" do
    it { 999999999999.to_kansuji.should == '九千九百九十九億九千九百九十九万九千九百九十九' }
  end

  context "when 1000000000000" do
    it { 1000000000000.to_kansuji.should == '一兆' }
  end

  context "when 1111111111111111" do
    it { 1111111111111111.to_kansuji.should == '一千百十一兆一千百十一億一千百十一万一千百十一' }
  end

  context "when 9999999999999999" do
    it { 9999999999999999.to_kansuji.should == '九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九' }
  end
end

describe "to_number" do
  context "when 一" do
    it { '一'.to_number.should == 1 }
  end

  context "when 二" do
    it { '二'.to_number.should == 2 }
  end

  context "when 三" do
    it { '三'.to_number.should == 3 }
  end

  context "when 四" do
    it { '四'.to_number.should == 4 }
  end

  context "when 五" do
    it { '五'.to_number.should == 5 }
  end

  context "when 六" do
    it { '六'.to_number.should == 6 }
  end

  context "when 七" do
    it { '七'.to_number.should == 7 }
  end

  context "when 八" do
    it { '八'.to_number.should == 8 }
  end

  context "when 九" do
    it { '九'.to_number.should == 9 }
  end

  context "when 十" do
    it { '十'.to_number.should == 10 }
  end

  context "when 十五" do
    it { '十五'.to_number.should == 15 }
  end

  context "when 九十九" do
    it { '九十九'.to_number.should == 99 }
  end

  context "when 百" do
    it { '百'.to_number.should == 100 }
  end

  context "when 九百九十九" do
    it { '九百九十九'.to_number.should == 999 }
  end

  context "when 一千" do
    it { '一千'.to_number.should == 1000 }
  end

  context "when 九千九百九十九" do
    it { '九千九百九十九'.to_number.should == 9999 }
  end

  context "when 一万" do
    it { '一万'.to_number.should == 10000 }
  end

  context "when 一千百十一万一千百十一" do
    it { '一千百十一万一千百十一'.to_number.should == 11111111 }
  end

  context "when 九千九百九十九万九千九百九十九" do
    it { '九千九百九十九万九千九百九十九'.to_number.should == 99999999 }
  end

  context "when 一億" do
    it { '一億'.to_number.should == 100000000 }
  end

  context "when 一千百十一億一千百十一万一千百十一" do
    it { '一千百十一億一千百十一万一千百十一'.to_number.should == 111111111111 }
  end

  context "when 九千九百九十九億九千九百九十九万九千九百九十九" do
    it { '九千九百九十九億九千九百九十九万九千九百九十九'.to_number.should == 999999999999 }
  end

  context "when 一兆" do
    it { '一兆'.to_number.should == 1000000000000 }
  end

  context "when 一千百十一兆一千百十一億一千百十一万一千百十一" do
    it { '一千百十一兆一千百十一億一千百十一万一千百十一'.to_number.should == 1111111111111111 }
  end

  context "when 九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九" do
    it { '九千九百九十九兆九千九百九十九億九千九百九十九万九千九百九十九'.to_number.should == 9999999999999999 }
  end
end
