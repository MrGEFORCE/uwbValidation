import enum
import struct
import numpy as np

import p312.pConfig as pConfig


class FuncMode(enum.Enum):
    ModeComm = 0
    ModeRadar = 1
    ModeInter = 2
    ModeCount = 3


class DataTypes(enum.Enum):
    COMM_IMG = 0
    COMM_TXT = 1
    COMM_IMG_SIZE = 2
    RADAR_IF = 3
    INTER_SPEC = 4


cfg = pConfig.CONFIG()
cfg.DARK_THEME = True

cfg.HEADER_SIZE = 20
cfg.TL_SIZE = 8

cfg.CTRL_HEAD = struct.pack("<I", 0x12345678)
cfg.CTRL_TAIL = struct.pack("<I", 0x87654321)

UDP_ETH_BUFFER_LEN = 1024
UDP_LOCAL_HOST = "192.168.1.1"
UDP_LOCAL_PORT = 1
UDP_REMOTE_HOST = "192.168.1.10"
UDP_REMOTE_PORT = 5001
UDP_SOCKET_TIMEOUT = 1.0  # seconds

REG_TX_NUMS = 7
REG_RX_NUMS = 16

HB_LB_FREQ = 6e9

CMD_OUTER_CLASS_T = b'\x00'
CMD_OUTER_CLASS_R = b'\x01'
CMD_OUTER_CLASS_CLK = b'\x02'
CMD_OUTER_CLASS_FUNC_COMM = b'\x03'
CMD_OUTER_CLASS_FUNC_RADAR = b'\x04'
CMD_OUTER_CLASS_FUNC_INTER = b'\x05'
CMD_OUTER_CLASS_STOP = b'\x06'

ANT_TX_NUMS = 2
ANT_RX_NUMS = 2

SAMPLE_INTERVAL_MAX = 128
SAMPLE_RATE_MAX_MSPS = 153.6

INTER_SPAN_GHZ = 1
INTER_SPAN_POINTS = 1024
INTER_SPAN_NUMS = int(np.ceil((17.5 - 6.5) / INTER_SPAN_GHZ))
