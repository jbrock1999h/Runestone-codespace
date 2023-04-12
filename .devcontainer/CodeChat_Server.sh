#!/usr/bin/env bash

# <h1><code>CodeChat_Server.sh</code> - Start the CodeChat Server</h1>
# <p>For some reason, there's often junk on the opened ports. Start the server
#     to let it read this junk, so the next invocation will be clean. Kill that,
#     then restart a "clean" server for actual use.</p>
CodeChat_Server serve &
sleep 1
kill %1
CodeChat_Server start
