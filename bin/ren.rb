#!/usr/bin/env ruby
# Id$ nonnax 2022-01-27 10:59:58 +0800
require 'fileutils'

ARGF.readlines(chomp: true).each do |l|
  f_old, f_new = l.split("\t")
  FileUtils.mv f_old, f_new
end
