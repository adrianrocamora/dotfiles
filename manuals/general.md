## Cache fixes:

We can change the build directory for pip using the following:
```
TMPDIR=/data/rocamora/ pip install --cache-dir=/data/rocamora/ --build /data/rocamora/ tensorflow-gpu
```

Alternatively, we can also export the TMPDIR location to a user owned one say in .zshrc
