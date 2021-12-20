#!/usr/bin/env ruby
# frozen_string_literal: true
require 'fileutils'
require_relative 'lf/lf'
# ls (file manager) util: ls selected files are created into softlinks in current dir
#
files=LF.files_selected
files.each do |f|
  begin
    FileUtils.ln_s f, File.basename(f)
  rescue => e
    p e
    next
  end
end
