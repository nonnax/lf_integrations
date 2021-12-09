#!/usr/bin/env ruby
# Id$ nonnax 2021-11-23 16:48:30 +0800
module LF
  module_function
  def files_selected
    lfshare = File.expand_path('~/.local/share/lf/files')
    files = File.readlines(lfshare).map(&:chomp)
    files.shift
    files
  end
end
