#!/usr/bin/env ruby
# frozen_string_literal: true

TEMPLATE = <<~___
  #!/usr/bin/env ruby
  # Id$ nonnax #{Time.now}
___
fname=ARGV.first || 'noname.rb'
File.write(fname, TEMPLATE)
File.chmod(0755, fname)

cmd="lf_select '#{fname}'"
IO.popen(cmd, &:read)
