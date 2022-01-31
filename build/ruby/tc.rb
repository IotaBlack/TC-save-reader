# This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

require 'kaitai/struct/struct'

unless Gem::Version.new(Kaitai::Struct::VERSION) >= Gem::Version.new('0.9')
  raise "Incompatible Kaitai Struct Ruby API: 0.9 or later is required, but you have #{Kaitai::Struct::VERSION}"
end

class Tc < Kaitai::Struct::Struct

  CIRCUIT_KIND = {
    0 => :circuit_kind_ck_bit,
    1 => :circuit_kind_ck_byte,
    2 => :circuit_kind_ck_qword,
  }
  I__CIRCUIT_KIND = CIRCUIT_KIND.invert

  COMPONENT_KIND = {
    0 => :component_kind_error,
    1 => :component_kind_false,
    2 => :component_kind_true,
    3 => :component_kind_buffer,
    4 => :component_kind_not,
    5 => :component_kind_and,
    6 => :component_kind_and3,
    7 => :component_kind_nand,
    8 => :component_kind_or,
    9 => :component_kind_or3,
    10 => :component_kind_nor,
    11 => :component_kind_xor,
    12 => :component_kind_xnor,
    13 => :component_kind_bytecounter,
    14 => :component_kind_virtualbytecounter,
    15 => :component_kind_qwordcounter,
    16 => :component_kind_virtualqwordcounter,
    17 => :component_kind_ram,
    18 => :component_kind_virtualram,
    19 => :component_kind_qwordram,
    20 => :component_kind_virtualqwordram,
    21 => :component_kind_stack,
    22 => :component_kind_virtualstack,
    23 => :component_kind_register,
    24 => :component_kind_virtualregister,
    25 => :component_kind_registerred,
    26 => :component_kind_virtualregisterred,
    27 => :component_kind_registerredplus,
    28 => :component_kind_virtualregisterredplus,
    29 => :component_kind_qwordregister,
    30 => :component_kind_virtualqwordregister,
    31 => :component_kind_byteswitch,
    32 => :component_kind_bytemux,
    33 => :component_kind_decoder1,
    34 => :component_kind_decoder3,
    35 => :component_kind_byteconstant,
    36 => :component_kind_bytenot,
    37 => :component_kind_byteor,
    38 => :component_kind_byteand,
    39 => :component_kind_bytexor,
    40 => :component_kind_byteequal,
    41 => :component_kind_bytelessu,
    42 => :component_kind_bytelessi,
    43 => :component_kind_byteneg,
    44 => :component_kind_byteadd,
    45 => :component_kind_bytemul,
    46 => :component_kind_bytesplitter,
    47 => :component_kind_bytemaker,
    48 => :component_kind_qwordsplitter,
    49 => :component_kind_qwordmaker,
    50 => :component_kind_fulladder,
    51 => :component_kind_bitmemory,
    52 => :component_kind_virtualbitmemory,
    53 => :component_kind_srlatch,
    54 => :component_kind_random,
    55 => :component_kind_clock,
    56 => :component_kind_waveformgenerator,
    57 => :component_kind_httpclient,
    58 => :component_kind_asciiscreen,
    59 => :component_kind_keypad,
    60 => :component_kind_filerom,
    61 => :component_kind_halt,
    62 => :component_kind_circuitcluster,
    63 => :component_kind_screen,
    64 => :component_kind_program1,
    65 => :component_kind_program1red,
    66 => :component_kind_program2,
    67 => :component_kind_program3,
    68 => :component_kind_program4,
    69 => :component_kind_levelgate,
    70 => :component_kind_input1,
    71 => :component_kind_input2,
    72 => :component_kind_input3,
    73 => :component_kind_input4,
    74 => :component_kind_input1bconditions,
    75 => :component_kind_input1b,
    76 => :component_kind_inputqword,
    77 => :component_kind_input1bcode,
    78 => :component_kind_input1_1b,
    79 => :component_kind_output1,
    80 => :component_kind_output1sum,
    81 => :component_kind_output1car,
    82 => :component_kind_output1aval,
    83 => :component_kind_output1bval,
    84 => :component_kind_output2,
    85 => :component_kind_output3,
    86 => :component_kind_output4,
    87 => :component_kind_output1b,
    88 => :component_kind_outputqword,
    89 => :component_kind_output1_1b,
    90 => :component_kind_outputcounter,
    91 => :component_kind_inputoutput,
    92 => :component_kind_custom,
    93 => :component_kind_virtualcustom,
    94 => :component_kind_qwordprogram,
    95 => :component_kind_delaybuffer,
    96 => :component_kind_virtualdelaybuffer,
    97 => :component_kind_console,
    98 => :component_kind_byteshl,
    99 => :component_kind_byteshr,
    100 => :component_kind_qwordconstant,
    101 => :component_kind_qwordnot,
    102 => :component_kind_qwordor,
    103 => :component_kind_qwordand,
    104 => :component_kind_qwordxor,
    105 => :component_kind_qwordneg,
    106 => :component_kind_qwordadd,
    107 => :component_kind_qwordmul,
    108 => :component_kind_qwordequal,
    109 => :component_kind_qwordlessu,
    110 => :component_kind_qwordlessi,
    111 => :component_kind_qwordshl,
    112 => :component_kind_qwordshr,
    113 => :component_kind_qwordmux,
    114 => :component_kind_qwordswitch,
    115 => :component_kind_statebit,
    116 => :component_kind_statebyte,
  }
  I__COMPONENT_KIND = COMPONENT_KIND.invert
  def initialize(_io, _parent = nil, _root = self)
    super(_io, _parent, _root)
    _read
  end

  def _read
    @magic = @_io.read_bytes(1)
    raise Kaitai::Struct::ValidationNotEqualError.new([1].pack('C*'), magic, _io, "/seq/0") if not magic == [1].pack('C*')
    @save_version = @_io.read_s8le
    @nand = @_io.read_u4le
    @delay = @_io.read_u4le
    @custom_visible = @_io.read_u1
    @clock_speed = @_io.read_u4le
    @nesting_level = @_io.read_u1
    @dependcy_count = @_io.read_u8le
    @dependecies = Array.new(dependcy_count)
    (dependcy_count).times { |i|
      @dependecies[i] = @_io.read_u8le
    }
    @description = String.new(@_io, self, @_root)
    @unpacked = @_io.read_u1
    @camera_position = Point.new(@_io, self, @_root)
    @cached_design = @_io.read_u1
    @component_count = @_io.read_u8le
    @components = Array.new(component_count)
    (component_count).times { |i|
      @components[i] = Component.new(@_io, self, @_root)
    }
    @circuit_count = @_io.read_u8le
    @circuits = Array.new(circuit_count)
    (circuit_count).times { |i|
      @circuits[i] = Circuit.new(@_io, self, @_root)
    }
    self
  end
  class Point < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @x = @_io.read_s2le
      @y = @_io.read_s2le
      self
    end
    attr_reader :x
    attr_reader :y
  end
  class String < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @len = @_io.read_u8le
      @content = (@_io.read_bytes(len)).force_encoding("utf8")
      self
    end
    attr_reader :len
    attr_reader :content
  end
  class CircuitPath < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @start = Point.new(@_io, self, @_root)
      @body = []
      i = 0
      begin
        _ = CircuitSegment.new(@_io, self, @_root)
        @body << _
        i += 1
      end until _.length == 0
      if  ((body.last.direction == 1) && (body.last.length == 0)) 
        @end = Point.new(@_io, self, @_root)
      end
      self
    end
    attr_reader :start
    attr_reader :body
    attr_reader :end
  end
  class CircuitSegment < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @direction = @_io.read_bits_int_be(3)
      @length = @_io.read_bits_int_be(5)
      self
    end
    attr_reader :direction
    attr_reader :length
  end
  class Circuit < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @permanent_id = @_io.read_u8le
      @kind = Kaitai::Struct::Stream::resolve_enum(Tc::CIRCUIT_KIND, @_io.read_u1)
      @color = @_io.read_u1
      @comment = String.new(@_io, self, @_root)
      @path = CircuitPath.new(@_io, self, @_root)
      self
    end
    attr_reader :permanent_id
    attr_reader :kind
    attr_reader :color
    attr_reader :comment
    attr_reader :path
  end
  class Component < Kaitai::Struct::Struct
    def initialize(_io, _parent = nil, _root = self)
      super(_io, _parent, _root)
      _read
    end

    def _read
      @kind = Kaitai::Struct::Stream::resolve_enum(Tc::COMPONENT_KIND, @_io.read_u2le)
      @position = Point.new(@_io, self, @_root)
      @rotation = @_io.read_u1
      @permanent_id = @_io.read_u8le
      @custom_string = String.new(@_io, self, @_root)
      if  (( ((Tc::I__COMPONENT_KIND[kind] > 63) && (Tc::I__COMPONENT_KIND[kind] < 69)) ) || (Tc::I__COMPONENT_KIND[kind] == 94)) 
        @program_name = String.new(@_io, self, @_root)
      end
      if Tc::I__COMPONENT_KIND[kind] == 92
        @custom_id = @_io.read_u8le
      end
      self
    end
    attr_reader :kind
    attr_reader :position
    attr_reader :rotation
    attr_reader :permanent_id
    attr_reader :custom_string
    attr_reader :program_name
    attr_reader :custom_id
  end
  attr_reader :magic
  attr_reader :save_version
  attr_reader :nand
  attr_reader :delay
  attr_reader :custom_visible
  attr_reader :clock_speed
  attr_reader :nesting_level
  attr_reader :dependcy_count
  attr_reader :dependecies
  attr_reader :description
  attr_reader :unpacked
  attr_reader :camera_position
  attr_reader :cached_design
  attr_reader :component_count
  attr_reader :components
  attr_reader :circuit_count
  attr_reader :circuits
end
