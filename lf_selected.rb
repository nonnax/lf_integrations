#!/usr/bin/env ruby
# frozen_string_literal: true
require 'lf/lf'
# ls (file manager) util: ls selected files printed
#
LF.files_selected.each do |f|
  puts File.basename(f)
end
