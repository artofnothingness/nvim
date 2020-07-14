import os
import sys
workspace_path = os.popen('catkin locate --workspace $(pwd)').read().rstrip()

if not workspace_path:
    sys.exit("\033[1;31mNo workspace found in the current directory\033[0m")


ccjson_path = workspace_path+'/compile_commands.json'
target_ccjson_path = workspace_path+'/src'+'/compile_commands.json'

for i in [ccjson_path, target_ccjson_path]:
    if os.path.isfile(i):
        os.system('rm %s' % i)
        print("removed previous compile_commands.json located at %s" % i)

# create a dictionary with file names as keys
# and for each file name the paths where they
# were found
file_paths = {}
for root, dirs, files in os.walk(workspace_path):
    for f in files:
        if f.endswith('compile_commands.json'):
            if f not in file_paths:
                file_paths[f] = []
            file_paths[f].append(root)

# for each file in the dictionary, concatenate
# the content of the files in each directory
# and write the merged content into a file
# with the same name at the top directory
for f, paths in file_paths.items():
    txt = []
    with open(os.path.join(paths[0], f)) as f2:
        txt.append('['+f2.read()[1:-2]+',')

    for p in paths[1:-1]:
        with open(os.path.join(p, f)) as f2:
            txt.append(f2.read()[1:-2]+',')

    with open(os.path.join(paths[-1], f)) as f2:
        txt.append(f2.read()[1:-1]+']')
    with open(f, 'w') as f3:
        f3.write(''.join(txt))

if not os.path.isfile(target_ccjson_path):
    os.system('mv ./compile_commands.json %s' % (target_ccjson_path))


print("\033[1;32mFinished writing compile_commands.json\033[0m")
