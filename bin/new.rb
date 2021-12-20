#!/usr/bin/env ruby
# frozen_string_literal: true

TEMPLATE = <<~DOC
  #!/usr/bin/env ruby
  # Id$ nonnax #{Time.now}
DOC
File.open(ARGV.first || 'noname.rb', 'w') do |f|
  f.puts TEMPLATE
end
