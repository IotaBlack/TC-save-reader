meta:
  id: tc
  file-extension: tc
  endian: le
enums:
  circuit_kind:
    0: ck_bit
    1: ck_byte
    2: ck_qword
  component_kind:
    0: error
    1: off
    2: on
    3: buffer
    4: not
    5: and
    6: and3
    7: nand
    8: or
    9: or3
    10: nor
    11: xor
    12: xnor
    13: counter
    14: virtualcounter
    15: qwordcounter
    16: virtualqwordcounter
    17: ram
    18: virtualram
    19: qwordram
    20: virtualqwordram
    21: stack
    22: virtualstack
    23: register
    24: virtualregister
    25: registerred
    26: virtualregisterred
    27: registerredplus
    28: virtualregisterredplus
    29: qwordregister
    30: virtualqwordregister
    31: byteswitch
    32: mux
    33: demux
    34: biggerdemux
    35: byteconstant
    36: bytenot
    37: byteor
    38: byteand
    39: bytexor
    40: byteequal
    41: bytelessu
    42: bytelessi
    43: byteneg
    44: byteadd2
    45: bytemul2
    46: bytesplitter
    47: bytemaker
    48: qwordsplitter
    49: qwordmaker
    50: fulladder
    51: bitmemory
    52: virtualbitmemory
    53: srlatch
    54: random
    55: clock
    56: waveformgenerator
    57: httpclient
    58: asciiscreen
    59: keyboard
    60: fileinput
    61: halt
    62: circuitcluster
    63: screen
    64: program1
    65: program1red
    66: program2
    67: program3
    68: program4
    69: levelgate
    70: input1
    71: input2
    72: input3
    73: input4
    74: input1bconditions
    75: input1b
    76: inputqword
    77: input1bcode
    78: input1_1b
    79: output1
    80: output1sum
    81: output1car
    82: output1aval
    83: output1bval
    84: output2
    85: output3
    86: output4
    87: output1b
    88: outputqword
    89: output1_1b
    90: outputcounter
    91: inputoutput
    92: custom
    93: virtualcustom

    94: byteless
    95: byteadd
    96: bytemul
    97: flipflop

types:
  string:
    seq:
      - id: len
        type: u8
      - id: content
        type: str
        size: len
        encoding: utf8

  point:
    seq:
      - id: x
        type: s1
      - id: y
        type: s1

  component:
    seq: 
      - id: kind
        type: u2
        enum: component_kind
      - id: position
        type: point
      - id: rotation
        type: u1
      - id: permanent_id
        type: u4
      - id: custom_string
        type: string
      - id: program_name
        type: string
        if: "((kind.to_i > 63) and (kind.to_i < 69)) or kind.to_i == 94"
      - id: custom_id
        type: u8
        if: "kind.to_i == 92"
  circuit:
    seq:
      - id: permanent_id
        type: u4
      - id: kind
        type: u1
        enum: circuit_kind
      - id: color
        type: u1
      - id: comment
        type: string
      - id: path_length
        type: u8
      - id: path
        repeat: expr
        repeat-expr: path_length
        type: point
seq:
  - id: magic
    contents: [0]
  - id: save_version
    type: s8
  - id: nand
    type: u4
  - id: delay
    type: u4
  - id: custom_visible
    type: u1
  - id: clock_speed
    type: u4
  - id: scale_level
    type: u1
  - id: dependcy_count
    type: u8
  - id: dependecies
    repeat: expr
    repeat-expr: dependcy_count
    type: u8
  - id: description
    type: string
  - id: component_count
    type: u8
  - id: components
    repeat: expr
    repeat-expr: component_count
    type: component
  - id: circuit_count
    type: u8
  - id: circuits
    repeat: expr
    repeat-expr: circuit_count
    type: circuit
    
