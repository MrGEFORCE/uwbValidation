import enum
import struct
import numpy as np

import p312.pConfig as pConfig

# [C -> little] [GO -> big] [RF Soc -> big]
GLOBAL_PROTO_ENDIAN = '<'


class FuncMode(enum.Enum):
    ModeComm = 0
    ModeRadar = 1
    ModeInter = 2
    ModeCount = 3


class DataTypes(enum.Enum):
    COMM_PACK = 0
    RADAR_IF = 1
    INTER_SPEC = 2


cfg = pConfig.CONFIG()
cfg.DARK_THEME = True

cfg.HEADER_SIZE = 20
cfg.TL_SIZE = 8

cfg.CTRL_HEAD = struct.pack(GLOBAL_PROTO_ENDIAN + "I", 0x12345678)
cfg.CTRL_TAIL = struct.pack(GLOBAL_PROTO_ENDIAN + "I", 0x87654321)

UDP_ETH_BUFFER_LEN = 4096
UDP_LOCAL_HOST = "192.168.1.1"
UDP_LOCAL_PORT = 1
UDP_REMOTE_HOST = "192.168.1.10"
UDP_REMOTE_PORT = 10

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

COMM_LOOP_TEST = True
COMM_IMG_PACK_PIX = 1000
COMM_IMG_MAX_LEN = 150

INTER_SPAN_GHZ = 1
INTER_SPAN_POINTS = 512
INTER_SPAN_NUMS = int(np.ceil((17.5 - 6.5) / INTER_SPAN_GHZ)) + 1
