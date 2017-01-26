# Attempt to make the path not hardcoded - part of best practice

# Creating function which will take the file path and return the absolute path for it.

def getPath(target)
  File.expand_path(File.join(File.dirname(__FILE__), target))
end

# Replacing the values with new function.
cookbook_path [
  getPath('cookbooks'),
  getPath('vendor-cookbooks')
]
json_attribs relative('run-list.json')