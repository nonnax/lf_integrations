#!/usr/bin/env ruby
# frozen_string_literal: true

TEMPLATE = <<~DOC
  #!/usr/bin/env ruby
  # Id$ nonnax #{Time.now}
DOC
fname=ARGV.first || 'noname.rb'
File.open(fname, 'w') do |f|
  f.puts TEMPLATE
end
File.chmod(0755, fname)

cmd="lf -remote 'send select #{fname}'"
IO.popen(cmd, &:read)
