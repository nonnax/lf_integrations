#!/usr/bin/env ruby
# frozen_string_literal: true
require 'fileutils'
# ls (file manager) util: ls selected files are created into softlinks in current dir
#
lfshare = File.expand_path('~/.local/share/lf/files')
files = File.readlines(lfshare).map(&:chomp)
files.shift
files.each do |f|
  begin
    FileUtils.ln_s f, File.basename(f)
  rescue => e
    p e
    next
  end
end
