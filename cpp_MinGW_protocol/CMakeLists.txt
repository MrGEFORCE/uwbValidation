cmake_minimum_required(VERSION 3.24)
project(protocolKernel C CXX)

set(CMAKE_C_STANDARD 17)
set(CMAKE_CXX_STANDARD 17)

add_definitions(-D_WIN32_WINDOWS, -DCOMPUTER_ONLY)

include_directories(
        .
		cp
		tlv
		protocol
		asio/include

)

file(GLOB PROTOCOL_SRC "protocol/*.c")

file(GLOB CP_SRC "cp/*.c")

file(GLOB TLV_SRC "tlv/*.c")

add_executable(${CMAKE_PROJECT_NAME} main.cpp ${PROTOCOL_SRC} ${CP_SRC} ${TLV_SRC})

target_link_libraries(${CMAKE_PROJECT_NAME} ws2_32)
