#!/usr/bin/env -S v run
import os
import time

ext := os.args.last()
mut list := map[string] string

list['v']  = '#!/usr/bin/env -S v run\n// Id$ nonnax ${time.now()}'
list['rb'] = '#!/usr/bin/env ruby\n# Id$ nonnax ${time.now()}'
list['sh'] = '#!/usr/bin/env bash\n# Id$ nonnax ${time.now()}'
list['py'] = '#!/usr/bin/env python\n# Id$ nonnax ${time.now()}'
list['pb'] = '#!/usr/bin/env -S pocket\n# Id$ nonnax ${time.now()}'
list['lua'] = '#!/usr/bin/env -S lua\n-- Id$ nonnax ${time.now()}'

newfile := 'new.'+ext
os.write_file(newfile, list[ext]) ?
println(newfile)
