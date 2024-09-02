# dawn-build

This repository includes the compiled library for Google Dawn, compatible with both Windows and macOS.

## Steps to build Google Dawn

```shell
# Change to the directory where you want to create the code repository
$ git clone https://dawn.googlesource.com/dawn
Cloning into 'dawn'...
```

Git will create the repository within a directory named `dawn`. Navigate into this directory and configure the project.

### Build and install Dawn with CMake

#### Debug Build
```shell
$ cd dawn
$ cmake -S . -B out/Debug -DDAWN_FETCH_DEPENDENCIES=ON -DDAWN_ENABLE_INSTALL=ON -DCMAKE_BUILD_TYPE=Debug
...
-- Configuring done (34.9s)
-- Generating done (0.8s)
-- Build files have been written to: ${PWD}/out/Debug
```

- `DAWN_FETCH_DEPENDENCIES=ON` uses a Python script `fetch_dawn_dependencies.py` as a less tedious alternative to setting up depot_tools and fetching dependencies via `gclient`.
- `DAWN_ENABLE_INSTALL=ON` configures the project to install binaries, headers and cmake configuration files in a directory of your choice. This allows other projects to discover Dawn in CMake and link with it.

Now you can build Dawn:

```shell
$ cmake --build out/Debug --config debug
...
[100%] Linking CXX static library libdawn_utils.a
[100%] Built target dawn_utils
```

Once you have built the Dawn library, install it with `cmake`

```shell
$ cmake --install out/Debug --prefix install/Debug --config Debug
```

This installs Dawn from the `out/Debug` build tree into `install/Debug`.

#### Release Build
```shell
$ cd dawn
$ cmake -S . -B out/Release -DDAWN_FETCH_DEPENDENCIES=ON -DDAWN_ENABLE_INSTALL=ON -DCMAKE_BUILD_TYPE=Release
...
-- Configuring done (34.9s)
-- Generating done (0.8s)
-- Build files have been written to: ${PWD}/out/Release
```

- `DAWN_FETCH_DEPENDENCIES=ON` uses a Python script `fetch_dawn_dependencies.py` as a less tedious alternative to setting up depot_tools and fetching dependencies via `gclient`.
- `DAWN_ENABLE_INSTALL=ON` configures the project to install binaries, headers and cmake configuration files in a directory of your choice. This allows other projects to discover Dawn in CMake and link with it.

Now you can build Dawn:

```shell
$ cmake --build out/Release --config Release
...
[100%] Linking CXX static library libdawn_utils.a
[100%] Built target dawn_utils
```

Once you have built the Dawn library, install it with `cmake`

```shell
$ cmake --install out/Release --prefix install/Release --config Release
```

This installs Dawn from the `out/Release` build tree into `install/Release`.
