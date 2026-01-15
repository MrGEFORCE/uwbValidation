#include <asio.hpp>
#include <cstdio>
#include <protocol.h>
#include <tlv.h>

using asio::ip::udp;

protocol_t pro;

uint8_t protocol_buf[2048];

int main() {
    protocol_init(&pro, protocol_buf, 4096);
    // 该c++工程不做tlv，这里只是参考一下内存大小以便和go对照
    // tlv_init();

    try {
        asio::io_context io;
        udp::socket sock(io, udp::endpoint(udp::v4(), 10));

        std::printf("UDP listening on port 10...\n");

        udp::endpoint remote;

        while (true) {
            size_t len = sock.receive_from(asio::buffer(protocol_buf), remote);

            std::printf("Recv %zu bytes from %s:%u  =>  ", len, remote.address().to_string().c_str(), remote.port());

            // 打印前8字节
            size_t n = (len < 8) ? len : 8;
            for (size_t i = 0; i < n; i++)
                std::printf("%02X ", protocol_buf[i]);

            std::printf("\n");

            // vitis调用
            if (protocol_process(&pro, (int) len)) {
                std::printf("errors in parsing...\n");
            }
        }
    }
    catch (std::exception &e) {
        std::printf("Exception: %s\n", e.what());
    }

    return 0;
}
