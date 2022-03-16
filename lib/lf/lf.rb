#!/usr/bin/env ruby
# Id$ nonnax 2021-11-23 16:48:30 +0800
module LF
  extend self 
  # module_function does not work when extending Dir
  def files_selected
    lfshare = File.expand_path('~/.local/share/lf/files')
    files = File.readlines(lfshare, chomp: true)
    files.shift
    files
  end
  alias lf_selected_files files_selected
end

Dir.extend(LF)
