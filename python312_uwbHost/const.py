import enum
import p312.pConfig as pConfig


class FuncMode(enum.Enum):
    ModeComm = 0
    ModeRadar = 1
    ModeInter = 2
    ModeCount = 3


cfg = pConfig.CONFIG()
cfg.DARK_THEME = True

UDP_ETH_BUFFER_LEN = 1024
UDP_LOCAL_HOST = "192.168.240.2"
UDP_LOCAL_PORT = 5010
UDP_REMOTE_HOST = "192.168.240.1"
UDP_REMOTE_PORT = 5011
UDP_SOCKET_TIMEOUT = 1.0  # seconds

REG_TX_NUMS = 7
REG_RX_NUMS = 16

HB_LB_FREQ = 6e9

CMD_OUTER_CLASS_T = b'\x00'
CMD_OUTER_CLASS_R = b'\x01'
CMD_OUTER_CLASS_CLK = b'\x02'
CMD_OUTER_CLASS_FUNC = b'\x03'
