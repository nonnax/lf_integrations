#!/usr/bin/env ruby
# frozen_string_literal: true
require 'fileutils'
# ls (file manager) util: ls selected files are created into softlinks in current dir
#
files = File.readlines('/home/seti/.local/share/lf/files').map(&:chomp)
files.shift
files.each do |f|
  begin
    FileUtils.ln_s f, File.basename(f)
  rescue => e
    p e
    next
  end
end
