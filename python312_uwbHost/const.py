import p312.pConfig as pConfig

FREQS = []
ETHERNET_BUFFER_LEN = 1024

# 默认 UDP 配置，可根据实际设备地址修改
UDP_LOCAL_HOST = "192.168.240.2"
UDP_LOCAL_PORT = 2
UDP_REMOTE_HOST = "192.168.240.1"
UDP_REMOTE_PORT = 1
UDP_SOCKET_TIMEOUT = 1.0  # seconds

cfg = pConfig.CONFIG()
cfg.DARK_THEME = True
