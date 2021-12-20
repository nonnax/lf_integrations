#!/usr/bin/env ruby
# Id$ nonnax 2021-12-20 01:34:41 +0800
require 'json'
require 'fileutils'
h={}
Dir['*/*.mp4'].each do |f|
  n=File.basename(f)
  (h[n.scan(/^[^\d_]\w+/).first] ||=[])<< f
end

h.keys.each{|k|
  # p h
  FileUtils.mkdir_p k unless Dir.exists?(k)
  h[k].each do |v|
    FileUtils.mv v, "#{k}/"
    p v
  rescue StandardError => e
    p ['err', e]
    next
  end
}

# puts JSON.pretty_generate h
