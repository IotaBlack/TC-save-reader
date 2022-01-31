
- [meta:](#meta)
- [Format](#format)
- [types:](#types)
  - [string:](#string)
  - [point:](#point)
  - [component:](#component)
  - [wire:](#wire)
    - [wire_path:](#wire_path)
    - [wire_segment:](#wire_segment)
- [enums:](#enums)
  - [wire_kind:](#wire_kind)
  - [component_kind:](#component_kind)

# meta:
  Format is in little endian


# Format

| size (bytes)                | name            | type                      | description                        |
| --------------------------- | --------------- | ------------------------- | ---------------------------------- |
| 1                           | format version  | byte                      | contents: [1]                      |
| 8                           | save_version    | int64                     |                                    |
| 4                           | nand            | uint32                    | nand score                         |
| 4                           | delay           | uint32                    | delay score                        |
| 1                           | custom_visible  | uint8                     | visible in cutom component tab     |
| 4                           | clock_speed     | uint32                    | simulation target speed            |
| 1                           | nesting_level   | uint8                     | custom component nesting level     |
| 8                           | dependcy_count  | uint64                    |                                    |
| dependcy_count * 8          | dependecies     | [uint64]                  |                                    |
| variable                    | description     | [string](#string)         | its a description, dummy           |
| 1                           | unpacked        | uint8                     |                                    |
| 4                           | camera_position | [point](#point)           |                                    |
| 1                           | cached_design   | uint8                     |                                    |
| 8                           | component_count | uint64                    | number of component in the circuit |
| component * component_count | components      | [[component](#component)] | list of components                 |
| 8                           | wire_count      | uint64                    | number of wires in the circuit     |
| wire * wire_count           | wires           | [[wire](#wire)]           | list of wires                      |

# types:
  ## string:
  | size (bytes) | name    | type       | description          |
  | ------------ | ------- | ---------- | -------------------- |
  | 8            | len     | uint64     | length of string     |
  | len          | content | byte array | utf8  encoded string |

  ## point:
    | size (bytes) | name | type  | description |
    | ------------ | ---- | ----- | ----------- |
    | 2            | x    | int16 | x coord     |
    | 2            | y    | int16 | y coord     |

  ## component:
  | size (bytes) | name          | type              | description                                                                                                           |
  | ------------ | ------------- | ----------------- | --------------------------------------------------------------------------------------------------------------------- |
  | 2            | kind          | uint16            | enum: component_kind                                                                                                  |
  | 4            | position      | [point](#point)   |                                                                                                                       |
  | 1            | rotation      | uint8             |                                                                                                                       |
  | 8            | permanent_id  | uint64            |                                                                                                                       |
  | variable     | custom_string | [string](#string) |                                                                                                                       |
  | variable     | program_name  | [string](#string) | only if kind is any of <br>`program1`<br>` program1red`<br>` program2`<br>`program3`<br>`program4`<br>` qwordprogram` |
  | 8            | custom_id     | uint64            | only if kind is `custom`                                                                                              |
  
  ## wire:
  | size (bytes) | name         | type                    | description                     |
  | ------------ | ------------ | ----------------------- | ------------------------------- |
  | 8            | permanent_id | uint64                  |                                 |
  | 1            | kind         | uint8                   | enum: [wire_kind](#wire_kind)   |
  | 1            | color        | uint8                   | wire color                      |
  | variable     | comment      | [string](#string)       | wire label                      |
  | variable     | path         | [wire_path](#wire_path) | sequence of bytes encoding path |
  
  ### wire_path:

  | size (bytes) | name  | type                          | description                                             |
  | ------------ | ----- | ----------------------------- | ------------------------------------------------------- |
  |              | start | [point](#point)               |                                                         |
  |              | body  | [wire_segment](#wire_segment) | repeats until segment length is 0                       |
  |              | end   | [point](#point)               | only if last wire segent was a marker for a portal wire |

  ### wire_segment:

  a single byte where the first 3 bits is direction and the last 5 is length
  if length is 0 ie `0bxxx00000` then direction has a different meaning
  | direction | meaning     |
  | --------- | ----------- |
  | 0         | nothing     |
  | 1         | portal wire |
  | 2         | not in use  |
  | 3         | not in use  |
  | 4         | not in use  |
  | 5         | not in use  |
  | 6         | not in use  |
  | 7         | not in use  |



# enums:
  ## wire_kind:
    0: ck_bit
    1: ck_byte
    2: ck_qword
  ## component_kind:
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
    13: bytecounter
    14: virtualbytecounter
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
    32: bytemux
    33: decoder1
    34: decoder3
    35: byteconstant
    36: bytenot
    37: byteor
    38: byteand
    39: bytexor
    40: byteequal
    41: bytelessu
    42: bytelessi
    43: byteneg
    44: byteadd
    45: bytemul
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
    59: keypad
    60: filerom
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
    94: qwordprogram
    95: delaybuffer
    96: virtualdelaybuffer
    97: console
    98: byteshl
    99: byteshr

    100: qwordconstant
    101: qwordnot
    102: qwordor
    103: qwordand
    104: qwordxor
    105: qwordneg
    106: qwordadd
    107: qwordmul
    108: qwordequal
    109: qwordlessu
    110: qwordlessi
    111: qwordshl
    112: qwordshr
    113: qwordmux
    114: qwordswitch

    115: statebit
    116: statebyte



