# Compile libraries
add_library(${LibraryName} Library.cpp)

# Compile sources
add_executable(main main.cpp)
target_link_libraries(main Library)