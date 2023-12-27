Gem::Specification.new do |s|
  s.name = 'lf_integrations'
  s.version = '0.0.1'
  s.date = '2021-01-01'
  s.summary = "lf file manager ruby utils"
  s.authors = ["xxanon"]
  s.email = "ironald@gmail.com"
  s.files = `git ls-files`.split("\n") - %w[bin misc]
  s.executables += `git ls-files bin`.split("\n").map{|e| File.basename(e)}
  s.homepage = "https://github.com/nonnax/lf_integrations.git"
  s.license = "MIT"
end
