import hashlib

m = hashlib.sha256()
m.update(b'xyzzy')
print(m.hexdigest())

# Output:
# 184858a00fd7971f810848266ebcecee5e8b69972c5ffaed622f5ee078671aed

# append the salt to the previous password content, so the hex digest
# is the hash of both strings concatentated.
m.update(b'-0xT!sp9')
print(m.hexdigest())

# Output:
# 741b8aabe2e615e1c12876e66075199d602116ffb40b822dd5596baa7dafd40e

